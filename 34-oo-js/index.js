function ask(question) {
  console.log(this.teacher, question)
};

const lecture1 = {
 teacher: "Amelie",
 ask: ask
};

const lecture2 = {
 teacher: "Levi",
 ask: ask
};

ask.call(lecture1, "What is explicit binding?");
// ask.apply(lecture2, ["What is explicit binding?"]);

// lecture1.ask("What is implicit binding?");


































// const rectangleList = document.querySelector("#rectangle-list");
// const newRectangleForm = document.querySelector("#create-rectangle-form");

// newRectangleForm.addEventListener("submit", e => {
//   e.preventDefault();
//   const height = e.target.width.value;
//   const width = e.target.height.value;
//   let rectangle = new Rectangle(width, height);

//   rectangleList.append(rectangle.render());
// });
