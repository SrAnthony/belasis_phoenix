import React from 'react'
import { Button } from 'antd'

import './Error.sass'
import not_found from '../../../../static/images/not-found.png'
import no_access from '../../../../static/images/no-access.png'
import server_error from '../../../../static/images/server-error.png'

export Error_404 = =>
  <section className="app-error-section">
    <img src={not_found} />
    <div className="app-error-content">
      <h1>404</h1>
      <div className="app-error-desc">
        Desculpe, a página que você visitou não existe :/
      </div>
      <Button type="primary">Voltar ao painel</Button>
    </div>
  </section>

export Error_500 = =>
  <section className="app-error-section">
    <img src={server_error} />
    <div className="app-error-content">
      <h1>500</h1>
      <div className="app-error-desc">
        Oops... Parece que ocorreu um erro em nosso servidor :/
      </div>
      <Button type="primary">Voltar ao painel</Button>
    </div>
  </section>

export Error_403 = =>
  <section className="app-error-section">
    <img src={no_access} />
    <div className="app-error-content">
      <h1>403</h1>
      <div className="app-error-desc">
        Desculpe, você não tem acesso a esta página.
      </div>
      <Button type="primary">Voltar ao painel</Button>
    </div>
  </section>
