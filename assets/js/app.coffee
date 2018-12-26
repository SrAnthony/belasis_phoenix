# === Phoenix helpers
import 'phoenix_html'
import css from '../css/app.sass'

import React from 'react'
import ReactDOM from 'react-dom'

import Application from './components/Application/Application.coffee'
import { LocaleProvider } from 'antd'
import pt_BR from 'antd/lib/locale-provider/pt_BR'
import { Scrollbars } from 'react-custom-scrollbars'

App =
  <LocaleProvider locale={pt_BR}>
    <Scrollbars style={{ width: '100vw', height: '100vh' }}>
      <Application />
    </Scrollbars>
  </LocaleProvider>

ReactDOM.render App, document.getElementById('application')
