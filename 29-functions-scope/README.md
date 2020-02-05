Key questions

- What are the differences between global, functional, and block scope
- What are the similarities and differences between var, let, and const
- What is the difference between executing and referencing a function?
- What is a callback, and what are callbacks used for? How can I use callbacks in my code?
- How do iterators work in JS? How are callbacks used with iterators?
- What is a closure? What does a closure have to do with callbacks and scope?

# Scope

- Global scope
- Function scope and var
  - reassigning
- Block scope
  - let
    - re-declaring
  - const
    - re-assigning

VISUAL???? reference

# Callbacks

- Function Composition
  - Using the return values of functions as arguments to other functions
    next(thank("u"))
  - Passing a function as a callback to another function
    thank("u", next)

## break

- First class functions
- Callbacks
  - doing something more than once
  - using the return value of the callback
  - doing something later
  - doing something on the reg bay
- Anonymous functions
- Iterators — using (activity)
- Iterators — build map

# Closures

- IIFE's

---

## Functions: Declarations, Expressions, and More 🌈

> 🤔 What is a function?
> 🤓 A function is a block of code that can be called by name.

- Three things you can do with variables:
  - Declare: create a variable and establish its type
  - Assign: establish the value of a variable
  - Initialize: create a variable and assign its value
- Declaration in programming: introducing a name (sometimes with meaning)

### Function Declarations 📜

```javascript
function isEven(num) {
  if (num % 2 === 0) {
    return true;
  } else {
    return false;
  }
}
```

- Function declarations == definitions == statements
- Reminder: Statements and Expressions
  - Statements are anything that can make up a line of code.
  - Statements do something.
  - Expressions lines of code that can be reduced to some value.
  - Expressions produce values.
  - The line can be blurry.
- Function declaration = `function` + name + list of params + statements
- Function declarations are _hoisted_ to the top of the enclosing function or global scope.

```slack
> Which of the following code snippets feature a correct JavaScript initialization?
:apple: `num = 6;`
:banana: `let num = 6;`
:tangerine: `let num;`
:kiwifruit: `num;`
```

### Quick Note on Hoisting 🏗

- Hoisting: a _way of thinking_ about how JavaScript is run (not reality)
- Reality: variable and function declarations are stored in memory during compile phase (before execution phase)
- Hoisting: (some) variable and function declarations are "moved" to the top of your code
  - **Only declarations are hoisted**_, not initializations..._

```slack
> Which code snippet will return a value that's not undefined?
:mountain:
```

console.log(num);
var num;
num = 6;

```
:beach_with_umbrella:
```

num = 6;
console.log(num);
var num;

```

```

### Function Expressions 📺

```javascript
const isEven = function(num) {
  if (num % 2 === 0) {
    return true;
  } else {
    return false;
  }
};
```

- Assigning a variable the value of a function
- All function expressions are anonymous (they have no name)
- Function expressions can be immediately executed (useful for callback functions)
- Function expressions can be passed as arguments to other functions

### Callback Function ☎️

```javascript
document.addEventListener("DOMContentLoaded", function() {
  const commentForm = document.getElementById("comment-form");
  commentForm.addEventListener("submit", function(event) {
    console.log(event);
  });
});
```

- A way to make sure certain code doesn't execute until other code is finished
- Functions that are passed to other functions as arguments

### Arrow Function (Expression)s ➡️

```javascript
document.addEventListener("DOMContentLoaded", () => {
  const commentForm = document.getElementById("comment-form");
  commentForm.addEventListener("submit", event => {
    console.log(event);
  });
});
```

- New with ES6 (2015)!
- Shorter!
- `this` (think `self`) has the value of the enclosing lexical scope
- Other details to be covered later!

Go from:

```javascript
elements.map(function(element) {
  return element.length;
});
```

to:

```javascript
elements.map(element => element.length);
```

- Concise body with implicit return
- Block body with explicit return

### Functions On the Go 🏃🏿‍♂️

- [x] Function declarations are hoisted to the top of their scope
- [x] Function expressions are anonymous and can be immediately executed, but they are not hoisted
- [x] Callback functions are functions passed as arguments to other functions that to be executed with/after the higher-order functions' code
- [x] Arrow functions are a sugary syntax for function expressions that have fewer features and a `this` value of the enclosing lexical scope
