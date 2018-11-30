import css from '../css/app.css'

import 'phoenix_html'

import React from 'react'
import ReactDOM from 'react-dom'

import Sidebar from './components/Sidebar/Index.coffee'

ReactDOM.render <Sidebar />, document.querySelector('main.application')
