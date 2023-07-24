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
                            <h5 class="card-title">General Form Elements</h5>
    
                            <!-- General Form Elements -->
    
                            <div class="row mb-3">
                                <label for="inputText" class="col-sm-2 col-form-label">Home Title</label>
                                <div class="col-sm-10">
                                    <input type="text" class="form-control" v-model="headline">
                                </div>
                            </div>
                            <div class="row mb-3">
                                <label for="inputText" class="col-sm-2 col-form-label">Home Subtitle</label>
                                <div class="col-sm-10">
                                    <input type="text" class="form-control" v-model="subtitle">
                                </div>
                            </div>
                            <div class="row mb-3">
                                <label for="inputText" class="col-sm-2 col-form-label">Services Subtitle</label>
                                <div class="col-sm-10">
                                    <input type="text" class="form-control" v-model="line1">
                                </div>
                            </div>
                            <div class="row mb-3">
                                <label for="inputText" class="col-sm-2 col-form-label">Team Subtitle</label>
                                <div class="col-sm-10">
                                    <input type="text" class="form-control" v-model="line1sub">
                                </div>
                            </div>
                            <div class="row mb-3">
                                <label for="inputText" class="col-sm-2 col-form-label">Contact Subtitle</label>
                                <div class="col-sm-10">
                                    <input type="text" class="form-control" v-model="line2">
                                </div>
                            </div>
                            <div class="row mb-3">
                                <label for="inputText" class="col-sm-2 col-form-label">Contact Address</label>
                                <div class="col-sm-10">
                                    <input type="text" class="form-control" v-model="line2sub">
                                </div>
                            </div>
                            <div class="row mb-3">
                                <label for="inputText" class="col-sm-2 col-form-label">Contact Email</label>
                                <div class="col-sm-10">
                                    <input type="text" class="form-control" v-model="line3">
                                </div>
                            </div>
                            <div class="row mb-3">
                                <label for="inputText" class="col-sm-2 col-form-label">Contact Phone</label>
                                <div class="col-sm-10">
                                    <input type="text" class="form-control" v-model="line3sub">
                                </div>
                            </div>
                            <div class="row mb-3">
                                <label class="col-sm-2 col-form-label">Update Button</label>
                                <div class="col-sm-10">
                                    <button type="submit" class="btn btn-primary" @click="updateWhyus">Update</button>
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
        name: 'WhyUsEdit',
        components: {
            Header,
            Menu,
            Footer
        },
        data() {
            return {
                headline: "",
                subtitle: "",
                line1: "",
                line1sub: "",
                line2: "",
                line2sub: "",
                line3: "",
                line3sub: "",
                id: ""
            }
        },
        methods: {
            getWhyus() {
                axios.get(`/api/whyus/${this.id}`).then((response) => {
                        this.headline = response.data.data.headline,
                        this.subtitle = response.data.data.subtitle,
                        this.line1 = response.data.data.line1,
                        this.line1sub = response.data.data.line1sub,
                        this.line2 = response.data.data.line2,
                        this.line2sub = response.data.data.line2sub,
                        this.line3 = response.data.data.line3,
                        this.line3sub = response.data.data.line3sub
                    })
            },
            updateWhyus() {
                axios.put(`/api/whyus/${this.id}`, {
                    wheadline: this.headline,
                    wsubtitle: this.subtitle,
                    wline1: this.line1,
                    wline1sub: this.line1sub,
                    wline2: this.line2,
                    wline2sub: this.line2sub,
                    wline3: this.line3,
                    wline3sub: this.line3sub
                })
                    .then((response) => {
                        this.$router.push('/admin/whyus')
                    })
            }
        },
        mounted() {
            this.id = this.$route.params.id;
            this.getWhyus();
        },
    }
    </script>
    
    <style lang="">
    
    </style>
    