import React from 'react'
import { Layout } from 'antd'

class Footer extends React.Component
  render: ->
    <Layout.Footer style={{textAlign: 'center'}}>
      <a href="https://www.belasis.com.br" target="_blank">Belasis</a> | Copyright © {(new Date).getFullYear()} - Todos os Direitos Reservados<br/>
      <small>- 1367 - v3.0.0 -</small>
    </Layout.Footer>

export default Footer
