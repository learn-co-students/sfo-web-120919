document.addEventListener("DOMContentLoaded", function() {
  fetchPokemon();
});

function fetchPokemon() {
  fetch("http://localhost:3000/pokemon")
    .then(resp => resp.json())
    .then(pokePeople => renderPokePeople(pokePeople));
}

function renderPokePeople(pokePeople) {
  const pokemonContainer = document.querySelector(".pokemon-container");

  pokePeople.forEach(pokemon => {
    pokemonContainer.innerHTML += renderSinglePokemon(pokemon);
  });
}

function renderSinglePokemon(pokemon) {
  // Create a pokemon card with divs/buttons etc, the id is how we figure out which pokemon has been clicked
  return `
        <div class="pokemon-card" id="${pokemon.id}">
          <div class="pokemon-frame">
            <h1 class="center-text">${pokemon.name}</h1>
            <div class="pokemon-image">
              <img data-id="${pokemon.id}" class="toggle-sprite" src="${pokemon.sprites.front}">
            </div>
          </div>
        </div>`;
}

// Function Declarations vs Function Expressions
// function myFunctionDeclaration(arg) {
//   return arg;
// }

// const myFunctionExpression = (arg, anotherArg) => {
//   return arg;
// };

// const myFunctionExpressionTwo = arg => arg;

// myFunctionDeclaration("hello");
// myFunctionExpression("hello", "hi");
// myFunctionExpressionTwo("hello");

// // Review
// document.addEventListener("DOMContentLoaded", function() {
//   listenForPokemonClick();
// });

// function listenForPokemonClick() {
//   // const pokemonLogo = document.querySelector("#pokemon-logo");
//   const pokemonLogo = document.querySelector("img");

//   pokemonLogo.addEventListener("click", function() {
//     addPokemonToDOM();
//   });
// }

// function addPokemonToDOM() {
//   // const pokemonContainer = document.getElementsByClassName(
//   //   "pokemon-container"
//   // )[0];
//   const pokemonContainer = document.querySelector(".pokemon-container");
//   const messagePTag = document.createElement("p");
//   messagePTag.textContent = "This is not a mirror";

//   pokemonContainer.append(messagePTag);
// }
