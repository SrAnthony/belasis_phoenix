import React from 'react'

import { Error_403, Error_404, Error_500 } from '../Pages/Error/Error.coffee'
import Sales from '../Pages/Sales/Sales.coffee'

# ===
# Declaração de todas as rotas do sistema
# Todos os componentes serão importados aqui
# ===
export default Routes = [
  {
    path: '/',
    exact: true,
    component: () => <h2>Home</h2>
  },
  {
    path: '/bubblegum',
    component: () => <h2>Bubblegum</h2>
  },
  {
    path: '/shoelaces',
    component: () => <h2>Shoelaces</h2>
  },
  {
    path: '/sales',
    component: () => <Sales />
  },
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
