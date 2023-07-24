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
                            <h5 class="card-title">Edit About Us Info</h5>
    
                            <!-- General Form Elements -->
    
                            <div class="row mb-3">
                                <label for="inputText" class="col-sm-2 col-form-label">Headline</label>
                                <div class="col-sm-10">
                                    <input type="text" class="form-control" v-model="headline">
                                </div>
                            </div>
                            <div class="row mb-3">
                                <label for="inputText" class="col-sm-2 col-form-label">Subtitle</label>
                                <div class="col-sm-10">
                                    <input type="text" class="form-control" v-model="subtitle">
                                </div>
                            </div>
                            <div class="row mb-3">
                                <label for="inputText" class="col-sm-2 col-form-label">List 1</label>
                                <div class="col-sm-10">
                                    <input type="text" class="form-control" v-model="list1">
                                </div>
                            </div>
                            <div class="row mb-3">
                                <label for="inputText" class="col-sm-2 col-form-label">List 2</label>
                                <div class="col-sm-10">
                                    <input type="text" class="form-control" v-model="list2">
                                </div>
                            </div>
                            <div class="row mb-3">
                                <label for="inputText" class="col-sm-2 col-form-label">List 3</label>
                                <div class="col-sm-10">
                                    <input type="text" class="form-control" v-model="list3">
                                </div>
                            </div>
                            <div class="row mb-3">
                                <label for="inputText" class="col-sm-2 col-form-label">Detail</label>
                                <div class="col-sm-10">
                                    <input type="text" class="form-control" v-model="detail">
                                </div>
                            </div>
                            <div class="row mb-3">
                                <label class="col-sm-2 col-form-label">Update Button</label>
                                <div class="col-sm-10">
                                    <button type="submit" class="btn btn-primary" @click="updateAboutus">Update</button>
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
        name: 'AboutUsEdit',
        components: {
            Header,
            Menu,
            Footer
        },
        data() {
            return {
                headline: "",
                subtitle: "",
                list1: "",
                list2: "",
                list3: "",
                detail: "",
                id: ""
            }
        },
        methods: {
            getAboutus() {
                axios.get(`/api/aboutus/${this.id}`).then((response) => {
                        this.headline = response.data.data.headline,
                        this.subtitle = response.data.data.subtitle,
                        this.list1 = response.data.data.list1,
                        this.list2 = response.data.data.list2,
                        this.list3 = response.data.data.list3,
                        this.detail = response.data.data.detail
                    })
            },
            updateAboutus() {
                axios.put(`/api/aboutus/${this.id}`, {
                    aheadline: this.headline,
                    asubtitle: this.subtitle,
                    alist1: this.list1,
                    alist2: this.list2,
                    alist3: this.list3,
                    adetail: this.detail
                })
                    .then((response) => {
                        this.$router.push('/admin/aboutus')
                    })
            }
        },
        mounted() {
            this.id = this.$route.params.id;
            this.getAboutus();
        },
    }
    </script>
    
    <style lang="">
    
    </style>
    