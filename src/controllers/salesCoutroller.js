import salesModel from '../models/salesModel.js'
import { createSalesProduct } from '../models/productSalesModel.js'

export const listAllSales = (req, res) => {
  salesModel.listAllSales((error, result) => {
    if (error)
      res.status(500).json({ message: "Erro no Banco de Dados" })
    if (result.length) {
      res.json(result)
    } else {
      res.json({ message: "Nenhum produto cadastrado!" })
    }
  })
}

export const listAllProducts = (req, res) => {
  const id = req.params.id
  salesModel.listAllProducts(id, (error, result) => {
    if (error)
      res.status(500).json({ message: "Erro no Banco de Dados" })
    console.log('oii')
    if (error)
      res.status(500).json({ message: "Erro no Banco de Dados" })
    if (result.length) {
      res.json(result)
    } else {
      res.json({ message: "Nenhum produto cadastrado!" })
    }
  })
}

// export const showId = (req, res) => {
//   const id = req.params.id
//   salesModel.listId(id, (error, result) => {
//     if (error)
//       res.status(500).json({ message: "Erro no Banco de Dados" })
//     if (result) {
//       if (result.length) {
//         res.json(result[0])
//       } else {
//         res.status(404).json({ message: `Curso ${id} não encontrado!` })
//       }
//     }
//   })
// }

export const createSale = (req, res) => {
  const sales = req.body.sales
  const clientID = req.body.clientID
  //TODO Verificar se os dados são válidos
  salesModel.createSale(clientID, (error, result) => {
    if (error)
      res.status(500).json({ message: "Erro no Banco de Dados" })
    if (result) {
      console.log(result.insertId)
      createSalesProduct(sales, result.insertId, (errorSP, resultSP) => {
        if (errorSP)
          res.status(500).json({ message: "Erro no Banco de Dados" })
        if (resultSP) {
          res.json({
            message: "Sales Cadastradada com sucesso!",
            sales: {
              idSale: result.insertId,
              sales: resultSP
            }
          })
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
    if (result) {
      if (result.affectedRows) {
        res.json({ message: "Produto Deletado com sucesso!" })
      } else {
        res.status(404).json({ message: `Produto ${id} não encontrado!` })
      }
    }
  })
}
