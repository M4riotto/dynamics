import ClientModel from '../models/clientsModel.js'

export const listAllclients = (req, res) => {
  ClientModel.listAllclient((error, result) => {
    if (error){
      res.status(500).json({ message: "Erro no Banco de Dados" })}
    else if (result.length){
      res.json(result)
    } else{
      res.json({ message: "Nenhum cliente cadastrado!" })
    }
  })
}

export const listId = (req, res) => {
  const id = req.params.id
  ClientModel.listId(id, (error, result) => {
    if (error) 
      res.status(500).json({ message: "Erro no Banco de Dados" })
    if (result)
      res.json(result)
  })
}

export const createclients = (req, res) => {
  const Client = req.body
  //TODO Verificar se os dados são válidos
  ClientModel.createclient(Client, (error, result) => {
    if (error)
      res.status(500).json({ message: "Erro no Banco de Dados" })
    if (result) {
      res.json({ 
        message: "cliente Cadastrado!",
        course:{
          id: result.insertId,
          ...Client
        } 
      })
    } 
  })
}

export const deleteclient = (req, res) => {
  const { id } = req.body
  //TODO Verificar se os dados são válidos
  ClientModel.deleteclient(id, (error, result) => {
    if (error)
      res.status(500).json({ message: "Erro no Banco de Dados" })
    if (result){
      if (result.affectedRows){
        res.json({ message: "cliente Deletado com sucesso!" })
      } else{
        res.status(404).json({ message: `cliente ${id} não encontrado!` })
      }
    }
  })
}

export const deleteId = (req, res) => {
  const { id } = req.params
  //TODO Verificar se os dados são válidos
  ClientModel.deleteclient(id, (error, result) => {
    if (error)
      res.status(500).json({ message: "Erro no Banco de Dados" })
    if (result) {
      if (result.affectedRows) {
        res.json({ message: "cliente Deletado com sucesso!" })
      } else {
        res.status(404).json({ message: `cliente ${id} não encontrado!` })
      }
    }
  })
}

export const updateclient = (req, res) => {
  const Client = req.body
  //TODO Verificar se os dados são válidos
  ClientModel.updateClient(Client, (error, result) => {
    if (error)
      res.status(500).json({ message: "Erro no Banco de Dados" })
    if (result) {
      if (result.affectedRows) {
        res.json({ message: "cliente Atualizado com sucesso!" })
      } else {
        res.status(404).json({ message: `cliente ${course.id} não encontrado!` })
      }
    }
  })
}