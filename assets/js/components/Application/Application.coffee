import React from 'react'
import { BrowserRouter as Router, Route, Switch } from 'react-router-dom'

import Sidebar from './Sidebar/Sidebar.coffee'
import Routes from './Routes.coffee'

class Application extends React.Component
  render: ->
    <Router>
      <div className="application-grid">

        <aside data-grid="sidebar">
          <Sidebar />
        </aside>

        <div data-grid="main">
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
        </div>

      </div>
    </Router>

export default Application
