export const initBadgeCollect = () => {
  const container = document.querySelector('.collect-badge-window-container');
  if (container) {
    // check if dataset is true
    if (container.dataset.appear === 'true') {
      // add class of 'collect-badge-appear' after a short timeout
      setTimeout(() => {
        container.classList.add('collect-badge-appear');
      }, 100)
    }
  }
}