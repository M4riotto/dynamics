import express from 'express'
import {
  listAllClients,
  showId,
  createClients,
  deleteClients,
  deleteId,
  updateClients,
  QuerySearch
} from '../controllers/clientsController.js'

const router = express.Router()

router.get('/', listAllClients)
router.get('/:id', showId)
router.post('/', createClients)
router.delete('/', deleteClients)
router.delete('/:id', deleteId)
router.put('/', updateClients)
router.get('/name', QuerySearch) // SELECT Name


export default router