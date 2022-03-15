'use strict';
const $ = require('jquery');
window.$ = $;
window.jQuery = $;

import './css/styles.scss';
require('bootstrap');

import adminMenu from '@elasticms/admin-menu';
import back2top from "./js/back2top";
import ajaxSearch from "./js/ajax-search";
import toc from "./js/toc";
import externalLink from "./js/external-link";
import form from "./js/form";
import {NavBar} from "./js/navbar";
import multilevelNavbar from "./js/multilevel-navbar";

adminMenu('ems_demo_admin', '<i class="ems-icon"></i> Back to CMS');
back2top();
ajaxSearch();
toc();
externalLink();
form();
multilevelNavbar();

const navBar = new NavBar();
navBar.activateBestItem();

console.log('Demo website loaded!');
