<!doctype html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">

<head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        
        <meta name="csrf-token" content="{{ csrf_token() }}">
        <title>@yield('title')</title>

        <link rel="stylesheet" href="{{ asset('css/bootstrap.min.css') }}">
        <link href="{{ asset('css/style.css') }}" rel="stylesheet">
        <link rel="stylesheet" href="{{ asset('css/font-awesome.css') }}">

        <script defer src="{{ asset('fonts/solid.js') }}"></script>
        <script defer src="{{ asset('fonts/fontawesome.js') }}"></script>
        <script src="{{ asset('js/jquery.min.js') }}"></script>
           
</head>


<body>


@yield('navbar')

    
    @yield('content')
  

    <script src="{{ asset('js/jquery-3.2.1.slim.min') }}"></script>
    <script src="{{ asset('js/popper.min') }}"></script>
    <script src="{{ asset('js/bootstrap4.min.js') }}"></script>
    <script src="{{ asset('js/sidebar.js') }}" defer></script>

  
    
@include('layout.table')

@include('layout.notification')



<script>

$(document).ready(function() {
    $('#all_branch_data_hnba').DataTable();
} );


$(document).ready(function() {
    $('#all_branch_data_hnbgi').DataTable();
} );

$(document).ready(function() {
    $('#all_branch_data').DataTable();
} );

</script>



</body>


<link href="{{ asset('css/dataTables.bootstrap4.min') }}" rel="stylesheet">
<script src="{{ asset('js/jquery.dataTables.min.js') }}"></script>
<script src="{{ asset('js/dataTables.bootstrap4.min.js') }}"></script>

</html>


