const initUpdateNavbarOnScroll = (limit = window.innerHeight) => {
  const navbar = document.querySelector('.navbar-wagon');
  // const navbar = document.querySelector('.navbar-wagon');
  // if (navbar) {
  //   window.addEventListener('scroll', () => {
  //     if (window.scrollY >= window.innerHeight) {
  //       navbar.classList.add('navbar-wagon-black');
  //     } else {
  //       navbar.classList.remove('navbar-wagon-black');
  //     }
  //   });
  // }
  if (navbar) {
    window.addEventListener('scroll', () => {
      if (window.scrollY >= limit) {
        navbar.classList.add('navbar-wagon-black');
      } else {
        navbar.classList.remove('navbar-wagon-black');
      }
    });
  }
};

export { initUpdateNavbarOnScroll };
