import React, { Suspense } from 'react'

import { Error_403, Error_404, Error_500 } from '../Pages/Error/Error.coffee'

`const Customers = React.lazy(() => import(/* webpackChunkName: 'Customers' */'../Pages/Customers/Customers.coffee'));`
`const Calendar = React.lazy(() => import(/* webpackChunkName: 'Calendar' */'../Pages/Calendar/Calendar.coffee'));`
`const Dashboard = React.lazy(() => import(/* webpackChunkName: 'Dashboard' */'../Pages/Dashboard/Dashboard.coffee'));`

# ===
# Declaração de todas as rotas do sistema
# Todos os componentes serão importados aqui
# ===
export default Routes = [
  {
    path: '/',
    exact: true,
    render: () =>
      <Suspense fallback={<div>Loading...</div>}>
        <Dashboard />
      </Suspense>
  },
  {
    path: '/calendar',
    exact: true,
    render: () =>
      <Suspense fallback={<div>Loading...</div>}>
        <Calendar />
      </Suspense>
  },
  {
    path: '/customers',
    exact: true,
    render: () =>
      <Suspense fallback={<div>Loading...</div>}>
        <Customers.Index />
      </Suspense>
  },
  # {
  #   path: '/customers/new',
  #   component: () => <Customers.New />
  # },
  {
    path: '/403',
    component: () => <Error_403 />
  },
  {
    path: '/500',
    component: () => <Error_500 />
  },
  {
    path: '*',
    component: () => <Error_404 />
  }
];
