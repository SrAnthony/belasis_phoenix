import React from 'react'
import { Scrollbars } from 'react-custom-scrollbars'
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
    <Router>
      <Layout style={{ width: '100vw', height: '100vh' }}>

        <Header />

        <Layout.Content>
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
        </Layout.Content>

              </div>
            )} />
          </Layout.Content>

          <Footer />

        </Scrollbars>


      </Layout>
    </Router>

export default Application
