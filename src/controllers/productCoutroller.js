import productModel from '../models/productModel.js'
import zodErrorFormat from '../helper/zodErrorFormat.js'


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
  const products = req.body
  console.log(products)
  const validProducts = productModel.validateProductsToCreate(products)

  if (validProducts?.error) {
    res.status(400).json({
      message: 'Dados inválidos',
      fields: zodErrorFormat(validProducts.error)
    })
    return
  }

  const productsValidated = validProducts.data

  productModel.createProducts(productsValidated, (error, result) => {
    if (error)
      res.status(500).json({ message: "Erro no Banco de Dados" })
    if (result){
      res.json({ 
        message: "Produto Cadastrado!",
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

export const updateProducts = (req, res) => {
  const products = req.body
  const validProducts = productModel.validateProductsToUpdate(products)
  const idProductsLogged = req.idProductsLogged
  let rolesProductsLogged = req.rolesProductsLogged
  rolesProductsLogged = [
    'admin',
  ]
  if (validProducts?.error) {
    res.status(400).json({
      message: 'Dados inválidos',
      fields: zodErrorFormat(validProducts.error)
    })
    return
  }

  const productsValidated = validProducts.data

  // verifica se o usuário é um admin ou se o id do products da sessão é igual ao do products para deletar
  if (!rolesProductsLogged.includes('admin')) {
    if (idProductsLogged !== products.id) {
      res.status(401).json({ message: `Usuário não autorizado!` })
      return
    }
  }
  
  productModel.updateProduct(productsValidated, (error, result) => {
    if (error)
      res.status(500).json({ message: "Erro no Banco de Dados" })
    if (result) {
      if (result.affectedRows) {
        res.json({ message: "Produto Atualizado com sucesso!" })
      } else {
        res.status(404).json({ message: `Produto ${products.id} não encontrado!` })
      }
    }
  })
}
