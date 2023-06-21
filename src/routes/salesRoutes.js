import express from 'express'
import {
  createSales,
  showId
} from '../controllers/salesCoutroller.js'

const router = express.Router()

// router.get('/', listAllSales) // SELECT
router.get('/:id', showId)
router.post('/', createSales) // INSERT
// router.delete('/', deleteSales) // DELETE
// router.delete('/:id', deleteId) 
// router.put('/', updateSales) // UPDATE

export default router