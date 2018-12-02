import React from 'react'
import { NavLink } from 'react-router-dom'
import { Icon, Avatar } from 'antd'

import './Header.sass'
import belasis_blue from '../../../../static/images/belasis_blue.png'

class Header extends React.Component
  render: ->
    <header className="app-header">
      <div className="app-wrapper app-header-menu">

        <div className="app-header-logo">
          <img src={belasis_blue} />
        </div>

        <ul className="app-header-list">
          <li>
            <NavLink to="/">
              <Icon type="dashboard" /> Painel
            </NavLink>
          </li>
          <li>
            <NavLink to="/bubblegum">
              <Icon type="shopping-cart" /> Vendas
            </NavLink>
          </li>
          <li>
            <NavLink to="/shoelaces">
              <Icon type="form" /> Cadastros
            </NavLink>
          </li>
          <li>
            <NavLink to="/sales">
              <Icon type="notification" /> Marketing
            </NavLink>
          </li>
        </ul>

        <ul className="app-header-right">
          <li>
            <NavLink to="/">
              <Icon type="question-circle" />
            </NavLink>
          </li>
          <li>
            <NavLink to="/">
              <Icon type="bell" />
            </NavLink>
          </li>
          <li className="app-header-user">
            <NavLink to="/">
              <Avatar size={24} src="https://gw.alipayobjects.com/zos/rmsportal/BiazfanxmamNRoxxVxka.png" />
              <span>
                Anthony
              </span>
            </NavLink>
          </li>
        </ul>
      </div>
    </header>

export default Header
