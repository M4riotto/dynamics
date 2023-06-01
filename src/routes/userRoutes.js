import express from 'express'
import {
  listAllUsers,
  showId,
  createUser,
  deleteUser,
  deleteId,
  updateUser
} from '../controllers/userCoutroller.js'
import authenticated from '../middlewares/authenticated.js'

const router = express.Router()

router.get('/', listAllUsers)
router.get('/:id', showId)
router.post('/', createUser)
router.delete('/', authenticated, deleteUser) // DELETE ID FROM BODY JSON
router.delete('/:id', authenticated, deleteId) // DELETE ID FROM PARAMS
router.put('/', authenticated, updateUser) // UPDATE

export default router