import React from 'react'
import { NavLink } from 'react-router-dom'
import { Layout, Icon, Avatar, Badge, Menu, Dropdown } from 'antd'

import './Header.sass'
import belasis_blue from '../../../../static/images/belasis_blue.png'

sales =
  links: ['/sales', '/packages', '/invoices']
  menu:
    <Menu>
      <Menu.Item key="0">
        <NavLink to="/sales">Comandas</NavLink>
      </Menu.Item>
      <Menu.Item key="1">
        <NavLink to="/packages">Pacotes</NavLink>
      </Menu.Item>
      <Menu.Divider />
      <Menu.Item key="2">
        <NavLink to="/invoices">Notas Fiscais</NavLink>
      </Menu.Item>
    </Menu>

registration =
  links: ['/services', '/products', '/employees', '/customers']
  menu:
    <Menu>
      <Menu.Item key="0">
        <NavLink to="/customers">Clientes</NavLink>
      </Menu.Item>
      <Menu.Item key="1">
        <NavLink to="/services">Serviços</NavLink>
      </Menu.Item>
      <Menu.Item key="2">
        <NavLink to="/products">Produtos</NavLink>
      </Menu.Item>
      <Menu.Item key="3">
        <NavLink to="/employees">Profissionais</NavLink>
      </Menu.Item>
    </Menu>

marketing =
  links: ['/campaigns', '/website', '/whatsapp', '/online-schedule']
  menu:
    <Menu>
      <Menu.Item key="0">
        <NavLink to="/campaigns">Campanhas</NavLink>
      </Menu.Item>
      <Menu.Item key="1">
        <NavLink to="/website">Website</NavLink>
      </Menu.Item>
      <Menu.Item key="2">
        <NavLink to="/whatsapp">Whatsapp</NavLink>
      </Menu.Item>
      <Menu.Item key="3">
        <NavLink to="/online-schedule">Agendamento Online</NavLink>
      </Menu.Item>
    </Menu>

class Header extends React.Component
  menuActive: (paths) ->
    'active' if paths.includes(location.pathname)

  render: ->
    <Layout.Header className="app-header">

      <div className="app-wrapper app-header-wrapper">

        <div className="app-header-logo">
          <img src={belasis_blue} />
        </div>

        <Menu className="app-header-menu" mode="horizontal">
          <Menu.Item>
            <NavLink to="/" exact>
              <Icon type="dashboard" /> Painel
            </NavLink>
          </Menu.Item>
          <Menu.Item>
            <NavLink to="/calendar">
              <Icon type="calendar" /> Agenda
            </NavLink>
          </Menu.Item>
          <Menu.Item>
            <Dropdown overlay={sales.menu} placement="bottomCenter">
              <a className={this.menuActive(sales.links)}>
                <Icon type="shopping-cart" /> Vendas <Icon type="down" />
              </a>
            </Dropdown>
          </Menu.Item>
          <Menu.Item>
            <Dropdown overlay={registration.menu} placement="bottomCenter">
              <a className={this.menuActive(registration.links)}>
                <Icon type="form" /> Cadastros <Icon type="down" />
              </a>
            </Dropdown>
          </Menu.Item>
          <Menu.Item>
            <Dropdown overlay={marketing.menu} placement="bottomCenter">
              <a className={this.menuActive(marketing.links)}>
                <Icon type="notification" /> Marketing <Icon type="down" />
              </a>
            </Dropdown>
          </Menu.Item>
        </Menu>

        <ul className="app-header-right">
          <li>
            <NavLink to="/help">
              <Icon type="question-circle" />
            </NavLink>
          </li>
          <li>
            <a>
              <Badge count={5}>
                <Icon type="bell" />
              </Badge>
            </a>
          </li>
          <li className="app-header-user">
            <a>
              <Avatar size={24} src="https://gw.alipayobjects.com/zos/rmsportal/BiazfanxmamNRoxxVxka.png" />
              <span>
                Anthony
              </span>
            </a>
          </li>
        </ul>
      </div>
    </Layout.Header>

export default Header
