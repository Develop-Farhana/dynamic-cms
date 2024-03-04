<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Post;
use File;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\Auth;

class PostController extends Controller
{
    //
    public function create(Request $request){
        if(Auth::check())
        {
		$data['post'] = new Post();
		if($request->post_id){
			$id = $request->post_id;
			$data['post'] = Post::where('id',$id)->first();
		}

		return view('admin.post.addPost',$data);
	}
    return redirect('login')->with('success', 'you are not allowed to access');
        

}

	public function show(){
        if(Auth::check())
        {
		$data['posts'] = Post::paginate(10);
		return view('admin.post.showpost',$data);
	}
    return redirect('login')->with('success', 'you are not allowed to access');
        

}

	public function store(Request $request){
        if(Auth::check())
        {
		$id = '';
		if($request->post_id){
			$id = $request->post_id;
		}
		$validator = Validator::make($request->all(), [
            'title'  => 'required',
            'section_title'  => 'required',
    ]);
    if($validator->fails()){
        $success=0;
        return  back()->withErrors($validator)->withInput();
    }else{
    	$filename = '';
    	if($request->image){
    			$filename = $this->fileUpload($request,'image','');
    	}else{
    		if($request->old_image){
    			$filename = $request->old_image;
    		}
    	}
    	$data = array(
                    'page_title'  => $request->page_title,
                    'section_title' => $request->section_title,
                    'title' => $request->title,
                    'description' => $request->description,
                    'image' => $filename,
                );
    	$post = Post::updateOrCreate(['id'=>$id],$data);
    	if($post){
    		if($id)
          return redirect()->route('post-show')->with(['message'=>'Post Successfully Updated']);
        else
        	return redirect()->route('post-show')->with(['message'=>'Post Successfully inserted']);
      }else{
          return back()->with(['message'=>'Something Wrong']);
      }
    }
	}
    return redirect('login')->with('success', 'you are not allowed to access');
        

}

	public function delete(Request $request){
        if(Auth::check())
        {
        $id  = $request->id;
        $img = $request->image; 
        if($id){
            if(File::exists(public_path('uploads/'.$img))) {
                File::delete(public_path('uploads/'.$img));
                
                $res = Post::find($id)->delete();
                if($res){
                    echo json_encode('Successfully deleted');
                }else{
                    echo json_encode("Something went wrong");
                }            
            }else{
                echo json_encode("File not exists.");
            }
        }else{
           echo json_encode("Post Id Not found");
        }
    }
    return redirect('login')->with('success', 'you are not allowed to access');
        

}
}
