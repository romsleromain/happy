import "bootstrap";
import "../plugins/values_choice";

import { follow } from "../components/init-btn-follow.js";
follow();

import { initUpdateNavbarOnScroll } from '../components/navbar';
initUpdateNavbarOnScroll();

import { initNextStep } from '../components/nextstep';
if (document.getElementById('nextstep')) {
  initNextStep();
}

import { initSweetalert } from '../plugins/init_sweetalert';

initSweetalert('#sweet-alert-demo', {
  title: "A nice alert",
  text: "This is a great alert, isn't it?",
  icon: "success"
});
