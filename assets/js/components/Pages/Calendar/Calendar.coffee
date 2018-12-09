import React from 'react'
import BigCalendar from 'react-big-calendar'
import moment from 'moment'
import LoadingBlock from '../../Utils/LoadingBlock/LoadingBlock.coffee'

import 'react-big-calendar/lib/css/react-big-calendar.css'

class Calendar extends React.Component
  constructor: (props) ->
    super(props)

    this.state = {
      events: [],
      resources: [
        { resourceId: 1, resourceTitle: 'Anthony' },
        { resourceId: 2, resourceTitle: 'Sabrina' },
        { resourceId: 3, resourceTitle: 'Marcelo' },
        { resourceId: 4, resourceTitle: 'Jéssica' },
      ],
      loading: true,
    }

  componentDidMount: ->
    this.setEvents()

  setEvents: () =>
    this.setState({
      events: [
        {
          id: 0,
          title: 'Board meeting',
          start: new Date(2018, 0, 29, 9, 0, 0),
          end: new Date(2018, 0, 29, 13, 0, 0),
          resourceId: 1,
        },
        {
          id: 1,
          title: 'MS training',
          allDay: true,
          start: new Date(2018, 0, 29, 14, 0, 0),
          end: new Date(2018, 0, 29, 16, 30, 0),
          resourceId: 2,
        },
        {
          id: 2,
          title: 'Team lead meeting',
          start: new Date(2018, 0, 29, 8, 30, 0),
          end: new Date(2018, 0, 29, 12, 30, 0),
          resourceId: 3,
        },
        {
          id: 11,
          title: 'Birthday Party',
          start: new Date(2018, 0, 30, 7, 0, 0),
          end: new Date(2018, 0, 30, 10, 30, 0),
          resourceId: 4,
        },
      ],
      loading: false
    })

  render: ->
    localizer = BigCalendar.momentLocalizer(moment)
    { loading, events, resources } = this.state

    <section className="app-wrapper app-calendar" style={{paddingBottom: '20px'}}>
      <LoadingBlock loading={loading}>
        <BigCalendar
          events={events}
          localizer={localizer}
          defaultView={BigCalendar.Views.DAY}
          views={['day', 'work_week']}
          step={60}
          defaultDate={new Date(2018, 0, 29)}
          resources={resources}
          resourceIdAccessor="resourceId"
          resourceTitleAccessor="resourceTitle"
        />
      </LoadingBlock>

    </section>

export default Calendar
