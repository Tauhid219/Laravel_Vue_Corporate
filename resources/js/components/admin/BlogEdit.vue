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
                        <h5 class="card-title">Blog Elements</h5>

                        <!-- General Form Elements -->
                        <!-- <form> -->
                        <div class="row mb-3">
                            <label for="inputNumber" class="col-sm-2 col-form-label">File Upload</label>
                            <div class="col-sm-10">
                                <input class="form-control" type="file" id="formFile" @change="fileHandle($event)">
                            </div>
                        </div>
                        <div class="row mb-3">
                            <label for="inputText" class="col-sm-2 col-form-label">Title</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" v-model="title">
                            </div>
                        </div>
                        <div class="row mb-3">
                            <label for="inputText" class="col-sm-2 col-form-label">Name</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" v-model="name">
                            </div>
                        </div>
                        <div class="row mb-3">
                            <label for="inputText" class="col-sm-2 col-form-label">Subtitle</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" v-model="subtitle">
                            </div>
                        </div>
                        <div class="row mb-3">
                            <label for="inputPassword" class="col-sm-2 col-form-label">Detail 1</label>
                            <div class="col-sm-10">
                                <textarea class="form-control" style="height: 180px" v-model="detail1"></textarea>
                            </div>
                        </div>
                        <div class="row mb-3">
                            <label for="inputText" class="col-sm-2 col-form-label">Title 2</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" v-model="title2">
                            </div>
                        </div>
                        <div class="row mb-3">
                            <label for="inputPassword" class="col-sm-2 col-form-label">Detail 2</label>
                            <div class="col-sm-10">
                                <textarea class="form-control" style="height: 180px" v-model="detail2"></textarea>
                            </div>
                        </div>
                        <div class="row mb-3">
                            <label for="inputText" class="col-sm-2 col-form-label">Title 3</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" v-model="title3">
                            </div>
                        </div>
                        <div class="row mb-3">
                            <label for="inputPassword" class="col-sm-2 col-form-label">Detail 3</label>
                            <div class="col-sm-10">
                                <textarea class="form-control" style="height: 200px" v-model="detail3"></textarea>
                            </div>
                        </div>
                        <div class="row mb-3">
                            <label class="col-sm-2 col-form-label">Submit Button</label>
                            <div class="col-sm-10">
                                <button type="submit" class="btn btn-primary" @click="updateBlog">Update</button>
                            </div>
                        </div>

                        <!-- </form> -->
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
    name: 'BlogEdit',
    components: {
        Header,
        Menu,
        Footer
    },
    data() {
        return {
            file: "",
            title: "",
            name: "",
            subtitle: "",
            detail1: "",
            title2: "",
            detail2: "",
            title3: "",
            detail3: "",
            id: ""
        }
    },
    methods: {
        getBlog() {
            axios.get(`/api/blog/${this.id}`).then((response) => {
                this.file = response.data.data.file,
                    this.title = response.data.data.title,
                    this.name = response.data.data.name,
                    this.subtitle = response.data.data.subtitle,
                    this.detail1 = response.data.data.detail1,
                    this.title2 = response.data.data.title2,
                    this.detail2 = response.data.data.detail2,
                    this.title3 = response.data.data.title3,
                    this.detail3 = response.data.data.detail3
            })
        },
        fileHandle(e) {
            this.file = e.target.files[0]
        },
        updateBlog() {
            let formData = new FormData();
            formData.append("_method", 'PUT');
            formData.append("file", this.file);
            formData.append("title", this.title);
            formData.append("name", this.name);
            formData.append("subtitle", this.subtitle);
            formData.append("detail1", this.detail1);
            formData.append("title2", this.title2);
            formData.append("detail2", this.detail2);
            formData.append("title3", this.title3);
            formData.append("detail3", this.detail3);

            axios.post(`/api/blog/${this.id}`, formData, {
                    headers: {
                        "Content-Type": "multipart/form-data"
                    },
                })
                .then((response) => {
                    this.$router.push('/admin/bloglist')
                })
        }
    },
    mounted() {
        this.id = this.$route.params.id;
        this.getBlog();
    },
}
</script>
