import React from 'react'

import Sales from '../Pages/Sales/Sales.coffee'

# ===
# Declaração de todas as rotas do sistema
# Todos os componentes serão importados aqui
# ===
export default Routes = [
  {
    path: "/",
    exact: true,
    component: () => <h2>Home</h2>
  },
  {
    path: "/bubblegum",
    component: () => <h2>Bubblegum</h2>
  },
  {
    path: "/shoelaces",
    component: () => <h2>Shoelaces</h2>
  },
  {
    path: "/sales",
    component: () => <Sales />
  }
];
