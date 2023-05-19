import con from '../db/dbConnection.js'
import { z } from 'zod'

const clientSchema = z.object({
  id:
    z.number({
      required_error: "ID é obrigatório.",
      invalid_type_error: "Id deve ser um número."
    }),
  fname:
    z.string({
      required_error: "lname é obrigatória.",
      invalid_type_error: "lname deve ser uma string.",
    })
      .min(3, { message: "lname deve ter no mínimo 3 caracteres." })
      .max(200, { message: "lname deve ter no máximo 200 caracteres." }),
  lname:
    z.string({
      required_error: "fname é obrigatória.",
      invalid_type_error: "fname deve ser uma string.",
    })
      .min(3, { message: "fname deve ter no mínimo 3 caracteres." })
      .max(200, { message: "fname deve ter no máximo 200 caracteres." }),
  cpf:
    z.number({
      required_error: "cpf é obrigatório",
      invalid_type_error: "cpf deve ser um int",
    })
      .min(14, { message: "cpf deve ter no minimo 14 caracteres" })
      .max(14, { message: "cpf deve ter no maximo 14 caracteres" }),
  dateOfBirth:
    z.string({
      required_error: "Data é obrigatória",
      invalid_type_error: "Data deve ser em int",
    })
      .min(10, { message: "data deve ter no mínimo 10 caracteres." })
      .max(10, { message: "data deve ter no máximo 10 caracteres." }),
  phone:
    z.string({
      required_error: "phone é obrigatória.",
      invalid_type_error: "phone deve ser um string",
    })
      .min(10, { message: "CPF deve ter no mínimo 10 caracteres." })
      .max(14, { message: "CPF deve ter no máximo 14 caracteres." }),
  email:
    z.string({
      required_error: "Email é obrigatória.",
      invalid_type_error: "Email deve ser uma string.",
    })
      .email({ message: "Email Inválido." })
      .min(5, { message: "O email deve ter ao menos 5 caracteres." })
      .max(200, { message: "Email deve ter no máximo 200 caracteres." }),
  address:
    z.string({
      required_error: "address é obrigatória.",
      invalid_type_error: "address deve ser uma string.",
    })
      .min(3, { message: "address deve ter no mínimo 3 caracteres." })
      .max(100, { message: "address deve ter no máximo 100 caracteres." }),
  street:
    z.string({
      required_error: "Rua é obrigatória.",
      invalid_type_error: "Rua deve ser uma string.",
    })
      .min(3, { message: "Rua deve ter no mínimo 6 caracteres." })
      .max(256, { message: "Rua deve ter no máximo 256 caracteres." }),
  cep:
    z.string({
      invalid_type_error: "cep deve ser um bigint.",
    })
      .min(8, { message: "CPF deve ter no mínimo 8 caracteres." })
      .max(9, { message: "CPF deve ter no máximo 9 caracteres." }),
  houseNumber:
    z.bigint({
      required_error: "house number é obrigatória.",
      invalid_type_error: "house number deve ser uma string.",
    })
      .min(20, { message: "house number deve ter no mínimo 20 caracteres." })
      .max(20, { message: "house number deve ter no máximo 20 caracteres." }),
  referencePoint:
    z.string({
      invalid_type_error: "referencePoint deve ser uma string.",
    })
      .min(3, { message: "referencePoint deve ter no mínimo 3 caracteres." })
      .max(200, { message: "referencePoint deve ter no máximo 200 caracteres." }),


})

export const validateclientToCreate = (client) => {
  const partialclientSchema = clientSchema.partial({ id: true });
  return partialclientSchema.safeParse(client)
}

export const validateclientToUpdate = (client) => {
  return clientSchema.safeParse(client)
}

export const listAllclients = (callback) => {
  const sql = "SELECT * FROM clients;"
  con.query(sql, (err, result) => {
    if (err) {
      callback(err, null)
      console.log(`DB Error: ${err.sqlMessage}`)
    } else {
      callback(null, result)
    }
  })
}

export const listId = (idclient, callback) => {
  const sql = "SELECT * FROM clients WHERE id = ?;"
  const values = [idclient]
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

export const createclient = (client, callback) => {
  const {fname, lname, cpf, dateOfBirth, phone, email, address, street, cep, houseNumber, referencePoint} = client
  // const sql = 'INSERT INTO cursos SET ?;'
  // const values = { nome, cargahoraria }
  const sql = 'INSERT INTO clients (fname , lname , cpf , dateOfBirth , phone , email , address , street , cep , houseNumber , referencePoint ) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ? );'
  const values = [fname, lname, cpf, dateOfBirth, phone, email, address, street, cep, houseNumber, referencePoint]

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

export const deleteclient = (id, callback) => {
  // const id  = client
  const sql = 'DELETE FROM clients WHERE id = ?;'
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

export const updateclient = (client, callback) => {
  const { id, fname, lname, cpf, dateOfBirth, phone, email, address, street, cep, houseNumber, referencePoint} = client
  const sql = 'UPDATE clients SET fname = ? , lname = ? , cpf = ? , dateOfBirth = ? , phone = ? , email = ? , address = ? , street = ? , cep = ? , houseNumber = ? , referencePoint = ?  WHERE id = ?;'
  const values = [fname, lname, cpf, dateOfBirth, phone, email, address, street, cep, houseNumber, referencePoint]

  con.query(sql, values, (err, result) => {
    if (err) {
      callback(err, null)
      console.log(`DB Error: ${err.sqlMessage}`)
    } else {
      callback(null, result)
    }
  })
}



export default { listAllclients, listId, createclient, deleteclient, updateclient, validateclientToCreate, validateclientToUpdate, } 