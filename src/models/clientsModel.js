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
      required_error: "Nome é obrigatório.",
      invalid_type_error: "Nome deve ser uma string.",
    })
      .min(3, { message: "Nome deve ter no mínimo 3 caracteres." })
      .max(20, { message: "Nome deve ter no máximo 20 caracteres." }),
  lname:
    z.string({
      required_error: "Sobrenome é obrigatória.",
      invalid_type_error: "Sobrenome deve ser uma string.",
    })
      .min(3, { message: "Sobrenome deve ter no mínimo 3 caracteres." })
      .max(70, { message: "Sobrenome deve ter no máximo 70 caracteres." }),
  cpf:
    z.number({
      required_error: "CPF é obrigatório.",
      invalid_type_error: "CPF deve ser um número.",
    })
      .min(11, { message: "CPF deve ter no minimo 11 caracteres." })
      .max(11, { message: "CPF deve ter no maximo 11 caracteres." }),
  dateOfBirth:
    z.string({
      required_error: "Data é obrigatória.",
      invalid_type_error: "Data deve ser em números.",
    })
      .min(10, { message: "Data deve ter no mínimo 10 caracteres." })
      .max(10, { message: "Data deve ter no máximo 10 caracteres." }),
  phone:
    z.string({
      required_error: "Telefone é obrigatório.",
      invalid_type_error: "Telefone deve ser um string.",
    })
      .min(10, { message: "Telefone deve ter no mínimo 10 caracteres." })
      .max(14, { message: "Telefone deve ter no máximo 14 caracteres." }),
  email:
    z.string({
      required_error: "E-mail é obrigatória.",
      invalid_type_error: "E-mail deve ser uma string.",
    })
      .email({ message: "E-mail Inválido." })
      .min(10, { message: "E-mail deve ter no mínimo 10 caracteres." })
      .max(200, { message: "E-mail deve ter no máximo 200 caracteres." }),
  address:
    z.string({
      required_error: "Endereço é obrigatório.",
      invalid_type_error: "Endereço deve ser uma string.",
    })
      .min(3, { message: "Endereço deve ter no mínimo 3 caracteres." })
      .max(100, { message: "Endereço deve ter no máximo 100 caracteres." }),
  street:
    z.string({
      required_error: "Rua é obrigatória.",
      invalid_type_error: "Rua deve ser uma string.",
    })
      .min(3, { message: "Rua deve ter no mínimo 6 caracteres." })
      .max(256, { message: "Rua deve ter no máximo 256 caracteres." }),
  cep:
    z.string({
      invalid_type_error: "CEP deve ser um número.",
    })
      .min(8, { message: "CEP deve ter no mínimo 8 caracteres." })
      .max(9, { message: "CEP deve ter no máximo 9 caracteres." }),
  houseNumber:
    z.bigint({
      required_error: "Número da casa é obrigatório.",
      invalid_type_error: "Número da casa deve ser uma string.",
    })
      .min(20, { message: "Número da casa deve ter no mínimo 20 caracteres." })
      .max(20, { message: "Número da casa deve ter no máximo 20 caracteres." }),
  referencePoint:
    z.string({
      invalid_type_error: "Ponto de referencia deve ser uma string.",
    })
      .min(3, { message: "Ponto de referencia deve ter no mínimo 3 caracteres." })
      .max(200, { message: "Ponto de referencia deve ter no máximo 200 caracteres." }),
})

export const validateClientToCreate = (client) => {
  const partialclientSchema = clientSchema.partial({ id: true });
  return partialclientSchema.safeParse(client)
}

export const validateClientToUpdate = (client) => {
  return clientSchema.safeParse(client)
}

export const listAllClient = (callback) => {
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

export const showId = (idclient, callback) => {
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

export const createClient = (client, callback) => {
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

export const deleteClient = (id, callback) => {
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

export const updateClient = (client, callback) => {
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

export default { listAllClient, showId, createClient, deleteClient, updateClient, validateClientToCreate, validateClientToUpdate, }