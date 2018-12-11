import React from 'react'
import moment from 'moment'
import { Drawer, Form, Button, Col, Row, Input, Select, DatePicker, Icon, Divider, TimePicker } from 'antd'

class CalendarDrawer extends React.Component
  handleSubmit: (event) =>
    event.preventDefault()
    this.props.form.validateFields (err, values) =>
      if not err
        console.log('Received values of form: ', values)

  render: ->
    { Option, OptGroup } = Select
    { getFieldDecorator } = this.props.form
    { start, end, resourceId } = this.props.new_event

    <Drawer
      title={<span><Icon type="calendar" /> Novo agendamento</span>}
      width={720}
      placement="right"
      onClose={this.props.onClose}
      visible={this.props.visible}
      style={{
        height: 'calc(100% - 55px)',
        overflow: 'auto',
        paddingBottom: 53,
      }}
    >
      <Form layout="vertical" hideRequiredMark onSubmit={this.handleSubmit}>
        <Row gutter={16}>
          <Col span={8}>
            <Form.Item label="Data">
              {getFieldDecorator('date',
                { rules: [{ required: true, message: 'Selecione uma Data' }], initialValue: moment(start) }
              )(
                <DatePicker
                  style={{width: '100%'}}
                  placeholder="Selecione..."
                  format="DD/MM/YYYY"
                />
              )}
            </Form.Item>
          </Col>
          <Col span={8}>
            <Form.Item label="Status">
              {getFieldDecorator('status',
                { rules: [{ required: true, message: 'Selecione um Status' }], initialValue: 'confirmed' }
              )(
                <Select placeholder="Selecione um status">
                  <OptGroup label="Status">
                    <Option value="confirmed">Confirmado</Option>
                    <Option value="not_confirmed">Não confirmado</Option>
                    <Option value="canceled">Cancelado</Option>
                  </OptGroup>
                  <OptGroup label="Ações">
                    <Option value="NEW">+ Adicionar</Option>
                  </OptGroup>
                </Select>
              )}
            </Form.Item>
          </Col>
          <Col span={8}>
            <Form.Item label="Cor">
              {getFieldDecorator('color',
                { rules: [{ required: true, message: 'Selecione uma Cor' }], initialValue: '0' }
              )(
                <Select placeholder="Selecione uma cor">
                  <OptGroup label="Cores">
                    <Option value="0">Azul</Option>
                    <Option value="1">Vermelho</Option>
                    <Option value="2">Amarelo</Option>
                  </OptGroup>
                  <OptGroup label="Ações">
                    <Option value="NEW">+ Adicionar</Option>
                  </OptGroup>
                </Select>
              )}
            </Form.Item>
          </Col>
        </Row>

        <Row gutter={16}>
          <Col span={16}>
            <Form.Item label="Cliente">
              {getFieldDecorator('client_name',
                { rules: [{ required: true, message: 'Selecione um Cliente' }] }
              )(
                <Input placeholder="Nome do cliente" />
              )}
            </Form.Item>
          </Col>
          <Col span={8}>
            <Form.Item label="Telefone">
              {getFieldDecorator('client_phone', {})(
                <Input placeholder="(00) 00000-0000" />
              )}
            </Form.Item>
          </Col>
        </Row>

        <Row gutter={16}>
          <Col span={9}>
            <Form.Item label="Serviço">
              {getFieldDecorator('service',
                { rules: [{ required: true, message: 'Selecione um Serviço' }] }
              )(
                <Select placeholder="Selecione...">
                  <Option value="0">Corte Masculino - R$30,00</Option>
                  <Option value="1">Corte Feminino - R$75,00</Option>
                  <Option value="2">Sobrancelha - R$20,00</Option>
                </Select>
              )}
            </Form.Item>
          </Col>
          <Col span={6}>
            <Form.Item label="Profissional">
              {getFieldDecorator('employee',
                { rules: [{ required: true, message: 'Selecione um Profissional' }], initialValue: resourceId }
              )(
                <Select placeholder="Selecione...">
                  <OptGroup label="Profissionais">
                    <Option value={0}>Anthony</Option>
                    <Option value={1}>Sabrina</Option>
                    <Option value={2}>Jéssica</Option>
                    <Option value={3}>Marcelo</Option>
                  </OptGroup>
                  <OptGroup label="Ações">
                    <Option value="NEW">+ Adicionar</Option>
                  </OptGroup>
                </Select>
              )}
            </Form.Item>
          </Col>
          <Col span={5}>
            <Form.Item label="Horário">
              {getFieldDecorator('time',
                { rules: [{ required: true, message: 'Selecione um Horário' }], initialValue: moment(start) }
              )(
                <TimePicker format="HH:mm" minuteStep={5} />
              )}
            </Form.Item>
          </Col>
          <Col span={4}>
            <Form.Item label="Duração">
              {getFieldDecorator('duration',
                { rules: [{ required: true, message: 'Selecione uma Duração' }], initialValue: moment.duration(moment(end).diff(moment(start))).as('minutes') }
              )(
                <Select placeholder="00:00">
                  <Option value={15}>00:15</Option>
                  <Option value={30}>00:30</Option>
                  <Option value={45}>00:45</Option>
                  <Option value={60}>01:00</Option>
                  <Option value={75}>01:15</Option>
                </Select>
              )}
            </Form.Item>
          </Col>
        </Row>

        <Row gutter={16}>
          <Col span={24}>
            <Form.Item label="Observação">
              {getFieldDecorator('observation', {})(
                <Input.TextArea rows={3} placeholder="Escreva aqui..." />
              )}
            </Form.Item>
          </Col>
        </Row>

        <div
          style={{
            position: 'absolute',
            bottom: 0,
            width: '100%',
            borderTop: '1px solid #e8e8e8',
            padding: '10px 16px',
            textAlign: 'right',
            left: 0,
            background: '#fff',
            borderRadius: '0 0 4px 4px',
          }}
        >
          <Button style={{ marginRight: 8 }} onClick={this.props.onClose}>
            Voltar
          </Button>
          <Button type="primary" htmlType="submit">
            Agendar
          </Button>
        </div>
      </Form>
    </Drawer>

export default Form.create()(CalendarDrawer)
