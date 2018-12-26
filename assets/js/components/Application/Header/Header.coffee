import React from 'react'
import { Link } from 'react-router-dom'
import { Layout, Icon, Avatar, Badge, Menu, Dropdown } from 'antd'

import './Header.sass'
import belasis_blue from '../../../../static/images/belasis_blue.png'

class Header extends React.Component
  constructor: (props) ->
    super(props)
    this.state =
      current_menu: location.pathname

  handleMenuClick: (e) =>
    this.setState current_menu: e.key

  render: ->
    sales =
      <Menu selectedKeys={[this.state.current_menu]} onClick={this.handleMenuClick}>
        <Menu.Item key="/sales">
          <Link to="/sales">Comandas</Link>
        </Menu.Item>
        <Menu.Item key="/packages">
          <Link to="/packages">Pacotes</Link>
        </Menu.Item>
        <Menu.Divider />
        <Menu.Item key="/invoices">
          <Link to="/invoices">Notas Fiscais</Link>
        </Menu.Item>
      </Menu>

    registration =
      <Menu selectedKeys={[this.state.current_menu]} onClick={this.handleMenuClick}>
        <Menu.Item key="/customers">
          <Link to="/customers">Clientes</Link>
        </Menu.Item>
        <Menu.Item key="/services">
          <Link to="/services">Serviços</Link>
        </Menu.Item>
        <Menu.Item key="/products">
          <Link to="/products">Produtos</Link>
        </Menu.Item>
        <Menu.Item key="/employees">
          <Link to="/employees">Profissionais</Link>
        </Menu.Item>
      </Menu>

    marketing =
      <Menu selectedKeys={[this.state.current_menu]} onClick={this.handleMenuClick}>
        <Menu.Item key="/campaigns">
          <Link to="/campaigns">Campanhas</Link>
        </Menu.Item>
        <Menu.Item key="/website">
          <Link to="/website">Website</Link>
        </Menu.Item>
        <Menu.Item key="/whatsapp">
          <Link to="/whatsapp">Whatsapp</Link>
        </Menu.Item>
        <Menu.Item key="/online-schedule">
          <Link to="/online-schedule">Agendamento Online</Link>
        </Menu.Item>
      </Menu>

    <Layout.Header className="app-header">

      <div className="app-header-wrapper">

        <div className="app-header-logo">
          <img src={belasis_blue} />
        </div>

        <Menu
          className="app-header-menu" mode="horizontal"
          selectedKeys={[this.state.current_menu]}
          onClick={this.handleMenuClick}
        >
          <Menu.Item key="/">
            <Link to="/">
              <Icon type="dashboard" /> Painel
            </Link>
          </Menu.Item>
          <Menu.Item key="/calendar">
            <Link to="/calendar">
              <Icon type="calendar" /> Agenda
            </Link>
          </Menu.Item>
          <Menu.Item key="sales">
            <Dropdown overlay={sales} placement="bottomCenter">
              <a>
                <Icon type="shopping-cart" /> Vendas <Icon type="down" />
              </a>
            </Dropdown>
          </Menu.Item>
          <Menu.Item key="registration">
            <Dropdown overlay={registration} placement="bottomCenter">
              <a>
                <Icon type="form" /> Cadastros <Icon type="down" />
              </a>
            </Dropdown>
          </Menu.Item>
          <Menu.Item key="marketing">
            <Dropdown overlay={marketing} placement="bottomCenter">
              <a>
                <Icon type="notification" /> Marketing <Icon type="down" />
              </a>
            </Dropdown>
          </Menu.Item>
        </Menu>

        <ul className="app-header-right">
          <li>
            <Link to="/help">
              <Icon type="question-circle" />
            </Link>
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
