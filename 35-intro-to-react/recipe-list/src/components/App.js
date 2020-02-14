import React from 'react';
import RecipeList from './RecipeList'

// JSX
function App() {
	const myTitle = "Recipe List"
	const myRecipes = ["Apples", "Salami Pizza", "Chocolate Cake", "Pasta"]

  return (
		<div>
			<h1>{myTitle}</h1>
			<RecipeList recipes={myRecipes} />
		</div>
	);
}

// createElement
// function App() {
//   return React.createElement('h1', {}, 'Recipe List');
// }

export default App;
