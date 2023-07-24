<template lang="">
<div>

    <!-- ======= Header ======= -->
    <Header />
    <!-- End Header -->

    <!-- ======= Team Section ======= -->
    <section id="team" class="team section-bg">
        <div class="container" data-aos="fade-up">

            <div class="section-title" v-for="(g, i) in general" :key="i">
                <h2>Team</h2>
                <p>{{g.tsubtitle}}</p>
            </div>

            <div class="row">

                <div class="col-lg-3 col-md-6 d-flex align-items-stretch" v-for="(t, i) in team" :key="i">
                    <div class="member" data-aos="fade-up" data-aos-delay="100">
                        <div class="member-img">
                            <img :src="`/uploads/${t.photo}`" class="img-fluid" alt="">
                            <div class="social">
                                <a href=""><i class="bi bi-twitter"></i></a>
                                <a href=""><i class="bi bi-facebook"></i></a>
                                <a href=""><i class="bi bi-instagram"></i></a>
                                <a href=""><i class="bi bi-linkedin"></i></a>
                            </div>
                        </div>
                        <div class="member-info">
                            <h4>{{t.name}}</h4>
                            <span>{{t.position}}</span>
                        </div>
                    </div>
                </div>

            </div>

        </div>
    </section>
    <!-- End Team Section -->

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
    name: 'Team',
    components: {
        Header,
        Footer
    },
    data() {
        return {
            general: [],
            team: []
        }
    },
    methods: {
        getGeneral() {
            axios.get("/api/general")
                .then((response) => {
                    this.general = response.data.data
                })
        },
        getTeam() {
            axios.get("/api/team")
                .then((response) => {
                    this.team = response.data.data
                })
        },
    },
    mounted() {
        this.getGeneral(),
        this.getTeam()
    }
}
</script>

<style lang="">

</style>
