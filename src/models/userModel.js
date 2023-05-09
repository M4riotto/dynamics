import con from '../db/dbConnection.js'
import { z } from 'zod'

const userSchema = z.object({
  id:
    z.number({ message: "ID deve ser um valor numérico." })
      .optional(),
  lname:
    z.string({
      required_error: "lname é obrigatória.",
      invalid_type_error: "lname deve ser uma string.",
    })
      .min(3, { message: "lname deve ter no mínimo 3 caracteres." })
      .max(100, { message: "lname deve ter no máximo 100 caracteres." }),
  fname:
    z.string({
      required_error: "fname é obrigatória.",
      invalid_type_error: "fname deve ser uma string.",
    })
      .min(3, { message: "fname deve ter no mínimo 3 caracteres." })
      .max(100, { message: "fname deve ter no máximo 100 caracteres." }),
  office:
    z.string({
      required_error: "office é obrigatória.",
      invalid_type_error: "office deve ser uma string.",
    })
      .min(3, { message: "office deve ter no mínimo 3 caracteres." })
      .max(100, { message: "office deve ter no máximo 100 caracteres." }),
  email:
    z.string({
      required_error: "Email é obrigatória.",
      invalid_type_error: "Email deve ser uma string.",
    })
      .email({ message: "Email Inválido." })
      .min(5, { message: "O email deve ter ao menos 5 caracteres." })
      .max(200, { message: "Email deve ter no máximo 200 caracteres." }),
  password:
    z.string({
      required_error: "password é obrigatória.",
      invalid_type_error: "Senha deve ser uma string.",
    })
      .min(6, { message: "Senha deve ter no mínimo 6 caracteres." })
      .max(256, { message: "Senha deve ter no máximo 256 caracteres." }),
  cpf:
    z.string({
      required_error: "CPF é obrigatória.",
      invalid_type_error: "AvaCPFtar deve ser uma string.",
    })
      .min(14, { message: "CPF deve ter no mínimo 14 caracteres." })
      .max(14, { message: "CPF deve ter no máximo 14 caracteres." }),
})

export const validateUser = (user) => {
  return userSchema.safeParse(user)
}

export const listAllUsers = (callback) => {
  const sql = "SELECT * users cpf;"
  con.query(sql, (err, result) => {
    if (err) {
      callback(err, null)
      console.log(`DB Error: ${err.sqlMessage}`)
    } else {
      callback(null, result)
    }
  })
}

export const listId = (idUser, callback) => {
  const sql = "SELECT * FROM users WHERE id = ?;"
  const values = [idUser]
  con.query(sql, values, (err, result) => {
    if (err) {
      callback(err, null) //a funcao callback é obg a passar 2 parametros
      console.log(`DB Error: ${err.sqlMessage}`)
    } else if (result.length === 0) {
      result.message = "Id não encontrado"
    } else {
      callback(null, result)
    }
  })
}

export const createUser = (user, callback) => {
  const { fname, lname, office, cpf, password, email } = user
  // const sql = 'INSERT INTO cursos SET ?;'
  // const values = { nome, cargahoraria }
  const sql = 'INSERT INTO users (fname, lname, office, cpf, password, email) VALUES (?, ?, ?, ?, ?, ?);'
  const values = [fname, lname, office, cpf, password, email]

  con.query(sql, values, (err, result) => {
    if (err) {
      callback(err, null)
      console.log(`DB Error: ${err.sqlMessage}`)
    } else {
      callback(null, result)
      console.log('boa')
    }
  })
}

export const deleteUser = (id, callback) => {
  // const id  = user
  const sql = 'DELETE FROM users WHERE id = ?;'
  const values = [id]

  con.query(sql, values, (err, result) => {
    if (err) {
      callback(err, null)
      console.log(`DB Error: ${err.sqlMessage}`)
    } else {
      callback(null, result)
    }
  })
}

export const updateUser = (user, callback) => {
  const { id, fname, lname, office, cpf, password, email } = user
  const sql = 'UPDATE users SET fname = ?, lname = ?, office = ?, password = ?, email = ?  WHERE id = ?;'
  const values = [fname, lname, office, cpf, password, email, id]

  con.query(sql, values, (err, result) => {
    if (err) {
      callback(err, null)
      console.log(`DB Error: ${err.sqlMessage}`)
    } else {
      callback(null, result)
    }
  })
}

export default { listAllUsers, listId, createUser, deleteUser, updateUser, validateUser } 