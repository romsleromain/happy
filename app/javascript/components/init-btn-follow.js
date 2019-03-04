function follow() {
  const unfollow = document.querySelectorAll(".btn-unfollow-company");
  console.log(unfollow);

  unfollow.forEach(btn => {
    btn.addEventListener("mouseover", e => {
      e.target.innerHTML = "Unfollow"
    })
    btn.addEventListener("mouseleave", e => {
      e.target.innerHTML = "Followed"
    })
  })
}

export { follow }
