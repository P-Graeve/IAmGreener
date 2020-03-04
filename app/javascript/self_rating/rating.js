import { submitRating } from './submitRating';

const findLeavesInContainer = (className, num) => {
  const elems = [];
  for (let i = 0; i < num; i++) {
    const id = `#${className}-${i + 1}`;

    elems.push(document.querySelector(id));
  }
  return elems;
}

const addGreen = elems => {
  elems.forEach(elem => {
    elem.classList.add('green');
  });
}

const clearGreen = elems => {
  elems.forEach(elem => {
    elem.classList.remove('green');
  });
}

const hoverOut = e => {
  const container = e.currentTarget.parentElement
  const containerClass = container.classList[1];
  // clear everything inside of this container
  const elems = container.querySelectorAll('.leaf');
  clearGreen(elems);

  if (container.dataset.isSet === 'true') {
    // we're not gonna clear everything
    const val = parseInt(container.dataset.setValue);
    addGreen(findLeavesInContainer(containerClass, val));
  }
}

const clickIcon = e => {
  const container = e.currentTarget.parentElement;
  const val = parseInt(e.currentTarget.dataset.value);
  // check if the data is already set
  // update the setValue
  // set it
  container.dataset.isSet = 'true'
  // set the set value to val
  container.dataset.setValue = val;
  // set the icons that are clicked green
  const containerClass = container.classList[1];
  // remove green from all of the elements
  clearGreen(container.querySelectorAll('.leaf'));
  // find all elements within container with id less than or equal to val
  const elems = findLeavesInContainer(containerClass, val);
  addGreen(elems);
}

const hoverIcon = e => {
  const containerClass = e.currentTarget.parentElement.classList[1];
  const val = parseInt(e.currentTarget.dataset.value);
  // select all icons before this one
  addGreen(findLeavesInContainer(containerClass, val));
}

export const rateYourselfHover = () => {
  const form = document.querySelector("#new_self_rating");
  form.addEventListener("submit", (e) => {
    e.preventDefault();
    submitRating(form);
  });

  const icons = document.querySelectorAll(".rating-container .leaf");
  console.log(icons);
  icons.forEach(icon => {
    icon.addEventListener('mouseover', hoverIcon);
    icon.addEventListener('mouseout', hoverOut);
    icon.addEventListener("click", clickIcon);
  });
}

// hold green leaves when clicked on leaf:
// in the click event, when you click on one icon, add the class of green to all the icons that have the value of the clicked one or less

