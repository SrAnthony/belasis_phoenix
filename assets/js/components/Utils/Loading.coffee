import React from 'react'
import { Spin, Icon } from 'antd'

import './Loading.sass'

class Loading extends React.Component
  render: ->
    loading_icon = <Icon type="loading" style={{ fontSize: (this.props.font_size || 24) }} spin />

    <Spin
      spinning={this.props.loading}
      indicator={loading_icon}
    >
      { this.props.children }
    </Spin>

export default Loading
