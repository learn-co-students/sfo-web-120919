import React from 'react'
import RecipeCard from './RecipeCard'

function RecipeList(props) {
	const myRecipes = ["Apples", "Salami Pizza", "Chocolate Cake", "Pasta"]

	return (
		<div>
			{myRecipes.map(recipeName => <RecipeCard recipe={recipeName} />)}
		</div>
	)
}

export default RecipeList