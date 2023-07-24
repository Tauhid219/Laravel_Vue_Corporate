import './bootstrap';
import { createRouter, createWebHistory } from "vue-router";
import { createApp } from 'vue';
import App from './components/App.vue';
// import Service from './components/test/Service.vue';
// import Contact from './components/test/Contact.vue';
// import ServiceEdit from './components/test/ServiceEdit.vue';
// import ServiceCreate from './components/test/ServiceCreate.vue';
import Dashboard from './components/admin/Dashboard.vue';
import Home from './components/template/Home.vue';
import About from './components/template/About.vue';
import Services from './components/template/Services.vue';
import Team from './components/template/Team.vue';
import Contact from './components/template/Contact.vue';
import Blog from './components/template/Blog.vue';
import BlogSingle from './components/template/BlogSingle.vue';
import ServiceCreate from './components/admin/ServiceCreate.vue';
import Service from './components/admin/Service.vue';
import ServiceEdit from './components/admin/ServiceEdit.vue';
import General from './components/admin/General.vue';
import GeneralEdit from './components/admin/GeneralEdit.vue';
import WhyUs from './components/admin/WhyUs.vue';
import WhyUsEdit from './components/admin/WhyUsEdit.vue';
import AboutUs from './components/admin/AboutUs.vue';
import AboutUsEdit from './components/admin/AboutUsEdit.vue';
import TeamCreate from './components/admin/TeamCreate.vue';
import TeamList from './components/admin/TeamList.vue';
import TeamEdit from './components/admin/TeamEdit.vue';
import BlogCreate from './components/admin/BlogCreate.vue';
import BlogList from './components/admin/BlogList.vue';
import BlogEdit from './components/admin/BlogEdit.vue';
import ContactMsg from './components/admin/ContactMsg.vue';
import ContactMsgShow from './components/admin/ContactMsgShow.vue';



const routes = createRouter({
    history: createWebHistory(),
    routes: [
        // {
        //     name: 'service',
        //     path: '/service',
        //     component: Service
        // },
        {
            name: 'general',
            path: '/admin/general',
            component: General
        },
        {
            name: 'generaledit',
            path: '/admin/generaledit/:id',
            component: GeneralEdit
        },
        {
            name: 'whyus',
            path: '/admin/whyus',
            component: WhyUs
        },
        {
            name: 'whyusedit',
            path: '/admin/whyusedit/:id',
            component: WhyUsEdit
        },
        {
            name: 'aboutus',
            path: '/admin/aboutus',
            component: AboutUs
        },
        {
            name: 'aboutusedit',
            path: '/admin/aboutusedit/:id',
            component: AboutUsEdit
        },
        {
            name: 'servicecreate',
            path: '/admin/servicecreate',
            component: ServiceCreate
        },
        {
            name: 'service',
            path: '/admin/service',
            component: Service
        },
        {
            name: 'serviceedit',
            path: '/admin/serviceedit/:id',
            component: ServiceEdit
        },
        {
            name: 'teamcreate',
            path: '/admin/teamcreate',
            component: TeamCreate
        },
        {
            name: 'teamlist',
            path: '/admin/teamlist',
            component: TeamList
        },
        {
            name: 'teamedit',
            path: '/admin/teamedit/:id',
            component: TeamEdit
        },
        {
            name: 'blogcreate',
            path: '/admin/blogcreate',
            component: BlogCreate
        },
        {
            name: 'bloglist',
            path: '/admin/bloglist',
            component: BlogList
        },
        {
            name: 'blogedit',
            path: '/admin/blogedit/:id',
            component: BlogEdit
        },
        {
            name: 'contactmsg',
            path: '/admin/contactmsg',
            component: ContactMsg
        },
        {
            name: 'contactmsgshow',
            path: '/admin/contactmsgshow/:id',
            component: ContactMsgShow
        },
        // {
        //     name: 'contact',
        //     path: '/contact',
        //     component: Contact
        // },
        // {
        //     name: 'serviceedit',
        //     path: '/serviceedit/:id',
        //     component: ServiceEdit
        // },
        // {
        //     name: 'servicecreate',
        //     path: '/servicecreate',
        //     component: ServiceCreate
        // },
        {
            name: 'dashboard',
            path: '/admin',
            component: Dashboard
        },
        {
            name: 'home',
            path: '/home',
            component: Home
        },
        {
            name: 'about',
            path: '/about',
            component: About
        },
        {
            name: 'services',
            path: '/services',
            component: Services
        },
        {
            name: 'team',
            path: '/team',
            component: Team
        },
        {
            name: 'contact',
            path: '/contact',
            component: Contact
        },
        {
            name: 'blog',
            path: '/blog',
            component: Blog
        },
        {
            name: 'blogsingle',
            path: '/blogsingle/:id',
            component: BlogSingle
        },
    ]
})

const app = createApp(App);
app.use(routes);
app.mount('#app');