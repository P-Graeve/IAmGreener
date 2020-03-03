const fetchBrand = () => {
  // check if the model year is already open or not
  const yearSelect = document.querySelector('#year-select');
  if (yearSelect.classList.contains('none')) {
    // remove none class
    yearSelect.classList.remove('none');
  } else {
    // it doesnt have none class, which means we can send the fetchbrands so we can get a model
    const brand = document.querySelector('#brand-select');
    const year = yearSelect.value;
  }
}

const addListeners = () => {
  // add listener to the yes button on the form
  document.querySelector('#yes-btn').addEventListener('click', nextQuestion);
  // add listener to the form of the car brand
  document.querySelectorAll('.car-info-input').forEach(input => {
    input.addEventListener('change', fetchBrand);
  });
}

const nextQuestion = () => {
  // get the current question order
  const order = parseInt(document.querySelector('.selected').dataset.order);
  // get the element with the current order in the id and move it to the left
  const thisElem = document.querySelector(`#question-${order}`);
  const nextElem = document.querySelector(`#question-${order + 1}`);
  console.log(thisElem, nextElem);
  thisElem.classList.remove('selected');
  thisElem.classList.add('positioned-left');
  setTimeout(() => {
    nextElem.classList.add('selected');
    nextElem.classList.remove('positioned-right');
  }, 100)
}

export const initNewCarForm = () => {
  addListeners();

  const questionSections = document.querySelectorAll('.car-question');
  if (questionSections) {
    questionSections.forEach(section => {

    });
  }
}