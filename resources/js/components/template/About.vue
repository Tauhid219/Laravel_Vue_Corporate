<template lang="">
<div>

    <!-- ======= Header ======= -->
    <Header />
    <!-- End Header -->

    <!-- <Clients /> -->

    <!-- ======= About Section ======= -->
    <section id="about" class="about section-bg">
        <div class="container" data-aos="fade-up">

            <div class="row no-gutters" v-for="(w, i) in whyus" :key="i">
                <div class="content col-xl-5 d-flex align-items-stretch">
                    <div class="content">
                        <h3>{{w.headline}}</h3>
                        <p>
                            {{w.subtitle}}
                        </p>
                        <a href="#" class="about-btn"><span>About us</span> <i class="bx bx-chevron-right"></i></a>
                    </div>
                </div>
                <div class="col-xl-7 d-flex align-items-stretch">
                    <div class="icon-boxes d-flex flex-column justify-content-center">
                        <div class="row">
                            <div class="col-md-6 icon-box" data-aos="fade-up" data-aos-delay="100">
                                <i class="bx bx-receipt"></i>
                                <h4>{{w.line1}}</h4>
                                <p>{{w.line1sub}}</p>
                            </div>
                            <div class="col-md-6 icon-box" data-aos="fade-up" data-aos-delay="200">
                                <i class="bx bx-cube-alt"></i>
                                <h4>{{w.line2}}</h4>
                                <p>{{w.line2sub}}</p>
                            </div>
                            <div class="col-md-6 icon-box" data-aos="fade-up" data-aos-delay="300">
                                <i class="bx bx-images"></i>
                                <h4>{{w.line3}}</h4>
                                <p>{{w.line3sub}}</p>
                            </div>
                            <!-- <div class="col-md-6 icon-box" data-aos="fade-up" data-aos-delay="400">
                                <i class="bx bx-shield"></i>
                                <h4>Beatae veritatis</h4>
                                <p>Expedita veritatis consequuntur nihil tempore laudantium vitae denat pacta</p>
                            </div> -->
                        </div>
                    </div><!-- End .content-->
                </div>
            </div>

        </div>
    </section>
    <!-- End About Section -->

    <!-- <Counts /> -->

    <Tabs />

    <!-- ======= Footer ======= -->
    <Footer />
    <!-- End Footer -->

</div>
</template>

<script>
import axios from 'axios';
import Header from './Header.vue';
import Footer from './Footer.vue';
import Clients from './Clients.vue';
import Counts from './Counts.vue';
import Tabs from './Tabs.vue';
export default {
    name: 'About',
    components: {
        Header,
        Footer,
        Clients,
        Counts,
        Tabs
    },
    data() {
        return {
            whyus: []
        }
    },
    methods: {
        getWhyus() {
            axios.get("/api/whyus")
                .then((response) => {
                    this.whyus = response.data.data
                })
        }
    },
    mounted() {
        this.getWhyus()
    },
}
</script>

<style lang="">

</style>
