<template lang="">
<div>

    <!-- ======= Header ======= -->
    <Header /><br><br>
    <!-- End Header -->

    <!-- ======= Contact Section ======= -->
    <section id="contact" class="contact">
        <div class="container" data-aos="fade-up" v-for="(g, i) in general" :key="i">

            <div class="section-title">
                <h2>Contact</h2>
                <p>{{g.csubtitle}}</p>
            </div>

            <div class="row" data-aos="fade-up" data-aos-delay="100">

                <div class="col-lg-6">

                    <div class="row">
                        <div class="col-md-12">
                            <div class="info-box">
                                <i class="bx bx-map"></i>
                                <h3>Our Address</h3>
                                <p>{{g.caddress}}</p>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="info-box mt-4">
                                <i class="bx bx-envelope"></i>
                                <h3>Email Us</h3>
                                <p>{{g.cemail}}</p>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="info-box mt-4">
                                <i class="bx bx-phone-call"></i>
                                <h3>Call Us</h3>
                                <p>{{g.cphone}}</p>
                            </div>
                        </div>
                    </div>

                </div>

                <div class="col-lg-6">
                    <div class="php-email-form">
                        <!-- <form action="forms/contact.php" method="post" role="form" class="php-email-form"> -->
                        <div class="row">
                            <div class="col form-group">
                                <input type="text" name="name" class="form-control" id="name" placeholder="Your Name" required v-model="name">
                            </div>
                            <div class="col form-group">
                                <input type="email" class="form-control" name="email" id="email" placeholder="Your Email" required v-model="email">
                            </div>
                        </div>
                        <div class="form-group">
                            <input type="text" class="form-control" name="subject" id="subject" placeholder="Subject" required v-model="subject">
                        </div>
                        <div class="form-group">
                            <textarea class="form-control" name="message" rows="5" placeholder="Message" required v-model="message"></textarea>
                        </div>
                        <div class="my-3">
                            <div class="loading">Loading</div>
                            <div class="error-message"></div>
                            <div class="sent-message">Your message has been sent. Thank you!</div>
                        </div>
                        <div class="text-center"><button type="submit" @click="submit">Send Message</button></div>
                        <!-- </form> -->
                    </div>
                </div>

            </div>

        </div>
    </section>
    <!-- End Contact Section -->

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
    name: 'Contact',
    components: {
        Header,
        Footer
    },
    data() {
        return {
            general: [],
            name: '',
            email: '',
            subject: '',
            message: ''
        }
    },
    methods: {
        submit() {
            axios.post("/api/contactmsg", {
                    cname: this.name,
                    cemail: this.email,
                    csubject: this.subject,
                    cmessage: this.message
                })
                .then((response) => {
                    this.$router.push('/contact')
                    this.name="";
                    this.email="";
                    this.subject="";
                    this.message="";
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
        this.getGeneral()
    }
}
</script>

<style lang="">

</style>
