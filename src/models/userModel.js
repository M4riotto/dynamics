import con from '../db/dbConnection.js'
import { z } from 'zod'
import sha256 from '../helper/sha256.js'

const userSchema = z.object({
  id:
    z.number({
      required_error: "ID é obrigatório.",
      invalid_type_error: "Id deve ser um número."
    }),
  fname:
    z.string({
      required_error: "fname é obrigatória.",
      invalid_type_error: "lname deve ser uma string.",
    })
      .min(3, { message: "fname deve ter no mínimo 3 caracteres." })
      .max(50, { message: "fname deve ter no máximo 50 caracteres." }),
  lname:
    z.string({
      required_error: "lname é obrigatória.",
      invalid_type_error: "fname deve ser uma string.",
    })
      .min(3, { message: "lname deve ter no mínimo 3 caracteres." })
      .max(50, { message: "lname deve ter no máximo 50 caracteres." }),
  office:
    z.string({
      required_error: "office é obrigatória.",
      invalid_type_error: "office deve ser uma string.",
    })
      .min(4, { message: "office deve ter no mínimo 4 caracteres." })
      .max(50, { message: "office deve ter no máximo 50 caracteres." }),
  cpf:
    z.string({
      required_error: "CPF é obrigatória.",
      invalid_type_error: "CPF deve ser uma string.",
    })
      .min(11, { message: "CPF deve ter no mínimo 11 caracteres." })
      .max(11, { message: "CPF deve ter no máximo 11 caracteres." }),
  password:
    z.string({
      required_error: "password é obrigatória.",
      invalid_type_error: "Senha deve ser uma string.",
    })
      .min(6, { message: "Senha deve ter no mínimo 6 caracteres." })
      .max(256, { message: "Senha deve ter no máximo 256 caracteres." }),
  email:
    z.string({
      required_error: "Email é obrigatória.",
      invalid_type_error: "Email deve ser uma string.",
    })
      .email({ message: "Email Inválido." })
      .min(12, { message: "O email deve ter ao menos 12 caracteres." })
      .max(200, { message: "Email deve ter no máximo 200 caracteres." })
})

export const validateUserToCreate = (user) => {
  const partialUserSchema = userSchema.partial({ id: true });
  return partialUserSchema.safeParse(user)
}

export const validateUserToUpdate = (user) => {
  const partialUserSchema = userSchema.partial({ password: true });
  return partialUserSchema.safeParse(user)
}

export const listAllUsers = (callback) => {
  const sql = "SELECT id, fname, lname, office, cpf, email, roles FROM users;"
  con.query(sql, (err, result) => {
    if (err) {
      callback(err, null)
      console.log(`DB Error: ${err.sqlMessage}`)
    } else {
      callback(null, result)
    }
  })
}

export const showId = (id, callback) => {
  const sql = "SELECT id, fname, lname, office, cpf, email, roles FROM users WHERE id = ?;"
  const values = [id]
  con.query(sql, values, (err, result) => {
    if (err) {
      callback(err, null) //a funcao callback é obg a passar 2 parametros
      console.log(`DB Error: ${err.sqlMessage}`)
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
  const values = [fname, lname, office, cpf, sha256(password), email]

  con.query(sql, values, (err, result) => {
    if (err) {
      callback(err, null)
      console.log(`DB Error: ${err.sqlMessage}`)
    } else {
      callback(null, result)
    }
  })
}

export const deleteUser = (id, callback) => {
  // const id  = user
  const sql = 'DELETE FROM users WHERE id = ?;'
  const value = [id]

  con.query(sql, value, (err, result) => {
    if (err) {
      callback(err, null)
      console.log(`DB Error: ${err.sqlMessage}`)
    } else {
      callback(null, result)
    }
  })
}

export const updateUser = (user, callback) => {
  const { id, fname, lname, office, cpf, email } = user
  const sql = 'UPDATE users SET fname = ?, lname = ?, office = ?, cpf = ?, email = ?  WHERE id = ?;'
  const values = [fname, lname, office, cpf, email, id]

  con.query(sql, values, (err, result) => {
    if (err) {
      callback(err, null)
      console.log(`DB Error: ${err.sqlMessage}`)
    } else {
      callback(null, result)
    }
  })
}

// Método assíncrono para buscar um usuário pelo email
export const findUserByEmail = (user) => {
  return new Promise((resolve, reject) => {
    const { cpf, email } = user
    const sql = 'SELECT fname FROM users WHERE cpf = ? AND email = ?;'
    const values = [cpf, email]

    con.query(sql, values, (err, result) => {
      if (err) {
        console.log(`DB Error: ${err.sqlMessage}`)
        reject(err)
      } else if (result.length === 0) {
        reject(new Error('User not found'))
      } else {
        const findUserEnc = result
        resolve (findUserEnc[0].fname)
      }
    })
  })
}


export const loginUser = (cpf, password, callback) => {

  const hashPass = sha256(password)

  console.log(cpf, hashPass)

  const sql = 'SELECT * FROM users WHERE cpf = ? AND password = ?;'
  const value = [cpf, hashPass]
  con.query(sql, value, (err, result) => {
    if (err) {
      callback(err, null)
      console.log(`DB Error: ${err.sqlMessage}`)
    } else {
      callback(null, result)
    }
  })
}

export default { listAllUsers, showId, createUser, deleteUser, updateUser, validateUserToCreate, validateUserToUpdate, loginUser, findUserByEmail } 