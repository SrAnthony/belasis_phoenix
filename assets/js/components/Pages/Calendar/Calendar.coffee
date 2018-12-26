import React from 'react'
import BigCalendar from 'react-big-calendar'
import moment from 'moment'
import LoadingBlock from '../../Utils/LoadingBlock/LoadingBlock.coffee'
import CalendarDrawer from './CalendarDrawer.coffee'

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
      loading: false,
      new_calendar_drawer: false,
      new_event: {}
    }

  showCalendarDrawer: () =>
    this.setState new_calendar_drawer: true

  onCloseCalendarDrawer: () =>
    this.setState new_calendar_drawer: false

  handleSelect: ({ start, end, resourceId }) =>
    this.setState new_event: { start, end, resourceId }, this.showCalendarDrawer
    # title = window.prompt('New Event name')
    # if (title)
    #   this.setState
    #     events: [
    #       ...this.state.events,
    #       { start, end, title, resourceId }
    #     ]

  addEvent: (event) =>
    this.setState events: [ ...this.state.events, event ]

  render: ->
    localizer = BigCalendar.momentLocalizer(moment)
    { loading, events, resources, new_event } = this.state

    <section className="app-calendar" style={{paddingBottom: '20px'}}>
      <CalendarDrawer
        onClose={this.onCloseCalendarDrawer}
        visible={this.state.new_calendar_drawer}
        addEvent={this.addEvent}
        new_event={new_event}
      />

      <LoadingBlock loading={loading}>
        <BigCalendar
          selectable
          events={events}
          localizer={localizer}
          defaultView={BigCalendar.Views.DAY}
          views={['day', 'work_week']}
          step={15}
          defaultDate={new Date(2018, 0, 29)}
          resources={resources}
          resourceIdAccessor="resourceId"
          resourceTitleAccessor="resourceTitle"
          onSelectEvent={(event) => alert(event.title)}
          onSelectSlot={this.handleSelect}
        />
      </LoadingBlock>

    </section>

export default Calendar
