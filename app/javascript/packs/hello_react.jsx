// Run this example by adding <%= javascript_pack_tag 'hello_react' %> to the head of your layout file,
// like app/views/layouts/application.html.erb. All it does is render <div>Hello React</div> at the bottom
// of the page.

import React from 'react'
import ReactDOM from 'react-dom'
import PropTypes from 'prop-types'

const Hello = props => (
  <div style={mainDiv}>
    <h1> WORLD </h1>
    <div style={divStyle}>
      Hello {props.name}!
    </div>
  </div>
)

Hello.defaultProps = {
  name: 'Tyler'
}

Hello.propTypes = {
  name: PropTypes.string
}

const mainDiv = {
  display: 'flex',
  flexDirection: 'column',
  alignItems: 'center'
}
const divStyle = {
  display: 'flex',
  padding: '20px',
  color: 'blue',
};


document.addEventListener('DOMContentLoaded', () => {
  ReactDOM.render(
    <Hello/>,
    document.body.appendChild(document.createElement('div')),
  )
})

