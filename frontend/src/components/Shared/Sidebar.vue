<template>
    <div :class="open ? 'sidebar bg--dark open' : 'sidebar bg--dark'">
        <button @click="open = false" class="res-sidebar-close-btn">
            <i class="las la-times"></i>
        </button>
        <div class="sidebar__inner">
            <div class="sidebar__logo">
                <router-link to="/" class="sidebar__main-logo"><img height="50px" src="/logo.png"
                        alt="image" /></router-link>
            </div>

            <div class="sidebar__menu-wrapper" id="sidebar__menuWrapper">
                <ul class="sidebar__menu">
                    <li class="sidebar-menu-item">
                        <router-link to="/" class="nav-link">
                            <i class="menu-icon las la-home"></i>
                            <span class="menu-title">Dashboard</span>
                        </router-link>
                    </li>

                    <li class="sidebar-menu-item active">
                        <router-link :to="{ name: 'users' }" class="nav-link">
                            <i class="menu-icon las la-user-check"></i>
                            <span class="menu-title">Users</span>
                        </router-link>
                    </li>

                    <li class="sidebar-menu-item active">
                        <router-link :to="{ name: 'users' }" class="nav-link">
                            <i class="menu-icon las la-paper-plane"></i>
                            <span class="menu-title">Tasks</span>
                        </router-link>
                    </li>

                    <li class="sidebar-menu-item active">
                        <router-link :to="{ name: 'users' }" class="nav-link">
                            <i class="menu-icon las la-paper-plane"></i>
                            <span class="menu-title">Task Status</span>
                        </router-link>
                    </li>

                    <li class="sidebar-menu-item sidebar-dropdown ">
                        <a href="javascript:void(0)" class="">
                            <i class="menu-icon la la-list"></i>
                            <span class="menu-title">Reports</span>

                            <span class="menu-badge pill bg--danger ms-auto">
                                <i class="fa fa-exclamation"></i>
                            </span>
                        </a>
                        <div class="sidebar-submenu sidebar-submenu__open">
                            <ul>
                                <li class="sidebar-menu-item">
                                    <a href="https://script.viserlab.com/mlmlab/admin/users/active" class="nav-link">
                                        <i class="menu-icon las la-dot-circle"></i>
                                        <span class="menu-title">Users</span>
                                    </a>
                                </li>
                                <li class="sidebar-menu-item">
                                    <a href="https://script.viserlab.com/mlmlab/admin/users/banned" class="nav-link">
                                        <i class="menu-icon las la-dot-circle"></i>
                                        <span class="menu-title">Tasks</span>
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </li>

                    <li class="sidebar-menu-item sidebar-dropdown">
                        <a href="javascript:void(0)" class="">
                            <i class="menu-icon las la-credit-card"></i>
                            <span class="menu-title">Payment Gateways</span>
                        </a>
                        <div class="sidebar-submenu">
                            <ul>
                                <li class="sidebar-menu-item">
                                    <a href="https://script.viserlab.com/mlmlab/admin/gateway/automatic" class="nav-link">
                                        <i class="menu-icon las la-dot-circle"></i>
                                        <span class="menu-title">Automatic Gateways</span>
                                    </a>
                                </li>
                                <li class="sidebar-menu-item">
                                    <a href="https://script.viserlab.com/mlmlab/admin/gateway/manual" class="nav-link">
                                        <i class="menu-icon las la-dot-circle"></i>
                                        <span class="menu-title">Manual Gateways</span>
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </li>

                    <li class="sidebar-menu-item sidebar-dropdown">
                        <a href="javascript:void(0)" class="">
                            <i class="menu-icon las la-file-invoice-dollar"></i>
                            <span class="menu-title">Deposits</span>
                            <span class="menu-badge pill bg--danger ms-auto">
                                <i class="fa fa-exclamation"></i>
                            </span>
                        </a>
                        <div class="sidebar-submenu">
                            <ul>
                                <li class="sidebar-menu-item">
                                    <a href="https://script.viserlab.com/mlmlab/admin/deposit/pending" class="nav-link">
                                        <i class="menu-icon las la-dot-circle"></i>
                                        <span class="menu-title">Pending Deposits</span>
                                        <span class="menu-badge pill bg--danger ms-auto">30</span>
                                    </a>
                                </li>

                                <li class="sidebar-menu-item">
                                    <a href="https://script.viserlab.com/mlmlab/admin/deposit/approved" class="nav-link">
                                        <i class="menu-icon las la-dot-circle"></i>
                                        <span class="menu-title">Approved Deposits</span>
                                    </a>
                                </li>

                                <li class="sidebar-menu-item">
                                    <a href="https://script.viserlab.com/mlmlab/admin/deposit/successful" class="nav-link">
                                        <i class="menu-icon las la-dot-circle"></i>
                                        <span class="menu-title">Successful Deposits</span>
                                    </a>
                                </li>

                                <li class="sidebar-menu-item">
                                    <a href="https://script.viserlab.com/mlmlab/admin/deposit/rejected" class="nav-link">
                                        <i class="menu-icon las la-dot-circle"></i>
                                        <span class="menu-title">Rejected Deposits</span>
                                    </a>
                                </li>

                                <li class="sidebar-menu-item">
                                    <a href="https://script.viserlab.com/mlmlab/admin/deposit/initiated" class="nav-link">
                                        <i class="menu-icon las la-dot-circle"></i>
                                        <span class="menu-title">Initiated Deposits</span>
                                    </a>
                                </li>

                                <li class="sidebar-menu-item">
                                    <a href="https://script.viserlab.com/mlmlab/admin/deposit" class="nav-link">
                                        <i class="menu-icon las la-dot-circle"></i>
                                        <span class="menu-title">All Deposits</span>
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </li>

                    <li class="sidebar-menu-item sidebar-dropdown">
                        <a href="javascript:void(0)" class="">
                            <i class="menu-icon la la-bank"></i>
                            <span class="menu-title">Withdrawals </span>
                            <span class="menu-badge pill bg--danger ms-auto">
                                <i class="fa fa-exclamation"></i>
                            </span>
                        </a>
                        <div class="sidebar-submenu">
                            <ul>
                                <li class="sidebar-menu-item">
                                    <a href="https://script.viserlab.com/mlmlab/admin/withdraw/method" class="nav-link">
                                        <i class="menu-icon las la-dot-circle"></i>
                                        <span class="menu-title">Withdrawal Methods</span>
                                    </a>
                                </li>

                                <li class="sidebar-menu-item">
                                    <a href="https://script.viserlab.com/mlmlab/admin/withdraw/pending" class="nav-link">
                                        <i class="menu-icon las la-dot-circle"></i>
                                        <span class="menu-title">Pending Withdrawals</span>

                                        <span class="menu-badge pill bg--danger ms-auto">11</span>
                                    </a>
                                </li>

                                <li class="sidebar-menu-item">
                                    <a href="https://script.viserlab.com/mlmlab/admin/withdraw/approved" class="nav-link">
                                        <i class="menu-icon las la-dot-circle"></i>
                                        <span class="menu-title">Approved Withdrawals</span>
                                    </a>
                                </li>

                                <li class="sidebar-menu-item">
                                    <a href="https://script.viserlab.com/mlmlab/admin/withdraw/rejected" class="nav-link">
                                        <i class="menu-icon las la-dot-circle"></i>
                                        <span class="menu-title">Rejected Withdrawals</span>
                                    </a>
                                </li>

                                <li class="sidebar-menu-item">
                                    <a href="https://script.viserlab.com/mlmlab/admin/withdraw/log" class="nav-link">
                                        <i class="menu-icon las la-dot-circle"></i>
                                        <span class="menu-title">All Withdrawals</span>
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </li>

                    <li class="sidebar-menu-item sidebar-dropdown">
                        <a href="javascript:void(0)" class="">
                            <i class="menu-icon la la-ticket"></i>
                            <span class="menu-title">Support Ticket </span>
                            <span class="menu-badge pill bg--danger ms-auto">
                                <i class="fa fa-exclamation"></i>
                            </span>
                        </a>
                        <div class="sidebar-submenu">
                            <ul>
                                <li class="sidebar-menu-item">
                                    <a href="https://script.viserlab.com/mlmlab/admin/ticket/pending" class="nav-link">
                                        <i class="menu-icon las la-dot-circle"></i>
                                        <span class="menu-title">Pending Ticket</span>
                                        <span class="menu-badge pill bg--danger ms-auto">33</span>
                                    </a>
                                </li>
                                <li class="sidebar-menu-item">
                                    <a href="https://script.viserlab.com/mlmlab/admin/ticket/closed" class="nav-link">
                                        <i class="menu-icon las la-dot-circle"></i>
                                        <span class="menu-title">Closed Ticket</span>
                                    </a>
                                </li>
                                <li class="sidebar-menu-item">
                                    <a href="https://script.viserlab.com/mlmlab/admin/ticket/answered" class="nav-link">
                                        <i class="menu-icon las la-dot-circle"></i>
                                        <span class="menu-title">Answered Ticket</span>
                                    </a>
                                </li>
                                <li class="sidebar-menu-item">
                                    <a href="https://script.viserlab.com/mlmlab/admin/ticket" class="nav-link">
                                        <i class="menu-icon las la-dot-circle"></i>
                                        <span class="menu-title">All Ticket</span>
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </li>

                    <li class="sidebar-menu-item sidebar-dropdown">
                        <a href="javascript:void(0)" class="">
                            <i class="menu-icon la la-list"></i>
                            <span class="menu-title">Report </span>
                        </a>
                        <div class="sidebar-submenu">
                            <ul>
                                <li class="sidebar-menu-item">
                                    <a href="https://script.viserlab.com/mlmlab/admin/report/transaction" class="nav-link">
                                        <i class="menu-icon las la-dot-circle"></i>
                                        <span class="menu-title">Transaction Log</span>
                                    </a>
                                </li>

                                <li class="sidebar-menu-item">
                                    <a href="https://script.viserlab.com/mlmlab/admin/report/invest" class="nav-link">
                                        <i class="menu-icon las la-dot-circle"></i>
                                        <span class="menu-title">Invest Log</span>
                                    </a>
                                </li>
                                <li class="sidebar-menu-item">
                                    <a href="https://script.viserlab.com/mlmlab/admin/report/bv-log" class="nav-link">
                                        <i class="menu-icon las la-dot-circle"></i>
                                        <span class="menu-title">BV Log</span>
                                    </a>
                                </li>
                                <li class="sidebar-menu-item">
                                    <a href="https://script.viserlab.com/mlmlab/admin/report/referral-commission"
                                        class="nav-link">
                                        <i class="menu-icon las la-dot-circle"></i>
                                        <span class="menu-title">Referral Commission</span>
                                    </a>
                                </li>
                                <li class="sidebar-menu-item">
                                    <a href="https://script.viserlab.com/mlmlab/admin/report/binary-commission"
                                        class="nav-link">
                                        <i class="menu-icon las la-dot-circle"></i>
                                        <span class="menu-title">Binary Commission</span>
                                    </a>
                                </li>

                                <li class="sidebar-menu-item">
                                    <a href="https://script.viserlab.com/mlmlab/admin/report/login/history"
                                        class="nav-link">
                                        <i class="menu-icon las la-dot-circle"></i>
                                        <span class="menu-title">Login History</span>
                                    </a>
                                </li>

                                <li class="sidebar-menu-item">
                                    <a href="https://script.viserlab.com/mlmlab/admin/report/notification/history"
                                        class="nav-link">
                                        <i class="menu-icon las la-dot-circle"></i>
                                        <span class="menu-title">Notification History</span>
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </li>

                    <li class="sidebar-menu-item">
                        <a href="https://script.viserlab.com/mlmlab/admin/subscriber" class="nav-link"
                            data-default-url="https://script.viserlab.com/mlmlab/admin/subscriber">
                            <i class="menu-icon las la-thumbs-up"></i>
                            <span class="menu-title">Subscribers </span>
                        </a>
                    </li>

                    <li class="sidebar__menu-header">Settings</li>

                    <li class="sidebar-menu-item">
                        <a href="https://script.viserlab.com/mlmlab/admin/general-setting" class="nav-link">
                            <i class="menu-icon las la-life-ring"></i>
                            <span class="menu-title">General Setting</span>
                        </a>
                    </li>

                    <li class="sidebar-menu-item">
                        <a href="https://script.viserlab.com/mlmlab/admin/setting/system-configuration" class="nav-link">
                            <i class="menu-icon las la-cog"></i>
                            <span class="menu-title">System Configuration</span>
                        </a>
                    </li>

                    <li class="sidebar-menu-item">
                        <a href="https://script.viserlab.com/mlmlab/admin/matching-bonus" class="nav-link">
                            <i class="menu-icon las la-donate"></i>
                            <span class="menu-title">Matching Bonus</span>
                        </a>
                    </li>

                    <li class="sidebar-menu-item">
                        <a href="https://script.viserlab.com/mlmlab/admin/setting/logo-icon" class="nav-link">
                            <i class="menu-icon las la-images"></i>
                            <span class="menu-title">Logo & Favicon</span>
                        </a>
                    </li>

                    <li class="sidebar-menu-item">
                        <a href="https://script.viserlab.com/mlmlab/admin/extensions" class="nav-link">
                            <i class="menu-icon las la-cogs"></i>
                            <span class="menu-title">Extensions</span>
                        </a>
                    </li>

                    <li class="sidebar-menu-item">
                        <a href="https://script.viserlab.com/mlmlab/admin/language" class="nav-link"
                            data-default-url="https://script.viserlab.com/mlmlab/admin/language">
                            <i class="menu-icon las la-language"></i>
                            <span class="menu-title">Language </span>
                        </a>
                    </li>

                    <li class="sidebar-menu-item">
                        <a href="https://script.viserlab.com/mlmlab/admin/seo" class="nav-link">
                            <i class="menu-icon las la-globe"></i>
                            <span class="menu-title">SEO Manager</span>
                        </a>
                    </li>

                    <li class="sidebar-menu-item">
                        <a href="https://script.viserlab.com/mlmlab/admin/kyc-setting" class="nav-link">
                            <i class="menu-icon las la-user-check"></i>
                            <span class="menu-title">KYC Setting</span>
                        </a>
                    </li>

                    <li class="sidebar-menu-item sidebar-dropdown">
                        <a href="javascript:void(0)" class="">
                            <i class="menu-icon las la-bell"></i>
                            <span class="menu-title">Notification Setting</span>
                        </a>
                        <div class="sidebar-submenu">
                            <ul>
                                <li class="sidebar-menu-item">
                                    <a href="https://script.viserlab.com/mlmlab/admin/notification/global" class="nav-link">
                                        <i class="menu-icon las la-dot-circle"></i>
                                        <span class="menu-title">Global Template</span>
                                    </a>
                                </li>
                                <li class="sidebar-menu-item">
                                    <a href="https://script.viserlab.com/mlmlab/admin/notification/email/setting"
                                        class="nav-link">
                                        <i class="menu-icon las la-dot-circle"></i>
                                        <span class="menu-title">Email Setting</span>
                                    </a>
                                </li>
                                <li class="sidebar-menu-item">
                                    <a href="https://script.viserlab.com/mlmlab/admin/notification/sms/setting"
                                        class="nav-link">
                                        <i class="menu-icon las la-dot-circle"></i>
                                        <span class="menu-title">SMS Setting</span>
                                    </a>
                                </li>
                                <li class="sidebar-menu-item">
                                    <a href="https://script.viserlab.com/mlmlab/admin/notification/templates"
                                        class="nav-link">
                                        <i class="menu-icon las la-dot-circle"></i>
                                        <span class="menu-title">Notification Templates</span>
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </li>

                    <li class="sidebar__menu-header">Frontend Manager</li>

                    <li class="sidebar-menu-item">
                        <a href="https://script.viserlab.com/mlmlab/admin/frontend/templates" class="nav-link">
                            <i class="menu-icon la la-html5"></i>
                            <span class="menu-title">Manage Templates</span>
                        </a>
                    </li>

                    <li class="sidebar-menu-item">
                        <a href="https://script.viserlab.com/mlmlab/admin/frontend/manage-pages" class="nav-link">
                            <i class="menu-icon la la-list"></i>
                            <span class="menu-title">Manage Pages</span>
                        </a>
                    </li>

                    <li class="sidebar-menu-item sidebar-dropdown">
                        <a href="javascript:void(0)" class="">
                            <i class="menu-icon la la-puzzle-piece"></i>
                            <span class="menu-title">Manage Section</span>
                        </a>
                        <div class="sidebar-submenu">
                            <ul>
                                <li class="sidebar-menu-item">
                                    <a href="https://script.viserlab.com/mlmlab/admin/frontend/frontend-sections/about"
                                        class="nav-link">
                                        <i class="menu-icon las la-dot-circle"></i>
                                        <span class="menu-title">About Us</span>
                                    </a>
                                </li>
                                <li class="sidebar-menu-item">
                                    <a href="https://script.viserlab.com/mlmlab/admin/frontend/frontend-sections/banner"
                                        class="nav-link">
                                        <i class="menu-icon las la-dot-circle"></i>
                                        <span class="menu-title">Banner Section</span>
                                    </a>
                                </li>
                                <li class="sidebar-menu-item">
                                    <a href="https://script.viserlab.com/mlmlab/admin/frontend/frontend-sections/blog"
                                        class="nav-link">
                                        <i class="menu-icon las la-dot-circle"></i>
                                        <span class="menu-title">Blog Section</span>
                                    </a>
                                </li>
                                <li class="sidebar-menu-item">
                                    <a href="https://script.viserlab.com/mlmlab/admin/frontend/frontend-sections/breadcrumb"
                                        class="nav-link">
                                        <i class="menu-icon las la-dot-circle"></i>
                                        <span class="menu-title">Breadcrumb</span>
                                    </a>
                                </li>
                                <li class="sidebar-menu-item">
                                    <a href="https://script.viserlab.com/mlmlab/admin/frontend/frontend-sections/contact_us"
                                        class="nav-link">
                                        <i class="menu-icon las la-dot-circle"></i>
                                        <span class="menu-title">Contact Us</span>
                                    </a>
                                </li>
                                <li class="sidebar-menu-item">
                                    <a href="https://script.viserlab.com/mlmlab/admin/frontend/frontend-sections/counter"
                                        class="nav-link">
                                        <i class="menu-icon las la-dot-circle"></i>
                                        <span class="menu-title">Counter Section</span>
                                    </a>
                                </li>
                                <li class="sidebar-menu-item">
                                    <a href="https://script.viserlab.com/mlmlab/admin/frontend/frontend-sections/faq"
                                        class="nav-link">
                                        <i class="menu-icon las la-dot-circle"></i>
                                        <span class="menu-title">FAQ Section</span>
                                    </a>
                                </li>
                                <li class="sidebar-menu-item">
                                    <a href="https://script.viserlab.com/mlmlab/admin/frontend/frontend-sections/footer"
                                        class="nav-link">
                                        <i class="menu-icon las la-dot-circle"></i>
                                        <span class="menu-title">Footer Section</span>
                                    </a>
                                </li>
                                <li class="sidebar-menu-item">
                                    <a href="https://script.viserlab.com/mlmlab/admin/frontend/frontend-sections/how_it_works"
                                        class="nav-link">
                                        <i class="menu-icon las la-dot-circle"></i>
                                        <span class="menu-title">How It Works</span>
                                    </a>
                                </li>
                                <li class="sidebar-menu-item">
                                    <a href="https://script.viserlab.com/mlmlab/admin/frontend/frontend-sections/kyc_info"
                                        class="nav-link">
                                        <i class="menu-icon las la-dot-circle"></i>
                                        <span class="menu-title">KYC Information</span>
                                    </a>
                                </li>
                                <li class="sidebar-menu-item">
                                    <a href="https://script.viserlab.com/mlmlab/admin/frontend/frontend-sections/login"
                                        class="nav-link">
                                        <i class="menu-icon las la-dot-circle"></i>
                                        <span class="menu-title">Login Section</span>
                                    </a>
                                </li>
                                <li class="sidebar-menu-item">
                                    <a href="https://script.viserlab.com/mlmlab/admin/frontend/frontend-sections/marketing_tool"
                                        class="nav-link">
                                        <i class="menu-icon las la-dot-circle"></i>
                                        <span class="menu-title">Marketing Tool</span>
                                    </a>
                                </li>
                                <li class="sidebar-menu-item">
                                    <a href="https://script.viserlab.com/mlmlab/admin/frontend/frontend-sections/notice"
                                        class="nav-link">
                                        <i class="menu-icon las la-dot-circle"></i>
                                        <span class="menu-title">User Notice</span>
                                    </a>
                                </li>
                                <li class="sidebar-menu-item active">
                                    <a href="https://script.viserlab.com/mlmlab/admin/frontend/frontend-sections/plan"
                                        class="nav-link">
                                        <i class="menu-icon las la-dot-circle"></i>
                                        <span class="menu-title">Plan Section</span>
                                    </a>
                                </li>
                                <li class="sidebar-menu-item">
                                    <a href="https://script.viserlab.com/mlmlab/admin/frontend/frontend-sections/policy_pages"
                                        class="nav-link">
                                        <i class="menu-icon las la-dot-circle"></i>
                                        <span class="menu-title">Policy Pages</span>
                                    </a>
                                </li>
                                <li class="sidebar-menu-item">
                                    <a href="https://script.viserlab.com/mlmlab/admin/frontend/frontend-sections/register"
                                        class="nav-link">
                                        <i class="menu-icon las la-dot-circle"></i>
                                        <span class="menu-title">Register Section</span>
                                    </a>
                                </li>
                                <li class="sidebar-menu-item">
                                    <a href="https://script.viserlab.com/mlmlab/admin/frontend/frontend-sections/service"
                                        class="nav-link">
                                        <i class="menu-icon las la-dot-circle"></i>
                                        <span class="menu-title">Service Section</span>
                                    </a>
                                </li>
                                <li class="sidebar-menu-item">
                                    <a href="https://script.viserlab.com/mlmlab/admin/frontend/frontend-sections/social_icon"
                                        class="nav-link">
                                        <i class="menu-icon las la-dot-circle"></i>
                                        <span class="menu-title">Social Icons</span>
                                    </a>
                                </li>
                                <li class="sidebar-menu-item">
                                    <a href="https://script.viserlab.com/mlmlab/admin/frontend/frontend-sections/subscribe"
                                        class="nav-link">
                                        <i class="menu-icon las la-dot-circle"></i>
                                        <span class="menu-title">Subscribe Section</span>
                                    </a>
                                </li>
                                <li class="sidebar-menu-item">
                                    <a href="https://script.viserlab.com/mlmlab/admin/frontend/frontend-sections/team"
                                        class="nav-link">
                                        <i class="menu-icon las la-dot-circle"></i>
                                        <span class="menu-title">Team Section</span>
                                    </a>
                                </li>
                                <li class="sidebar-menu-item">
                                    <a href="https://script.viserlab.com/mlmlab/admin/frontend/frontend-sections/testimonial"
                                        class="nav-link">
                                        <i class="menu-icon las la-dot-circle"></i>
                                        <span class="menu-title">Testimonial Section</span>
                                    </a>
                                </li>
                                <li class="sidebar-menu-item">
                                    <a href="https://script.viserlab.com/mlmlab/admin/frontend/frontend-sections/transactions"
                                        class="nav-link">
                                        <i class="menu-icon las la-dot-circle"></i>
                                        <span class="menu-title">Transactions</span>
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </li>

                    <li class="sidebar__menu-header">Extra</li>

                    <li class="sidebar-menu-item">
                        <a href="https://script.viserlab.com/mlmlab/admin/maintenance-mode" class="nav-link">
                            <i class="menu-icon las la-robot"></i>
                            <span class="menu-title">Maintenance Mode</span>
                        </a>
                    </li>

                    <li class="sidebar-menu-item">
                        <a href="https://script.viserlab.com/mlmlab/admin/cookie" class="nav-link">
                            <i class="menu-icon las la-cookie-bite"></i>
                            <span class="menu-title">GDPR Cookie</span>
                        </a>
                    </li>

                    <li class="sidebar-menu-item sidebar-dropdown">
                        <a href="javascript:void(0)" class="">
                            <i class="menu-icon la la-server"></i>
                            <span class="menu-title">System</span>
                        </a>
                        <div class="sidebar-submenu">
                            <ul>
                                <li class="sidebar-menu-item">
                                    <a href="https://script.viserlab.com/mlmlab/admin/system/info" class="nav-link">
                                        <i class="menu-icon las la-dot-circle"></i>
                                        <span class="menu-title">Application</span>
                                    </a>
                                </li>
                                <li class="sidebar-menu-item">
                                    <a href="https://script.viserlab.com/mlmlab/admin/system/server-info" class="nav-link">
                                        <i class="menu-icon las la-dot-circle"></i>
                                        <span class="menu-title">Server</span>
                                    </a>
                                </li>
                                <li class="sidebar-menu-item">
                                    <a href="https://script.viserlab.com/mlmlab/admin/system/optimize" class="nav-link">
                                        <i class="menu-icon las la-dot-circle"></i>
                                        <span class="menu-title">Cache</span>
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </li>

                    <li class="sidebar-menu-item">
                        <a href="https://script.viserlab.com/mlmlab/admin/custom-css" class="nav-link">
                            <i class="menu-icon lab la-css3-alt"></i>
                            <span class="menu-title">Custom CSS</span>
                        </a>
                    </li>

                    <li class="sidebar-menu-item">
                        <a href="https://script.viserlab.com/mlmlab/admin/request-report" class="nav-link"
                            data-default-url="https://script.viserlab.com/mlmlab/admin/request-report">
                            <i class="menu-icon las la-bug"></i>
                            <span class="menu-title">Report & Request </span>
                        </a>
                    </li>
                </ul>
                <div class="text-center mb-3 text-uppercase">
                    <span class="text--primary">mlmlab</span>
                    <span class="text--success">V2.2 </span>
                </div>
            </div>
        </div>
    </div>
    <nav class="navbar-wrapper bg--dark">
        <div class="navbar__left">
            <button type="button" @click="open = true" class="res-sidebar-open-btn me-3">
                <i class="las la-bars"></i>
            </button>
            <form class="navbar-search">
                <input type="search" name="#0" class="navbar-search-field" id="searchInput" autocomplete="off"
                    placeholder="Search here..." />
                <i class="las la-search"></i>
                <ul class="search-list"></ul>
            </form>
        </div>
        <div class="navbar__right">
            <ul class="navbar__action-list">
                <li class="dropdown">
                    <button type="button" class="primary--layer" data-bs-toggle="dropdown" data-display="static"
                        aria-haspopup="true" aria-expanded="false">
                        <i class="las la-bell text--primary icon-left-right"></i>
                    </button>
                    <div class="dropdown-menu dropdown-menu--md p-0 border-0 box--shadow1 dropdown-menu-right">
                        <div class="dropdown-menu__header">
                            <span class="caption">Notification</span>
                            <p>You have 93 unread notification</p>
                        </div>
                        <div class="dropdown-menu__body">
                            <a href="https://script.viserlab.com/mlmlab/admin/notification/read/235"
                                class="dropdown-menu__item">
                                <div class="navbar-notifi">
                                    <div class="navbar-notifi__left bg--green b-radius--rounded">
                                        <img src="https://script.viserlab.com/mlmlab/placeholder-image/300x300"
                                            alt="Profile Image" />
                                    </div>
                                    <div class="navbar-notifi__right">
                                        <h6 class="notifi__title">
                                            Deposit request from tesong
                                        </h6>
                                        <span class="time"><i class="far fa-clock"></i> 13 hours ago</span>
                                    </div>
                                </div>
                                <!-- navbar-notifi end -->
                            </a>
                            <a href="https://script.viserlab.com/mlmlab/admin/notification/read/234"
                                class="dropdown-menu__item">
                                <div class="navbar-notifi">
                                    <div class="navbar-notifi__left bg--green b-radius--rounded">
                                        <img src="https://script.viserlab.com/mlmlab/placeholder-image/300x300"
                                            alt="Profile Image" />
                                    </div>
                                    <div class="navbar-notifi__right">
                                        <h6 class="notifi__title">New member registered</h6>
                                        <span class="time"><i class="far fa-clock"></i> 14 hours ago</span>
                                    </div>
                                </div>
                                <!-- navbar-notifi end -->
                            </a>
                            <a href="https://script.viserlab.com/mlmlab/admin/notification/read/231"
                                class="dropdown-menu__item">
                                <div class="navbar-notifi">
                                    <div class="navbar-notifi__left bg--green b-radius--rounded">
                                        <img src="https://script.viserlab.com/mlmlab/placeholder-image/300x300"
                                            alt="Profile Image" />
                                    </div>
                                    <div class="navbar-notifi__right">
                                        <h6 class="notifi__title">New member registered</h6>
                                        <span class="time"><i class="far fa-clock"></i> 1 day ago</span>
                                    </div>
                                </div>
                                <!-- navbar-notifi end -->
                            </a>
                            <a href="https://script.viserlab.com/mlmlab/admin/notification/read/229"
                                class="dropdown-menu__item">
                                <div class="navbar-notifi">
                                    <div class="navbar-notifi__left bg--green b-radius--rounded">
                                        <img src="https://script.viserlab.com/mlmlab/placeholder-image/300x300"
                                            alt="Profile Image" />
                                    </div>
                                    <div class="navbar-notifi__right">
                                        <h6 class="notifi__title">New member registered</h6>
                                        <span class="time"><i class="far fa-clock"></i> 3 days ago</span>
                                    </div>
                                </div>
                                <!-- navbar-notifi end -->
                            </a>
                            <a href="https://script.viserlab.com/mlmlab/admin/notification/read/228"
                                class="dropdown-menu__item">
                                <div class="navbar-notifi">
                                    <div class="navbar-notifi__left bg--green b-radius--rounded">
                                        <img src="https://script.viserlab.com/mlmlab/assets/images/user/profile/643a942c608401681560620.jpg"
                                            alt="Profile Image" />
                                    </div>
                                    <div class="navbar-notifi__right">
                                        <h6 class="notifi__title">New member registered</h6>
                                        <span class="time"><i class="far fa-clock"></i> 4 days ago</span>
                                    </div>
                                </div>
                                <!-- navbar-notifi end -->
                            </a>
                            <a href="https://script.viserlab.com/mlmlab/admin/notification/read/227"
                                class="dropdown-menu__item">
                                <div class="navbar-notifi">
                                    <div class="navbar-notifi__left bg--green b-radius--rounded">
                                        <img src="https://script.viserlab.com/mlmlab/placeholder-image/300x300"
                                            alt="Profile Image" />
                                    </div>
                                    <div class="navbar-notifi__right">
                                        <h6 class="notifi__title">New member registered</h6>
                                        <span class="time"><i class="far fa-clock"></i> 4 days ago</span>
                                    </div>
                                </div>
                                <!-- navbar-notifi end -->
                            </a>
                            <a href="https://script.viserlab.com/mlmlab/admin/notification/read/226"
                                class="dropdown-menu__item">
                                <div class="navbar-notifi">
                                    <div class="navbar-notifi__left bg--green b-radius--rounded">
                                        <img src="https://script.viserlab.com/mlmlab/placeholder-image/300x300"
                                            alt="Profile Image" />
                                    </div>
                                    <div class="navbar-notifi__right">
                                        <h6 class="notifi__title">New member registered</h6>
                                        <span class="time"><i class="far fa-clock"></i> 5 days ago</span>
                                    </div>
                                </div>
                                <!-- navbar-notifi end -->
                            </a>
                            <a href="https://script.viserlab.com/mlmlab/admin/notification/read/225"
                                class="dropdown-menu__item">
                                <div class="navbar-notifi">
                                    <div class="navbar-notifi__left bg--green b-radius--rounded">
                                        <img src="https://script.viserlab.com/mlmlab/placeholder-image/300x300"
                                            alt="Profile Image" />
                                    </div>
                                    <div class="navbar-notifi__right">
                                        <h6 class="notifi__title">New member registered</h6>
                                        <span class="time"><i class="far fa-clock"></i> 5 days ago</span>
                                    </div>
                                </div>
                                <!-- navbar-notifi end -->
                            </a>
                            <a href="https://script.viserlab.com/mlmlab/admin/notification/read/224"
                                class="dropdown-menu__item">
                                <div class="navbar-notifi">
                                    <div class="navbar-notifi__left bg--green b-radius--rounded">
                                        <img src="https://script.viserlab.com/mlmlab/placeholder-image/300x300"
                                            alt="Profile Image" />
                                    </div>
                                    <div class="navbar-notifi__right">
                                        <h6 class="notifi__title">New member registered</h6>
                                        <span class="time"><i class="far fa-clock"></i> 5 days ago</span>
                                    </div>
                                </div>
                                <!-- navbar-notifi end -->
                            </a>
                            <a href="https://script.viserlab.com/mlmlab/admin/notification/read/223"
                                class="dropdown-menu__item">
                                <div class="navbar-notifi">
                                    <div class="navbar-notifi__left bg--green b-radius--rounded">
                                        <img src="https://script.viserlab.com/mlmlab/placeholder-image/300x300"
                                            alt="Profile Image" />
                                    </div>
                                    <div class="navbar-notifi__right">
                                        <h6 class="notifi__title">New member registered</h6>
                                        <span class="time"><i class="far fa-clock"></i> 1 week ago</span>
                                    </div>
                                </div>
                                <!-- navbar-notifi end -->
                            </a>
                        </div>
                        <div class="dropdown-menu__footer">
                            <a href="https://script.viserlab.com/mlmlab/admin/notifications" class="view-all-message">View
                                all
                                notification</a>
                        </div>
                    </div>
                </li>

                <li class="dropdown">
                    <button type="button" class="" data-bs-toggle="dropdown" data-display="static" aria-haspopup="true"
                        aria-expanded="false">
                        <span class="navbar-user">
                            <span class="navbar-user__thumb"><img
                                    src="https://script.viserlab.com/mlmlab/assets/admin/images/profile/6379b33c94bd11668920124.jpg"
                                    alt="image" /></span>
                            <span class="navbar-user__info">
                                <span class="navbar-user__name">admin</span>
                            </span>
                            <span class="icon"><i class="las la-chevron-circle-down"></i></span>
                        </span>
                    </button>
                    <div class="dropdown-menu dropdown-menu--sm p-0 border-0 box--shadow1 dropdown-menu-right">
                        <a href="https://script.viserlab.com/mlmlab/admin/profile"
                            class="dropdown-menu__item d-flex align-items-center px-3 py-2">
                            <i class="dropdown-menu__icon las la-user-circle"></i>
                            <span class="dropdown-menu__caption">Profile</span>
                        </a>

                        <a href="https://script.viserlab.com/mlmlab/admin/password"
                            class="dropdown-menu__item d-flex align-items-center px-3 py-2">
                            <i class="dropdown-menu__icon las la-key"></i>
                            <span class="dropdown-menu__caption">Password</span>
                        </a>

                        <a href="https://script.viserlab.com/mlmlab/admin/logout"
                            class="dropdown-menu__item d-flex align-items-center px-3 py-2">
                            <i class="dropdown-menu__icon las la-sign-out-alt"></i>
                            <span class="dropdown-menu__caption">Logout</span>
                        </a>
                    </div>
                </li>
            </ul>
        </div>
    </nav>
</template>
<script setup>
import { ref } from "vue"
let open = ref(null)
</script>
<style lang="">
    
</style>