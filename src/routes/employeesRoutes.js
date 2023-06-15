import express from 'express'
import {
  listAllEmployees,
  showId,
  createEmployees,
  deleteEmployees,
  deleteId,
  updateEmployees
} from '../controllers/employeesController.js'
import authenticated from '../middlewares/authenticated.js'

const router = express.Router()

router.get('/', listAllEmployees)
router.get('/:id', showId)
router.post('/', createEmployees)
router.delete('/', authenticated, deleteEmployees) // DELETE ID FROM BODY JSON
router.delete('/:id', authenticated, deleteId) // DELETE ID FROM PARAMS
router.put('/', authenticated,   updateEmployees
) // UPDATE

export default router