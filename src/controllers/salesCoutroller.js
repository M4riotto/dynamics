import salesModel from '../models/salesModel.js'

export const listAllSales = (req, res) => {
  salesModel.listAllSales((error, result) => {
    if (error)
      res.status(500).json({ message: "Erro no Banco de Dados" })
    if (result.length){
      res.json(result)
    } else{
      res.json({ message: "Nenhum produto cadastrado!" })
    }
  })
}

export const showId = (req, res) => {
  const id = req.params.id
  salesModel.listId(id, (error, result) => {
    if (error)
      res.status(500).json({ message: "Erro no Banco de Dados" })
    if (result) {
      if (result.length) {
        res.json(result[0])
      } else {
        res.status(404).json({ message: `Curso ${id} não encontrado!` })
      }
    }
  })
}

export const createSales = (req, res) => {
  const sales = req.body
  //TODO Verificar se os dados são válidos
  salesModel.createSales(sales, (error, result) => {
    if (error)
      res.status(500).json({ message: "Erro no Banco de Dados" })
    if (result) {
      res.json({ 
        message: "Produto Cadastrado!",
        sales:{
          id: result.insertId,
          ...sales
        } 
      })
    } 
  })
}

export const deleteProduct = (req, res) => {
  const { id } = req.body
  //TODO Verificar se os dados são válidos
  salesModel.deleteProduct(id, (error, result) => {
    if (error)
      res.status(500).json({ message: "Erro no Banco de Dados" })
    if (result){
      if (result.affectedRows){
        res.json({ message: "Produto Deletado com sucesso!" })
      } else{
        res.status(404).json({ message: `Produto ${id} não encontrado!` })
      }
    }
  })
}

export const deleteId = (req, res) => {
  const { id } = req.params
  //TODO Verificar se os dados são válidos
  salesModel.deleteProduct(id, (error, result) => {
    if (error)
      res.status(500).json({ message: "Erro no Banco de Dados" })
    if (result) {
      if (result.affectedRows) {
        res.json({ message: "Produto Deletado com sucesso!" })
      } else {
        res.status(404).json({ message: `Produto ${id} não encontrado!` })
      }
    }
  })
}

export const updateProduct = (req, res) => {
  const product = req.body
  //TODO Verificar se os dados são válidos
  salesModel.updateProduct(product, (error, result) => {
    if (error)
      res.status(500).json({ message: "Erro no Banco de Dados" })
    if (result) {
      if (result.affectedRows) {
        res.json({ message: "Produto Atualizado com sucesso!" })
      } else {
        res.status(404).json({ message: `Produto ${id} não encontrado!` })
      }
    }
  })
}