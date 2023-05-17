import userModel from '../models/userModel.js'
import zodErrorFormat from '../helper/zodErrorFormat.js'

export const listAllUsers = (req, res) => {
  userModel.listAllUsers((error, result) => {
    if (error)
      res.status(500).json({ message: "Erro no Banco de Dados" })
    if (result){
      if (result.length){
        res.json(result)
      } else{
        res.json({ message: "Nenhum usuário cadastrado!"})
      }
    }
     
  })
}

export const listId = (req, res) => {
  const idUser = req.params.id

  if (!id || isNaN(id)) {
    res.status(400).json({
      message: 'Dados inválidos',
      fields: {
        id: { messages: ['ID deve ser um número inteiro.'] }
      }
    })
    return
  }

  userModel.listId(idUser, (error, result) => {
    if (error)
      res.status(500).json({ message: "Erro no Banco de Dados" })
    if (result)
    if (result.length) {
      res.json(result[0])
    } else {
      res.status(404).json({ message: `User ${id} não encontrado!` })
    }
  })
}

export const createUser = (req, res) => {

  const user = req.body
  const validUser = userModel.validateUserToCreate(user)

  if (validUser?.error) {
    res.status(400).json({
      message: 'Dados inválidos',
      fields: zodErrorFormat(validUser.error)
    })
    return (
      console.log(zodErrorFormat(validUser.error))
    )
  }

  const userValidated = validUser.data

  userModel.createUser(userValidated, (error, result) => {
    if (error)
      res.status(500).json({ message: "Erro no Banco de Dados" })
    if (result){
      res.json({ 
        message: "Usuario Cadastrado!",
        user: {
          id: result.insertId,
          ...user
        }
      })
    }
  })
}

export const deleteUser = (req, res) => {
  const { id } = req.body
  if (!id || isNaN(id)) {
    res.status(400).json({
      message: 'Dados inválidos',
      fields: {
        id: { messages: ['ID deve ser um número inteiro.'] }
      }
    })
    return
  }

  userModel.deleteUser(id, (error, result) => {
    if (error)
      res.status(500).json({ message: "Erro no Banco de Dados" })
    if (result){
      if (result.affectedRows){
        res.json({ message: "Usuario Deletado com sucesso!" })
      } else{
        res.status(404).json({ message: `Usuário ${id} não encontrado!`})
      }
    }
  })
}

export const deleteId = (req, res) => {
  const { id } = req.params
  if (!id || isNaN(id)) {
    res.status(400).json({
      message: 'Dados inválidos',
      fields: {
        id: { messages: ['ID deve ser um número inteiro.'] }
      }
    })
    return
  }

  userModel.deleteUser(id, (error, result) => {
    if (error)
      res.status(500).json({ message: "Erro no Banco de Dados" })
    if (result) {
      if (result.affectedRows) {
        res.json({ message: "Usuario Deletado com sucesso!" })
      } else {
        res.status(404).json({ message: `Usuário ${id} não encontrado!` })
      }
    }
  })
}

export const updateUser = (req, res) => {
  const user = req.body
  const validUser = userModel.validateUserToUpdate(user)
  if (validUser?.error) {
    res.status(400).json({
      message: 'Dados inválidos',
      fields: zodErrorFormat(validUser.error)
    })
    return
  }
  const userValidated = validUser.data
  //TODO Verificar se os dados são válidos
  userModel.updateUser(userValidated, (error, result) => {
    if (error)
      res.status(500).json({ message: "Erro no Banco de Dados" })
    if (result) {
      if (result.affectedRows) {
        res.json({ message: "Usuario Atualizado com sucesso!" })
      } else {
        res.status(404).json({ message: `Usuário ${user.id} não encontrado!` })
      }
    }
  })
}