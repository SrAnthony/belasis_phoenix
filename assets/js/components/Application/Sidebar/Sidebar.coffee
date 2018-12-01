import React from 'react'
import { NavLink } from 'react-router-dom'

class Sidebar extends React.Component
  render: ->
    <ul>
      <li>
        <NavLink to="/">Home</NavLink>
      </li>
      <li>
        <NavLink to="/bubblegum">Bubblegum</NavLink>
      </li>
      <li>
        <NavLink to="/shoelaces">Shoelaces</NavLink>
      </li>
      <li>
        <NavLink to="/sales">Sales</NavLink>
      </li>
    </ul>

export default Sidebar
