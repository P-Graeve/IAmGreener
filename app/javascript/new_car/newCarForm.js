const inputChange = () => {
  // check if the model year is already open or not
  const yearSelectWrapper = document.querySelector('.car_year');
  if (yearSelectWrapper.classList.contains('none')) {
    // remove none class
    yearSelectWrapper.classList.remove('none');
  } else {
    // it doesnt have none class, which means we can send the fetchbrands so we can get a model
    const brand = document.querySelector('#brand-select').value;
    const year = yearSelectWrapper.querySelector('select').value;
    if (brand && year) {
      // submit the form with Rails fire!
      Rails.fire(document.querySelector('#new_car'), 'submit');
    }
  }
}

const addListeners = () => {
  // add listener to the yes button on the form
  const btn =   document.querySelector('#yes-btn');
  if (btn) {
     btn.addEventListener('click', nextQuestion);
    // add listener to the form of the car brand
    document.querySelectorAll('.car-info-input').forEach(input => {
      input.addEventListener('change', inputChange);
    });
  }
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