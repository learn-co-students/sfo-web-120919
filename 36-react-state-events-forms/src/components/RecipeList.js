import React from "react";
import { Recipe } from "./Recipe";

function RecipeList(props) {
  return (
    <div>
      <div>hello from recipe list</div>
      {props.recipes.map((recipe, index) => (
        <Recipe recipeName={recipe} key={index} />
      ))}
    </div>
  );
}

// class RecipeList extends React.Component {
// 	render() {
// 		return (
// <div>
// 	<div>hello from recipe list</div>
// 	{this.props.recipes.map((recipe, index) => <Recipe recipeName={recipe} key={index} />)}
// </div>
// 		)
// 	}
// }

export default RecipeList;
