<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}" >

<head>
    <meta charset="utf-8">
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>👨‍🎓 MMR 🐙</title>

    <!-- Fonts -->
    {{-- <link href="https://fonts.googleapis.com/css2?family=Nunito:wght@400;600;700&display=swap" rel="stylesheet"> --}}
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">



    <style>
        body {
            font-family: 'Nunito';
        }
    </style>

    <link rel="stylesheet" href="{{ mix('css/app.css') }}">
</head>

<body class="container-fluid bg-light">

    <div id="app" data-bs-theme="light">



        {{-- ici le site --}}


    </div>



    <script src="{{ mix('js/app.js') }}" ></script>


</body>

</html>
