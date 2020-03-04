export const submitRating = form => {
  // get the values of the ratings
  const overallScore = document.querySelector('.overall-score').dataset.setValue;
  const consciousScore = document.querySelector('.conscious-score').dataset.setValue;
  const pickupTrashScore = document.querySelector('.pickup-trash-score').dataset.setValue;
  console.log(overallScore, consciousScore, pickupTrashScore);

  // put values in hidden inputs
  const overallScoreInput = document.querySelector('#self_rating_overall_score');
  const consciousScoreInput = document.querySelector('#self_rating_conscious_score');
  const pickupTrashScoreInput = document.querySelector('#self_rating_pickup_trash_score');

  overallScoreInput.value = overallScore
  consciousScoreInput.value = consciousScore
  pickupTrashScoreInput.value = pickupTrashScore

  form.submit();
}
