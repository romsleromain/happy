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

