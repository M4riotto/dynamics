import express from 'express'
import {
  createSale,
  showId
} from '../controllers/salesCoutroller.js'

const router = express.Router()

// router.get('/', listAllSales) // SELECT
router.get('/:id', showId)
router.post('/', createSale) // INSERT
// router.delete('/', deleteSales) // DELETE
// router.delete('/:id', deleteId) 
// router.put('/', updateSales) // UPDATE

export default router