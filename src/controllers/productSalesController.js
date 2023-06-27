import {createSalesProduct} from '../models/productSalesModel.js'

export const createSalesProducts = (req, res) => {
    const product = req.body
    //TODO Verificar se os dados são válidos
    createSalesProduct.createSalesProducts(product, (error, result) => {
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