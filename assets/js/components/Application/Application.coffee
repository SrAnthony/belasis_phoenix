import React from 'react'
import { BrowserRouter as Router, Route, Switch } from 'react-router-dom'
import { TransitionGroup, CSSTransition } from 'react-transition-group'

import Header from './Header/Header.coffee'
import Routes from './Routes.coffee'

# === Ant Design
import 'antd/dist/antd.css'

class Application extends React.Component
  render: ->
    <Router>
      <Route render={({ location }) => (
        <div className="application">

          <Header />

          <main className="app-main">
            <TransitionGroup exit={false}>
              <CSSTransition key={location.key} classNames="fade" timeout={300}>
                <Switch>
                  {Routes.map((route) =>
                    <Route
                      key={route.path}
                      path={route.path}
                      exact={route.exact}
                      component={route.component}
                    />
                  )}
                </Switch>
              </CSSTransition>
            </TransitionGroup>
          </main>

        </div>
      )} />
    </Router>

export default Application
