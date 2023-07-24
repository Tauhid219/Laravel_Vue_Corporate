<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Laravel</title>

    @vite(['resources/js/app.js'])
    @vite(['resources/sass/temp.scss'])

</head>

<body class="antialiased">
    <div id="app">

    </div>
</body>

{{-- Admin Panel JS --}}
{{-- <script src="{{asset('adminasset/assets/vendor/apexcharts/apexcharts.min.js')}}"></script>
<script src="{{asset('adminasset/assets/vendor/bootstrap/js/bootstrap.bundle.min.js')}}"></script>
<script src="{{asset('adminasset/assets/vendor/chart.js/chart.umd.js')}}"></script>
<script src="{{asset('adminasset/assets/vendor/echarts/echarts.min.js')}}"></script>
<script src="{{asset('adminasset/assets/vendor/quill/quill.min.js')}}"></script>
<script src="{{asset('adminasset/assets/vendor/simple-datatables/simple-datatables.js')}}"></script>
<script src="{{asset('adminasset/assets/vendor/tinymce/tinymce.min.js')}}"></script>
<script src="{{asset('adminasset/assets/vendor/php-email-form/validate.js')}}"></script>
<script src="{{asset('adminasset/assets/js/main.js')}}"></script> --}}

{{-- Template JS --}}
<script src="{{asset('templateasset/assets/vendor/purecounter/purecounter_vanilla.js')}}"></script>
<script src="{{asset('templateasset/assets/vendor/aos/aos.js')}}"></script>
<script src="{{asset('templateasset/assets/vendor/bootstrap/js/bootstrap.bundle.min.js')}}"></script>
<script src="{{asset('templateasset/assets/vendor/glightbox/js/glightbox.min.js')}}"></script>
<script src="{{asset('templateasset/assets/vendor/isotope-layout/isotope.pkgd.min.js')}}"></script>
<script src="{{asset('templateasset/assets/vendor/swiper/swiper-bundle.min.js')}}"></script>
<script src="{{asset('templateasset/assets/vendor/php-email-form/validate.js')}}"></script>
<script src="{{asset('templateasset/assets/js/main.js')}}"></script>

</html>
