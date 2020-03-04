export const rateYourselfHover = () => {
  const form = document.querySelector("#new_self_rating");
  form.addEventListener("submit", (e) => {
    e.preventDefault();
  });

  const icons = document.querySelectorAll(".rating-container i");
  console.log(icons);
  icons.forEach(icon => {
    icon.addEventListener("mousedown", (e) => {
      //query Selector leaves that are green
    })
  })
}

// hold green leaves when clicked on leaf:
// in the click event, when you click on one icon, add the class of green to all the icons that have the value of the clicked one or less

