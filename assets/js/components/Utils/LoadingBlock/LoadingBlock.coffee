import React from 'react'
import Loading from '../Loading/Loading.coffee'

class LoadingBlock extends React.Component
  render: ->
    <Loading loading={this.props.loading}>
      <div className="app-block">

        {this.props.children}

      </div>
    </Loading>

export default LoadingBlock
