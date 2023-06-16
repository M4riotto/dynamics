import express from 'express'
import {
  listAllProducts,
  showId,
  createProducts,
  deleteProduct,
  deleteId,
  updateProducts,
  QuerySearch
} from '../controllers/productCoutroller.js'

const router = express.Router()

router.get('/', listAllProducts) // SELECT
router.get('/name', QuerySearch) // SELECT Name
router.get('/:id', showId)
router.post('/', createProducts) // INSERT
router.delete('/', deleteProduct) // DELETE
router.delete('/:id', deleteId) 
router.put('/', updateProducts) // UPDATE

export default router