const navToggle = document.getElementById('navToggle');
const siteNav = document.getElementById('siteNav');

navToggle.addEventListener('click', () => {
  siteNav.classList.toggle('open');
  const expanded = siteNav.classList.contains('open');
  navToggle.setAttribute('aria-expanded', expanded);
});
