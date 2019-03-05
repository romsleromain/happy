const initNextStep = () => {
  const button = document.getElementById('nextstep');
  button.addEventListener('click', (e) => {
    const loginform = document.querySelector(".login-elements");
    loginform.classList.add("scrolled");
  });
};

export {initNextStep};


