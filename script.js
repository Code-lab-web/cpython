
const hamburger = document.querySelector('.hamburger');
const navLinks = document.querySelector('.nav-links');
const darkModeToggle = document.querySelector('.dark-mode-toggle');
const body = document.querySelector('body');
const contactForm = document.querySelector('#contact-form');

hamburger.addEventListener('click', () => {
  hamburger.classList.toggle('is-active');
  navLinks.classList.toggle('active');
});

darkModeToggle.addEventListener('click', () => {
  body.classList.toggle('dark-mode');
});

contactForm.addEventListener('submit', (e) => {
  const password = document.querySelector('#password');
  if (password.value.length < 8) {
    e.preventDefault();
    alert('Password must be at least 8 characters long.');
  }
});
