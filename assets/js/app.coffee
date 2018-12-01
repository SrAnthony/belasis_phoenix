# === Phoenix helpers
import 'phoenix_html'

import React from 'react'
import ReactDOM from 'react-dom'

import Application from './components/Application/Application.coffee'

ReactDOM.render <Application />, document.getElementById('application')
