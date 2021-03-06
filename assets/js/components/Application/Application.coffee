import React from 'react'
import { BrowserRouter as Router, Route, Switch } from 'react-router-dom'
import { TransitionGroup, CSSTransition } from 'react-transition-group'
import { Layout, Menu } from 'antd'

import Header from './Header/Header.coffee'
import Footer from './Footer/Footer.coffee'
import Routes from './Routes.coffee'

# === Ant Design
import 'antd/dist/antd.css'

class Application extends React.Component
  componentDidUpdate: ->
    console.log 'Application updated'

  render: ->
    { Content } = Layout

    <Router>
      <Layout>

        <Header />

        <Content>
          <Route render={({ location }) => (
            <main className="app-main">
              <TransitionGroup exit={false}>
                <CSSTransition key={location.key} classNames="fade" timeout={300}>
                  <Switch>
                    {Routes.map (route) =>
                      <Route key={route.path} {...route} />
                    }
                  </Switch>
                </CSSTransition>
              </TransitionGroup>
            </main>
          )} />
        </Content>

        <Footer />

      </Layout>
    </Router>

export default Application
