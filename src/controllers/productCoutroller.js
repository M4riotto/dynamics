import productModel from '../models/productModel.js'

export const listAllProducts = (req, res) => {
  productModel.listAllProduct((error, result) => {
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
  productModel.listId(id, (error, result) => {
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

export const createProducts = (req, res) => {
  const product = req.body
  //TODO Verificar se os dados são válidos
  productModel.createProduct(product, (error, result) => {
    if (error)
      res.status(500).json({ message: "Erro no Banco de Dados" })
    if (result) {
      res.json({ 
        message: "Produto Cadastrado!",
        product:{
          id: result.insertId,
          ...product
        } 
      })
    } 
  })
}

export const deleteProduct = (req, res) => {
  const { id } = req.body
  //TODO Verificar se os dados são válidos
  productModel.deleteProduct(id, (error, result) => {
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
  productModel.deleteProduct(id, (error, result) => {
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
  productModel.updateProduct(product, (error, result) => {
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