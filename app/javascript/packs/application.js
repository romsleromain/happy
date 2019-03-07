import "bootstrap";
import "../plugins/values_choice";

import { follow } from "../components/init-btn-follow.js";
follow();

import { initUpdateNavbarOnScroll } from '../components/navbar';
const navbar = document.querySelector('.navbar-wagon');
if (document.getElementById('home')) {
  initUpdateNavbarOnScroll();
} else {
  navbar.classList.add('navbar-wagon-black');
}


import { initNextStep } from '../components/nextstep';
if (document.getElementById('nextstep')) {
  initNextStep();
}

import { contactManager } from '../plugins/init_sweetalert';

contactManager('#contact', {
  title: "Ask for a chat !",
  text: "Tell me why would you like to work with us",
  content: {
    element: "input",
    attributes: {
      placeholder: "Our values match, let's work together",
    },
  },
  buttons: {
    cancel: "Exit",
    text: "Send my message!",
    closeModal: false,
  }
}, (value) => {
  if (value) {
    swal("Thanks ! We'll come back to you ASAP !", {
      icon: "success"
    });
  }
});
