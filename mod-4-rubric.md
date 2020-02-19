# Code Challenge 4 Rubric

## Minimum Bar

The student is able to:

- Render presentational components in a container component
- Handle events with callback functions passed from parent to child components
- Change state in parent components based on events in child components
- Conditionally render components

## General Review

- State concepts based on:
  - https://learn.co/tracks/web-development-immersive-2-0-module-four/props-versus-state/state-and-events/initial-state
  - https://learn.co/tracks/web-development-immersive-2-0-module-four/props-versus-state/state-and-events/updating-state

- Props concepts based on:
  - https://learn.co/tracks/web-development-immersive-2-0-module-four/props-versus-state/props/props
  - https://learn.co/tracks/web-development-immersive-2-0-module-four/props-versus-state/props/proptypes
  - https://learn.co/tracks/web-development-immersive-2-0-module-four/presentational-versus-container-components/dumb-components/props-props-props

- Code Structure and Efficiency based on:
  - https://learn.co/tracks/web-development-immersive-2-0-module-four/presentational-versus-container-components/smart-components/container-components
  - https://learn.co/tracks/web-development-immersive-2-0-module-four/presentational-versus-container-components/dumb-components/presentation-components
  - https://learn.co/tracks/web-development-immersive-2-0-module-four/component-lifecycle/mounting/component-mounting-and-unmounting
  - https://learn.co/tracks/web-development-immersive-2-0-module-four/component-lifecycle/mounting/component-lifecycle
  - https://learn.co/tracks/web-development-immersive-2-0-module-four/component-lifecycle/rendering-and-updating/rendering

- Rendering concepts based on:
  - https://github.com/learn-co-curriculum/M4-DQ3-Conditional-Rendering
  - https://learn.co/tracks/web-development-immersive-2-0-module-four/react/rendering/jsx-lab

## Scoring Chart

### Props & State

#### Score: 1

State is not being set or updated correctly. Props are not being passed down correctly or key props are missing.

#### Score: 2

State is set correctly, but is in the wrong component. State might be nested oddly. Unnecessarily set filtered transactions in state. Props are being passed unnecessarily to components. Functions are not defined in the component that they are most closely tied to.

#### Score: 3

State is set correctly and held in logical places. Props are being passed correctly. Functions used to edit state in container components are passed down and executed in presentational components.

#### Score: 4, 5

State is set correctly, storing an array of objects as well as the object chosen for the show component. (Score as 5 if the feature contains something worth an extra point.) Props are being passed correctly. May destructure props in presentational components or uses some other technique to simplify or cleanup code.

### Code Structure/Efficiency

#### Score: 1

The starter components have been restructured in ways that don't make sense. Additional components have been added which serve no purpose. API call does not successfully populate state. There is no reference to componentDidMount.

#### Score: 2

Functional components have been instantiated as classes. State set in componentWillMount or other lifecycle methods are present unnecessarily.

#### Score: 3

Components are structured in a logical way. Class components only used when needed (i.e. in container components), functional components used for everything else. State is set in componentDidMount.

#### Score: 4

Components are structured in a logical way. Logic is confined to class components, marking a clear delineation between smart/dumb components. Used object destructuring successfully.

#### Score: 5

Same as 4, except the appropriate container components are made into functional components.

___

### Rendering

#### Score: 1

Unable to render information about objects into presentational components and/or unable to render presentational components into container component.

#### Score: 2

Renders information into presentational components and renders presentational components into container component. Not able to render information in container component and not able to achieve final deliverable (i.e. refactor to display a certain presentation component when another presentational component is clicked). May have created own components instead of using the components provided.

#### Score: 3

Renders all information and is able to pass props, display them with a component, and change state. Attempted but didn't quite succeed in refactoring.

#### Score: 4

Achieved all deliverables (i.e. was able to refactor to display components conditionally).

#### Score: 5

Achieved all deliverables + added extra features
