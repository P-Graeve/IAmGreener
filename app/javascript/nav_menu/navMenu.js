const toggleBlur = () => {
  document.querySelectorAll('header, main, footer').forEach(elem => {
    elem.classList.toggle('blur');
  });
}

const openMenu = () => {
  // blur the background
  toggleBlur();
  // show the menu
  document.querySelector('#nav-menu').classList.add('ui-open');
}

const closeMenu = () => {
  // unblur the background
  toggleBlur();
  // hide the menu
  document.querySelector('#nav-menu').classList.remove('ui-open');
}

export const initHamburgerIcon = () => {
  const openBtn = document.querySelector("#open-menu-btn");
  if (openBtn) {
    openBtn.addEventListener('click', openMenu);
  }
  const closeBtn = document.querySelector('#close-menu-btn');
  if (closeBtn) {
    closeBtn.addEventListener('click', closeMenu);
  }
}