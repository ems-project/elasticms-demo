'use strict';
const $ = require('jquery');
window.$ = $;
window.jQuery = $;

import './css/bootstrap.scss';
require('bootstrap');

import adminMenu from '@elasticms/admin-menu';
import back2top from "./js/back2top";
import ajaxSearch from "./js/ajax-search";
import toc from "./js/toc";
import externalLink from "./js/external-link";
import form from "./js/form";
import {NavBar} from "./js/navbar";

adminMenu();
back2top();
ajaxSearch();
toc();
externalLink();
form();

const navBar = new NavBar();
navBar.activateBestItem();

console.log('Demo website loaded!');
