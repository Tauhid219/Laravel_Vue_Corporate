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
                        <h5 class="card-title">Contact Messages</h5>

                        <!-- Table with hoverable rows -->
                        <table class="table table-hover">
                            <thead>
                                <tr>
                                    <th scope="col">SL</th>
                                    <th scope="col">Name</th>
                                    <th scope="col">Email</th>
                                    <th scope="col">Subject</th>
                                    <th scope="col">Action</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr v-for="(c, i) in contactmsg" :key="i">
                                    <th scope="row">{{++i}}</th>
                                    <td>{{c.name}}</td>
                                    <td>{{c.email}}</td>
                                    <td>{{c.subject}}</td>
                                    <td>
                                        <router-link :to="`/admin/contactmsgshow/${c.id}`"><button class="btn btn-sm btn-primary">Show Message</button></router-link> &nbsp;
                                        <a href="javascript:void(0)" @click="deleteContactmsg(c.id)"><button class="btn btn-sm btn-danger">Delete</button></a>
                                    </td>
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
    name: 'ContactMsg',
    components: {
        Header,
        Menu,
        Footer
    },
    data() {
        return {
            contactmsg: []
        }
    },
    methods: {
        getContactmsg() {
            axios.get("/api/contactmsg")
                .then((response) => {
                    this.contactmsg = response.data.data
                })
        },
        deleteContactmsg(id) {
            axios.delete(`/api/contactmsg/${id}`)
                .then((response) => {
                    this.getContactmsg()
                })
        }
    },
    mounted() {
        this.getContactmsg()
    }
}
</script>
