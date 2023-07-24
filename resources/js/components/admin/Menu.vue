<template lang="">
<div>
    <!-- ======= Sidebar ======= -->
    <aside id="sidebar" class="sidebar">

        <ul class="sidebar-nav" id="sidebar-nav">

            <li class="nav-item">
                <router-link to="/admin" class="nav-link"><i class="bi bi-grid"></i>
                    <span>Dashboard</span></router-link>
            </li><!-- End Dashboard Nav -->

            <li class="nav-item">
                <a class="nav-link collapsed" data-bs-target="#general-nav" data-bs-toggle="collapse" href="#">
                    <i class="bi bi-menu-button-wide"></i><span>General Info</span><i class="bi bi-chevron-down ms-auto"></i>
                </a>
                <ul id="general-nav" class="nav-content collapse " data-bs-parent="#sidebar-nav">
                    <li>
                        <router-link to="/admin/general"><i class="bi bi-circle"></i><span>General Info</span></router-link>
                    </li>
                    <!-- <li>
                        <router-link to="/admin/service"><i class="bi bi-circle"></i><span>Service</span></router-link>
                    </li> -->
                </ul>
            </li>
            <!-- End Components Nav -->
            
            <li class="nav-item">
                <a class="nav-link collapsed" data-bs-target="#whyus-nav" data-bs-toggle="collapse" href="#">
                    <i class="bi bi-menu-button-wide"></i><span>Why Us</span><i class="bi bi-chevron-down ms-auto"></i>
                </a>
                <ul id="whyus-nav" class="nav-content collapse " data-bs-parent="#sidebar-nav">
                    <li>
                        <router-link to="/admin/whyus"><i class="bi bi-circle"></i><span>Why Us Info</span></router-link>
                    </li>
                    <!-- <li>
                        <router-link to="/admin/service"><i class="bi bi-circle"></i><span>Service</span></router-link>
                    </li> -->
                </ul>
            </li>
            <!-- End Components Nav -->
            
            <li class="nav-item">
                <a class="nav-link collapsed" data-bs-target="#aboutus-nav" data-bs-toggle="collapse" href="#">
                    <i class="bi bi-menu-button-wide"></i><span>About Us</span><i class="bi bi-chevron-down ms-auto"></i>
                </a>
                <ul id="aboutus-nav" class="nav-content collapse " data-bs-parent="#sidebar-nav">
                    <li>
                        <router-link to="/admin/aboutus"><i class="bi bi-circle"></i><span>About Us Info</span></router-link>
                    </li>
                    <!-- <li>
                        <router-link to="/admin/service"><i class="bi bi-circle"></i><span>Service</span></router-link>
                    </li> -->
                </ul>
            </li>
            <!-- End Components Nav -->

            <li class="nav-item">
                <a class="nav-link collapsed" data-bs-target="#services-nav" data-bs-toggle="collapse" href="#">
                    <i class="bi bi-menu-button-wide"></i><span>Services</span><i class="bi bi-chevron-down ms-auto"></i>
                </a>
                <ul id="services-nav" class="nav-content collapse " data-bs-parent="#sidebar-nav">
                    <li>
                        <router-link to="/admin/servicecreate"><i class="bi bi-circle"></i><span>Create Service</span></router-link>
                    </li>
                    <li>
                        <router-link to="/admin/service"><i class="bi bi-circle"></i><span>Service</span></router-link>
                    </li>
                </ul>
            </li>
            <!-- End Components Nav -->

            <li class="nav-item">
                <a class="nav-link collapsed" data-bs-target="#team-nav" data-bs-toggle="collapse" href="#">
                    <i class="bi bi-menu-button-wide"></i><span>Team</span><i class="bi bi-chevron-down ms-auto"></i>
                </a>
                <ul id="team-nav" class="nav-content collapse " data-bs-parent="#sidebar-nav">
                    <li>
                        <router-link to="/admin/teamcreate"><i class="bi bi-circle"></i><span>Create Team Member</span></router-link>
                    </li>
                    <li>
                        <router-link to="/admin/teamlist"><i class="bi bi-circle"></i><span>Team Members</span></router-link>
                    </li>
                </ul>
            </li>
            <!-- End Components Nav -->

            <li class="nav-item">
                <a class="nav-link collapsed" data-bs-target="#blog-nav" data-bs-toggle="collapse" href="#">
                    <i class="bi bi-menu-button-wide"></i><span>Blog</span><i class="bi bi-chevron-down ms-auto"></i>
                </a>
                <ul id="blog-nav" class="nav-content collapse " data-bs-parent="#sidebar-nav">
                    <li>
                        <router-link to="/admin/blogcreate"><i class="bi bi-circle"></i><span>Create Blog</span></router-link>
                    </li>
                    <li>
                        <router-link to="/admin/bloglist"><i class="bi bi-circle"></i><span>Blog Lists</span></router-link>
                    </li>
                </ul>
            </li>
            <!-- End Components Nav -->

            <li class="nav-item">
                <a class="nav-link collapsed" data-bs-target="#contact-nav" data-bs-toggle="collapse" href="#">
                    <i class="bi bi-menu-button-wide"></i><span>Contact</span><i class="bi bi-chevron-down ms-auto"></i>
                </a>
                <ul id="contact-nav" class="nav-content collapse " data-bs-parent="#sidebar-nav">
                    <li>
                        <router-link to="/admin/contactmsg"><i class="bi bi-circle"></i><span>Messages</span></router-link>
                    </li>
                    <!-- <li>
                        <router-link to="/admin/bloglist"><i class="bi bi-circle"></i><span>Blog Lists</span></router-link>
                    </li> -->
                </ul>
            </li>
            <!-- End Components Nav -->

            <!-- <li class="nav-item">
                <a class="nav-link collapsed" data-bs-target="#forms-nav" data-bs-toggle="collapse" href="#">
                    <i class="bi bi-journal-text"></i><span>Forms</span><i class="bi bi-chevron-down ms-auto"></i>
                </a>
                <ul id="forms-nav" class="nav-content collapse " data-bs-parent="#sidebar-nav">
                    <li>
                        <a href="forms-elements.html">
                            <i class="bi bi-circle"></i><span>Form Elements</span>
                        </a>
                    </li>
                    <li>
                        <a href="forms-layouts.html">
                            <i class="bi bi-circle"></i><span>Form Layouts</span>
                        </a>
                    </li>
                    <li>
                        <a href="forms-editors.html">
                            <i class="bi bi-circle"></i><span>Form Editors</span>
                        </a>
                    </li>
                    <li>
                        <a href="forms-validation.html">
                            <i class="bi bi-circle"></i><span>Form Validation</span>
                        </a>
                    </li>
                </ul>
            </li>

            <li class="nav-item">
                <a class="nav-link collapsed" data-bs-target="#tables-nav" data-bs-toggle="collapse" href="#">
                    <i class="bi bi-layout-text-window-reverse"></i><span>Tables</span><i class="bi bi-chevron-down ms-auto"></i>
                </a>
                <ul id="tables-nav" class="nav-content collapse " data-bs-parent="#sidebar-nav">
                    <li>
                        <a href="tables-general.html">
                            <i class="bi bi-circle"></i><span>General Tables</span>
                        </a>
                    </li>
                    <li>
                        <a href="tables-data.html">
                            <i class="bi bi-circle"></i><span>Data Tables</span>
                        </a>
                    </li>
                </ul>
            </li>
            
            <li class="nav-item">
                <a class="nav-link collapsed" data-bs-target="#charts-nav" data-bs-toggle="collapse" href="#">
                    <i class="bi bi-bar-chart"></i><span>Charts</span><i class="bi bi-chevron-down ms-auto"></i>
                </a>
                <ul id="charts-nav" class="nav-content collapse " data-bs-parent="#sidebar-nav">
                    <li>
                        <a href="charts-chartjs.html">
                            <i class="bi bi-circle"></i><span>Chart.js</span>
                        </a>
                    </li>
                    <li>
                        <a href="charts-apexcharts.html">
                            <i class="bi bi-circle"></i><span>ApexCharts</span>
                        </a>
                    </li>
                    <li>
                        <a href="charts-echarts.html">
                            <i class="bi bi-circle"></i><span>ECharts</span>
                        </a>
                    </li>
                </ul>
            </li>
            
            <li class="nav-item">
                <a class="nav-link collapsed" data-bs-target="#icons-nav" data-bs-toggle="collapse" href="#">
                    <i class="bi bi-gem"></i><span>Icons</span><i class="bi bi-chevron-down ms-auto"></i>
                </a>
                <ul id="icons-nav" class="nav-content collapse " data-bs-parent="#sidebar-nav">
                    <li>
                        <a href="icons-bootstrap.html">
                            <i class="bi bi-circle"></i><span>Bootstrap Icons</span>
                        </a>
                    </li>
                    <li>
                        <a href="icons-remix.html">
                            <i class="bi bi-circle"></i><span>Remix Icons</span>
                        </a>
                    </li>
                    <li>
                        <a href="icons-boxicons.html">
                            <i class="bi bi-circle"></i><span>Boxicons</span>
                        </a>
                    </li>
                </ul>
            </li>
            
            <li class="nav-heading">Pages</li>

            <li class="nav-item">
                <a class="nav-link collapsed" href="users-profile.html">
                    <i class="bi bi-person"></i>
                    <span>Profile</span>
                </a>
            </li>
            
            <li class="nav-item">
                <a class="nav-link collapsed" href="pages-faq.html">
                    <i class="bi bi-question-circle"></i>
                    <span>F.A.Q</span>
                </a>
            </li>
            
            <li class="nav-item">
                <a class="nav-link collapsed" href="pages-contact.html">
                    <i class="bi bi-envelope"></i>
                    <span>Contact</span>
                </a>
            </li>
            
            <li class="nav-item">
                <a class="nav-link collapsed" href="pages-register.html">
                    <i class="bi bi-card-list"></i>
                    <span>Register</span>
                </a>
            </li>
            
            <li class="nav-item">
                <a class="nav-link collapsed" href="pages-login.html">
                    <i class="bi bi-box-arrow-in-right"></i>
                    <span>Login</span>
                </a>
            </li>
            
            <li class="nav-item">
                <a class="nav-link collapsed" href="pages-error-404.html">
                    <i class="bi bi-dash-circle"></i>
                    <span>Error 404</span>
                </a>
            </li>
            
            <li class="nav-item">
                <a class="nav-link collapsed" href="pages-blank.html">
                    <i class="bi bi-file-earmark"></i>
                    <span>Blank</span>
                </a>
            </li> -->
            
        </ul>

    </aside>
    <!-- End Sidebar-->
</div>
</template>

<script>
export default {
    name: 'Menu'
}
</script>

<style lang="">

</style>
