<template lang="">
<div>

    <!-- ======= Header ======= -->
    <Header /><br><br><br>
    <!-- End Header -->

    <!-- ======= Blog Single Section ======= -->
    <section id="blog" class="blog">
        <div class="container" data-aos="fade-up">

            <div class="row">

                <div class="col-lg-8 entries" >

                    <article class="entry entry-single">

                        <div class="entry-img">
                            <img :src="`/uploads/${this.blog.photo}`" alt="" class="img-fluid">
                        </div>

                        <h2 class="entry-title">
                            <a href="">{{this.blog.title}}</a>
                        </h2>

                        <div class="entry-meta">
                            <ul>
                                <li class="d-flex align-items-center"><i class="bi bi-person"></i> <a href="blog-single.html">John Doe</a></li>
                                <li class="d-flex align-items-center"><i class="bi bi-clock"></i> <a href="blog-single.html"><time datetime="2020-01-01">Jan 1, 2020</time></a></li>
                                <li class="d-flex align-items-center"><i class="bi bi-chat-dots"></i> <a href="blog-single.html">12 Comments</a></li>
                            </ul>
                        </div>

                        <div class="entry-content">

                            <p>
                          {{this.blog.detail1}}
                            </p>

                            <blockquote>
                                <p>
                                    {{this.blog.title2}}
                                </p>
                            </blockquote>

                            <p>
                                {{this.blog.detail2}}
                            </p>

                            <h3>{{this.blog.title3}}</h3>
                            <p>
                                {{this.blog.detail3}}
                            </p>

                        </div>

                        <div class="entry-footer">
                            <i class="bi bi-folder"></i>
                            <ul class="cats">
                                <li><a href="#">Business</a></li>
                            </ul>

                            <i class="bi bi-tags"></i>
                            <ul class="tags">
                                <li><a href="#">Creative</a></li>
                                <li><a href="#">Tips</a></li>
                                <li><a href="#">Marketing</a></li>
                            </ul>
                        </div>

                    </article><!-- End blog entry -->

                    <!-- End blog author bio -->

                    <!-- End blog comments -->

                </div><!-- End blog entries list -->

                <div class="col-lg-4">

                    <div class="sidebar">

                        <h3 class="sidebar-title">Search</h3>
                        <div class="sidebar-item search-form">
                            <form action="">
                                <input type="text">
                                <button type="submit"><i class="bi bi-search"></i></button>
                            </form>
                        </div><!-- End sidebar search formn-->

                        <h3 class="sidebar-title">Categories</h3>
                        <div class="sidebar-item categories">
                            <ul>
                                <li><a href="#">General <span>(25)</span></a></li>
                                <li><a href="#">Lifestyle <span>(12)</span></a></li>
                                <li><a href="#">Travel <span>(5)</span></a></li>
                                <li><a href="#">Design <span>(22)</span></a></li>
                                <li><a href="#">Creative <span>(8)</span></a></li>
                                <li><a href="#">Educaion <span>(14)</span></a></li>
                            </ul>
                        </div><!-- End sidebar categories-->

                        <h3 class="sidebar-title">Recent Posts</h3>
                        <div class="sidebar-item recent-posts">
                            <div class="post-item clearfix">
                                <img src="/templateasset/assets/img/blog/blog-recent-1.jpg" alt="">
                                <h4><a href="blog-single.html">Nihil blanditiis at in nihil autem</a></h4>
                                <time datetime="2020-01-01">Jan 1, 2020</time>
                            </div>

                            <div class="post-item clearfix">
                                <img src="/templateasset/assets/img/blog/blog-recent-2.jpg" alt="">
                                <h4><a href="blog-single.html">Quidem autem et impedit</a></h4>
                                <time datetime="2020-01-01">Jan 1, 2020</time>
                            </div>

                            <div class="post-item clearfix">
                                <img src="/templateasset/assets/img/blog/blog-recent-3.jpg" alt="">
                                <h4><a href="blog-single.html">Id quia et et ut maxime similique occaecati ut</a></h4>
                                <time datetime="2020-01-01">Jan 1, 2020</time>
                            </div>

                            <div class="post-item clearfix">
                                <img src="/templateasset/assets/img/blog/blog-recent-4.jpg" alt="">
                                <h4><a href="blog-single.html">Laborum corporis quo dara net para</a></h4>
                                <time datetime="2020-01-01">Jan 1, 2020</time>
                            </div>

                            <div class="post-item clearfix">
                                <img src="/templateasset/assets/img/blog/blog-recent-5.jpg" alt="">
                                <h4><a href="blog-single.html">Et dolores corrupti quae illo quod dolor</a></h4>
                                <time datetime="2020-01-01">Jan 1, 2020</time>
                            </div>

                        </div><!-- End sidebar recent posts-->

                        <h3 class="sidebar-title">Tags</h3>
                        <div class="sidebar-item tags">
                            <ul>
                                <li><a href="#">App</a></li>
                                <li><a href="#">IT</a></li>
                                <li><a href="#">Business</a></li>
                                <li><a href="#">Mac</a></li>
                                <li><a href="#">Design</a></li>
                                <li><a href="#">Office</a></li>
                                <li><a href="#">Creative</a></li>
                                <li><a href="#">Studio</a></li>
                                <li><a href="#">Smart</a></li>
                                <li><a href="#">Tips</a></li>
                                <li><a href="#">Marketing</a></li>
                            </ul>
                        </div><!-- End sidebar tags-->

                    </div><!-- End sidebar -->

                </div><!-- End blog sidebar -->

            </div>

        </div>
    </section>
    <!-- End Blog Single Section -->

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
    name: 'BlogSingle',
    components: {
        Header,
        Footer
    },
    data() {
        return {
            blog: {}
            // file: "",
            // title: "",
            // name: "",
            // subtitle: "",
            // detail1: "",
            // title2: "",
            // detail2: "",
            // title3: "",
            // detail3: "",
            // id: ""
        }
    },
    methods: {
        getBlog() {
            axios.get(`/api/blog/${this.id}`).then((response) => {
                this.blog = response.data.data
                console.log(this.blog)
                // this.file = response.data.data.file,
                //     this.title = response.data.data.title,
                //     this.name = response.data.data.name,
                //     this.subtitle = response.data.data.subtitle,
                //     this.detail1 = response.data.data.detail1,
                //     this.title2 = response.data.data.title2,
                //     this.detail2 = response.data.data.detail2,
                //     this.title3 = response.data.data.title3,
                //     this.detail3 = response.data.data.detail3
                    
            })
        },
    },
    mounted() {
        this.id = this.$route.params.id;
        this.getBlog();
    },
}
</script>

<style lang="">

</style>
