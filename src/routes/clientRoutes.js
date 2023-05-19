import express from 'express'
import {
  listAllclients,
  listId,
  createclients,
  deleteclient,
  deleteId,
  updateclient
} from '../controllers/clientsController.js'

const router = express.Router()

router.get('/', listAllclients)
router.get('/:id', listId)
router.post('/', createclients)
router.delete('/', deleteclient)
router.delete('/:id', deleteId)
router.put('/', updateclient)

export default router