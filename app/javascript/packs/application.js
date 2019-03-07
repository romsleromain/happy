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

import { contactManager } from '../plugins/init_sweetalert';

contactManager('#contact', {
  title: "Contact manager ?",
  text: "Send a direct message to the manager",
  content: {
    element: "input",
    attributes: {
      placeholder: "Hello, your company is amazing, please hire me !",
    },
  },
  buttons: {
    cancel: "exit",
    text: "Send my message!",
    closeModal: false,
  }
}, (value) => {
  if (value) {
    swal("Your message has been sent !", {
      icon: "success"
    });
  }
});
