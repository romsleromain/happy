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
import { initSweetalert2 } from '../plugins/init_sweetalert';
import { contactManager } from '../plugins/init_sweetalert';

initSweetalert('#sweet-alert-demo', {
  title: "Want to contact?",
  text: "Send a direct message to the manager",
  icon: "success"
});


initSweetalert2('#sweet-alert-demo2', {
  title: "Want to contact?",
  text: "Send a direct message to the manager",
  icon: "success"
}, (value) => {
  if (value) {
    swal("Hello world!");
  }
});

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
