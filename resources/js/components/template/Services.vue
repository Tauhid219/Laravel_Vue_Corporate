<template lang="">
<div>

    <!-- ======= Header ======= -->
    <Header />
    <!-- End Header -->

    <!-- ======= Services Section ======= -->
    <section id="services" class="services section-bg ">
        <div class="container" data-aos="fade-up">

            <div class="section-title" v-for="(g, i) in general" :key="i">
                <h2>Services</h2>
                <p>{{g.ssubtitle}}</p>
            </div>

            <div class="row">
                <div class="col-md-6 mt-4 mt-md-0" v-for="(s, i) in service" :key="i">
                    <div class="icon-box" data-aos="fade-up" data-aos-delay="200">
                        <i :class="(s.icon)"></i>
                        <h4><a href="#">{{s.title}}</a></h4>
                        <p>{{s.subtitle}}</p>
                    </div>
                </div>
            </div>

        </div>
    </section>
    <!-- End Services Section -->

    <!-- ======= Footer ======= -->
    <Footer />
    <!-- End Footer -->

</div>
</template>

<script>
import axios from 'axios';
import Header from './Header.vue';
import Footer from './Footer.vue';
export default {
    name: 'Services',
    components: {
        Header,
        Footer
    },
    data() {
        return {
            service: [],
            general: []
        }
    },
    methods: {
        getService() {
            axios.get("/api/services")
                .then((response) => {
                    this.service = response.data.data
                })
        },
        getGeneral() {
            axios.get("/api/general")
                .then((response) => {
                    this.general = response.data.data
                })
        }
    },
    mounted() {
        this.getService(),
        this.getGeneral()
    },
}
</script>

<style lang="">

</style>
