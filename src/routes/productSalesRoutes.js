import express from 'express'
import {
//   listAllProducts,
//   showId,
createSalesProducts,
//   deleteProduct,
//   deleteId,
//   updateProduct
} from '../controllers/productSalesController.js'

const router = express.Router()

// router.get('/', listAllProducts) // SELECT
// router.get('/:id', showId)
router.post('/', createSalesProducts) // INSERT
// router.delete('/', deleteProduct) // DELETE
// router.delete('/:id', deleteId) 
// router.put('/', updateProduct) // UPDATE

export default router