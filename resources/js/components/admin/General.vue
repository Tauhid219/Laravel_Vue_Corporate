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
                        <h5 class="card-title">General Infos</h5>

                        <!-- Table with hoverable rows -->
                        <table class="table table-hover">
                            <tbody v-for="(g, i) in general" :key="i">
                                <tr>
                                    <th scope="col">Home Title:</th>
                                    <td>{{g.htitle}}</td>
                                </tr>
                                <tr>
                                    <th scope="col">Home Subtitle:</th>
                                    <td>{{g.hsubtitle}}</td>
                                </tr>
                                <tr>
                                    <th scope="col">Services Subtitle:</th>
                                    <td>{{g.ssubtitle}}</td>
                                </tr>
                                <tr>
                                    <th scope="col">Team Subtitle:</th>
                                    <td>{{g.tsubtitle}}</td>
                                </tr>
                                <tr>
                                    <th scope="col">Contact Subtitle:</th>
                                    <td>{{g.csubtitle}}</td>
                                </tr>
                                <tr>
                                    <th scope="col">Contact Address:</th>
                                    <td>{{g.caddress}}</td>
                                </tr>
                                <tr>
                                    <th scope="col">Contact Email:</th>
                                    <td>{{g.cemail}}</td>
                                </tr>
                                <tr>
                                    <th scope="col">Contact Phone:</th>
                                    <td>{{g.cphone}}</td>
                                </tr><br>
                                <tr>
                                    <router-link :to="`/admin/generaledit/${g.id}`"><button class="btn btn-md btn-primary">Edit</button></router-link>
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
    name: 'General',
    components: {
        Header,
        Menu,
        Footer
    },
    data() {
        return {
            general: []
        }
    },
    methods: {
        getGeneral() {
            axios.get("/api/general")
                .then((response) => {
                    this.general = response.data.data
                })
        }
    },
    mounted() {
        this.getGeneral()
    },
}
</script>

<style lang="">

</style>
