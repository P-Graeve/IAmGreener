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
  // add listener to the yes button on the form
  document.querySelector('#yes-btn').addEventListener('click', nextQuestion);
  const questionSections = document.querySelectorAll('.car-question');
  if (questionSections) {
    questionSections.forEach(section => {

    });
  }
}