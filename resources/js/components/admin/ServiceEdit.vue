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
                        <h5 class="card-title">Edit Service Info</h5>

                        <!-- General Form Elements -->

                        <div class="row mb-3">
                            <label for="" class="col-sm-2 col-form-label">Icon</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" v-model="icon">
                            </div>
                        </div>
                        <div class="row mb-3">
                            <label for="" class="col-sm-2 col-form-label">Title</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" v-model="title">
                            </div>
                        </div>
                        <div class="row mb-3">
                            <label for="" class="col-sm-2 col-form-label">Subtitle</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" v-model="subtitle">
                            </div>
                        </div>
                        <div class="row mb-3">
                            <label class="col-sm-2 col-form-label">Submit Button</label>
                            <div class="col-sm-10">
                                <button type="submit" class="btn btn-primary" @click="updateService">Update</button>
                            </div>
                        </div>

                        <!-- End General Form Elements -->

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
    name: 'ServiceEdit',
    components: {
        Header,
        Menu,
        Footer
    },
    data() {
            return {
                icon: "",
                title: "",
                subtitle: "",
                id: ""
            }
        },
        methods: {
            getService() {
                axios.get(`/api/services/${this.id}`).then((response) => {
                        this.icon = response.data.data.icon,
                        this.title = response.data.data.title,
                        this.subtitle = response.data.data.subtitle
                    })
            },
            updateService() {
                axios.put(`/api/services/${this.id}`, {
                    sicon: this.icon,
                    stitle: this.title,
                    ssubtitle: this.subtitle
                })
                    .then((response) => {
                        this.$router.push('/admin/service')
                    })
            }
        },
        mounted() {
            this.id = this.$route.params.id;
            this.getService();
        },
}
</script>
<style lang="">
    
</style>