<!DOCTYPE html>
<html>
<head>
    @include('includes.header')
    @yield('style')
</head>
<body>
  
    @include('includes.nav')
    @yield('content')
    @include('includes.footer')
    @yield('script')
</body>
</html>
