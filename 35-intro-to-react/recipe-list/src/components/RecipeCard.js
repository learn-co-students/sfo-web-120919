import React from 'react'

function RecipeCard(props) {
	console.log(props)

	return (
		<div>{props.recipe}</div>
	)
}

export default RecipeCard