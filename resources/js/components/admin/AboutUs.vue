<template lang="">
<div>
    <!DOCTYPE html>
    <html lang="en">

    <head>
        <meta charset="utf-8">
        <meta content="width=device-width, initial-scale=1.0" name="viewport">

        <title>Dashboard - NiceAdmin Bootstrap Template</title>
        <meta content="" name="description">
        <meta content="" name="keywords">

        <!-- Favicons -->
        <link href="adminasset/assets/img/favicon.png" rel="icon">
        <link href="adminasset/assets/img/apple-touch-icon.png" rel="apple-touch-icon">

        <!-- =======================================================
      * Template Name: NiceAdmin - v2.5.0
      * Template URL: https://bootstrapmade.com/nice-admin-bootstrap-admin-html-template/
      * Author: BootstrapMade.com
      * License: https://bootstrapmade.com/license/
      ======================================================== -->
    </head>

    <body>

        <!-- ======= Header ======= -->
        <Header />
        <!-- End Header -->

        <!-- ======= Sidebar ======= -->
        <Menu />
        <!-- End Sidebar-->

        <main id="main" class="main">

            <div class="pagetitle">
                <h1>Dashboard</h1>
                <nav>
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="index.html">Home</a></li>
                        <li class="breadcrumb-item active">Dashboard</li>
                    </ol>
                </nav>
            </div><!-- End Page Title -->

            <section class="section dashboard">
                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title">About Us Infos</h5>

                        <!-- Table with hoverable rows -->
                        <table class="table table-hover">
                            <tbody v-for="(a, i) in aboutus" :key="i">
                                <tr>
                                    <th scope="col">Headline:</th>
                                    <td>{{a.headline}}</td>
                                </tr>
                                <tr>
                                    <th scope="col">Subtitle:</th>
                                    <td>{{a.subtitle}}</td>
                                </tr>
                                <tr>
                                    <th scope="col">List 1:</th>
                                    <td>{{a.list1}}</td>
                                </tr>
                                <tr>
                                    <th scope="col">List 2:</th>
                                    <td>{{a.list2}}</td>
                                </tr>
                                <tr>
                                    <th scope="col">List 3:</th>
                                    <td>{{a.list3}}</td>
                                </tr>
                                <tr>
                                    <th scope="col">Detail:</th>
                                    <td>{{a.detail}}</td>
                                </tr><br>
                                <tr>
                                    <router-link :to="`/admin/aboutusedit/${a.id}`"><button class="btn btn-md btn-primary">Edit</button></router-link>
                                </tr>
                            </tbody>
                        </table>
                        <!-- End Table with hoverable rows -->

                    </div>
                </div>
            </section>

        </main><!-- End #main -->

        <!-- ======= Footer ======= -->
        <Footer />
        <!-- End Footer -->

        <!-- <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a> -->

    </body>

    </html>
</div>
</template>

    
<script>
import axios from 'axios';
import Header from './Header.vue';
import Menu from './Menu.vue';
import Footer from './Footer.vue';
export default {
    name: 'AboutUs',
    components: {
        Header,
        Menu,
        Footer
    },
    data() {
        return {
            aboutus: []
        }
    },
    methods: {
        getAboutus() {
            axios.get("/api/aboutus")
                .then((response) => {
                    this.aboutus = response.data.data
                })
        }
    },
    mounted() {
        this.getAboutus()
    },
}
</script>
