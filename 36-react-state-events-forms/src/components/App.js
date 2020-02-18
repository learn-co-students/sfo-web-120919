import React, { Component } from "react";
import RecipeList from './RecipeList'

class App extends Component {
  constructor() {
    super()

    this.state = {
      recipes: ["Flan", "Tacos", "Pizza"],
      toggle: true
    }
  }

  toggleTrueState = () => {
    // this.setState(prevState => {
    //   return {
    //     toggle: !prevState.toggle
    //   }
    // })
    // this.setState(prevState => ({toggle: !prevState.toggle}))
    this.setState({toggle: !this.state.toggle})
  }
  
  render() {
    // const recipes = ["Flan", "Tacos", "Pizza"]

    return (
      <div>
        <h1>Recipe List</h1>
        <button onClick={this.toggleTrueState}>{this.state.toggle ? "ON" : "OFF"}</button>
        <RecipeList recipes={this.state.recipes} />
      </div>
    );
  }
}

export default App;
