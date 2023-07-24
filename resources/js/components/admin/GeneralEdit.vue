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
                                <input type="text" class="form-control" v-model="htitle">
                            </div>
                        </div>
                        <div class="row mb-3">
                            <label for="inputText" class="col-sm-2 col-form-label">Home Subtitle</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" v-model="hsubtitle">
                            </div>
                        </div>
                        <div class="row mb-3">
                            <label for="inputText" class="col-sm-2 col-form-label">Services Subtitle</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" v-model="ssubtitle">
                            </div>
                        </div>
                        <div class="row mb-3">
                            <label for="inputText" class="col-sm-2 col-form-label">Team Subtitle</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" v-model="tsubtitle">
                            </div>
                        </div>
                        <div class="row mb-3">
                            <label for="inputText" class="col-sm-2 col-form-label">Contact Subtitle</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" v-model="csubtitle">
                            </div>
                        </div>
                        <div class="row mb-3">
                            <label for="inputText" class="col-sm-2 col-form-label">Contact Address</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" v-model="caddress">
                            </div>
                        </div>
                        <div class="row mb-3">
                            <label for="inputText" class="col-sm-2 col-form-label">Contact Email</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" v-model="cemail">
                            </div>
                        </div>
                        <div class="row mb-3">
                            <label for="inputText" class="col-sm-2 col-form-label">Contact Phone</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" v-model="cphone">
                            </div>
                        </div>
                        <div class="row mb-3">
                            <label class="col-sm-2 col-form-label">Update Button</label>
                            <div class="col-sm-10">
                                <button type="submit" class="btn btn-primary" @click="updateGeneral">Update</button>
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
    name: 'GeneralEdit',
    components: {
        Header,
        Menu,
        Footer
    },
    data() {
        return {
            htitle: "",
            hsubtitle: "",
            ssubtitle: "",
            tsubtitle: "",
            csubtitle: "",
            caddress: "",
            cemail: "",
            cphone: "",
            id: ""
        }
    },
    methods: {
        getGeneral() {
            axios.get(`/api/general/${this.id}`).then((response) => {
                    this.htitle = response.data.data.htitle,
                    this.hsubtitle = response.data.data.hsubtitle,
                    this.ssubtitle = response.data.data.ssubtitle,
                    this.tsubtitle = response.data.data.tsubtitle,
                    this.csubtitle = response.data.data.csubtitle,
                    this.caddress = response.data.data.caddress,
                    this.cemail = response.data.data.cemail,
                    this.cphone = response.data.data.cphone
                })
        },
        updateGeneral() {
            axios.put(`/api/general/${this.id}`, {
                ghtitle: this.htitle,
                ghsubtitle: this.hsubtitle,
                gssubtitle: this.ssubtitle,
                gtsubtitle: this.tsubtitle,
                gcsubtitle: this.csubtitle,
                gcaddress: this.caddress,
                gcemail: this.cemail,
                gcphone: this.cphone
            })
                .then((response) => {
                    this.$router.push('/admin/general')
                })
        }
    },
    mounted() {
        this.id = this.$route.params.id;
        this.getGeneral();
    },
}
</script>

<style lang="">

</style>
