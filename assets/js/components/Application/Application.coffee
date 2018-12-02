import React from 'react'
import { BrowserRouter as Router, Route, Switch } from 'react-router-dom'

import Header from './Header/Header.coffee'
import Routes from './Routes.coffee'

# === Ant Design
import 'antd/dist/antd.css'

class Application extends React.Component
  render: ->
    <Router>
      <div className="application">

        <Header />

        <main className="app-main">
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
        </main>

      </div>
    </Router>

export default Application
