import con from '../db/dbConnection.js'
import { z } from 'zod'


const productsSchema = z.object({
  id:
    z.number({ 
      required_error: "ID é obrigatório.",
      invalid_type_error: "Id deve ser um número."
    }),
    name:
    z.string({
      required_error: "name é obrigatória.",
      invalid_type_error: "name deve ser uma string.",
    })
      .min(1, { message: "fname deve ter no mínimo 1 caracteres." })
      .max(200, { message: "fname deve ter no máximo 200 caracteres." }),
      price:
      z.string({
        required_error: "price é obrigatória.",
        invalid_type_error: "price deve ser um numero",
      }),
      stock:
      z.string({
        required_error: "stock é obrigatória.",
        invalid_type_error: "stock deve ser um numero",
      })  
  })
    export const validateProductsToCreate = (products) => {
      const partialUserSchema = productsSchema.partial({ id: true });
      return partialUserSchema.safeParse(products)
    }
    
    export const validateProductsToUpdate = (products) => {
      const partialUserSchema = productsSchema.partial({ password: true });
      return partialUserSchema.safeParse(products)
    }

export const listAllProduct = (callback) => {
  const sql = "SELECT * FROM products;"
  con.query(sql, (err, result) => {
    if (err) {
      callback(err, null)
      console.log(`DB Error: ${err.sqlMessage}`)
    } else {
      callback(null, result)
    }
  })
}
export const querysearch = (callback) => {
  const sql = "SELECT name FROM products;"
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
  const sql = "SELECT * FROM products WHERE id = ?;"
  const values = [id]
  con.query(sql, values, (err, result) => {
    if (err) {
      callback(err, null) 
      console.log(`DB Error: ${err.sqlMessage}`)
    }else if (result.length === 0){
      result.message = "Id não encontrado"
    }else {
      callback(null, result)
    }
  })
}

export const createProduct = (products, callback) => {
  const { name, price, stock } = products
  // const sql = 'INSERT INTO cursos SET ?;'
  // const values = { nome, cargahoraria }
  const sql = 'INSERT INTO products (name, price, stock) VALUES (?, ?, ?);'
  const values = [name, price, stock]

  con.query(sql, values, (err, result) => {
    if (err) {
      callback(err, null)
      console.log(`DB Error: ${err.sqlMessage}`)
    } else {
      callback(null, result)
    }
  })
}

export const deleteProduct = (id, callback) => {
  const sql = 'DELETE FROM products WHERE id = ?;'
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

export const updateProduct = (products, callback) => {
  const { id, name, price, stock } = products
  const sql = 'UPDATE products SET name = ?, price = ?, stock = ?  WHERE id = ?;'
  const values = [name, price, stock, id]

  con.query(sql, values, (err, result) => {
    if (err) {
      callback(err, null)
      console.log(`DB Error: ${err.sqlMessage}`)
    } else {
      callback(null, result)
    }
  })
}

export default { listAllProduct, showId, createProduct, deleteProduct, updateProduct, validateProductsToCreate , validateProductsToUpdate, querysearch }