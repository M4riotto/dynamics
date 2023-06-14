import ClientModel from '../models/clientsModel.js'

export const listAllClients = (req, res) => {
  ClientModel.listAllClient((error, result) => {
    if (error){
      res.status(500).json({ message: "Erro no Banco de Dados" })}
    else if (result.length){
      res.json(result)
    } else{
      res.json({ message: "Nenhum cliente cadastrado!" })
    }
  })
}

export const showId = (req, res) => {
  const id = req.params.id
  ClientModel.showId(id, (error, result) => {
    if (error) 
      res.status(500).json({ message: "Erro no Banco de Dados" })
    if (result)
      res.json(result)
  })
}

export const createClients = (req, res) => {
  const client = req.body
  //TODO Verificar se os dados são válidos
  ClientModel.createClient(client, (error, result) => {
    if (error)
      res.status(500).json({ message: "Erro no Banco de Dados" })
    if (result) {
      res.json({ 
        message: "Cliente Cadastrado!",
        course:{
          id: result.insertId,
          ...client
        } 
      })
    } 
  })
}

export const deleteClients = (req, res) => {
  const { id } = req.body
  //TODO Verificar se os dados são válidos
  ClientModel.deleteClient(id, (error, result) => {
    if (error)
      res.status(500).json({ message: "Erro no Banco de Dados" })
    if (result){
      if (result.affectedRows){
        res.json({ message: "Cliente Deletado com sucesso!" })
      } else{
        res.status(404).json({ message: `Cliente ${id} não encontrado!` })
      }
    }
  })
}

export const deleteId = (req, res) => {
  const { id } = req.params
  //TODO Verificar se os dados são válidos
  ClientModel.deleteClient(id, (error, result) => {
    if (error)
      res.status(500).json({ message: "Erro no Banco de Dados" })
    if (result) {
      if (result.affectedRows) {
        res.json({ message: "Cliente Deletado com sucesso!" })
      } else {
        res.status(404).json({ message: `Cliente ${id} não encontrado!` })
      }
    }
  })
}

export const updateClients = (req, res) => {
  const client = req.body
  //TODO Verificar se os dados são válidos
  ClientModel.updateClient(client, (error, result) => {
    if (error)
      res.status(500).json({ message: "Erro no Banco de Dados" })
    if (result) {
      if (result.affectedRows) {
        res.json({ message: "Cliente Atualizado com sucesso!" })
      } else {
        res.status(404).json({ message: `Cliente ${id} não encontrado!` })
      }
    }
  })
}