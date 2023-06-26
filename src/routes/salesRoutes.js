import express from 'express'
import {
  createSale,
  listAllSales,
  listAllProducts
} from '../controllers/salesCoutroller.js'

const router = express.Router()

// router.get('/', listAllSales) // SELECT
router.get('/', listAllSales)
router.get('/:id', listAllProducts)
router.post('/', createSale) // INSERT
// router.delete('/', deleteSales) // DELETE
// router.delete('/:id', deleteId) 
// router.put('/', updateSales) // UPDATE

export default router