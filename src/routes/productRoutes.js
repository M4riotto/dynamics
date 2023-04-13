import express from 'express'
import {
  listAllProducts,
  listId,
  createProducts,
  deleteProduct,
  deleteId,
  updateProduct
} from '../controllers/productCoutroller.js'

const router = express.Router()

router.get('/', listAllProducts) // SELECT
router.get('/:id', listId)
router.post('/', createProducts) // INSERT
router.delete('/', deleteProduct) // DELETE
router.delete('/:id', deleteId) 
router.put('/', updateProduct) // UPDATE

export default router