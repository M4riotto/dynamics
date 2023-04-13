import con from '../db/dbConnection.js'

export const listAllProduct = (callback) => {
  const sql = "SELECT * FROM product;"
  con.query(sql, (err, result) => {
    if (err) {
      callback(err, null)
      console.log(`DB Error: ${err.sqlMessage}`)
    } else {
      callback(null, result)
    }
  })
}

export const listId = (id, callback) => {
  const sql = "SELECT * FROM product WHERE id = ?;"
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

export const createProduct = (product, callback) => {
  const { nome, cargahoraria } = product
  // const sql = 'INSERT INTO cursos SET ?;'
  // const values = { nome, cargahoraria }
  const sql = 'INSERT INTO product (nome, cargahoraria) VALUES (?, ?);'
  const values = [nome, cargahoraria]

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
  const sql = 'DELETE FROM product WHERE id = ?;'
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

export const updateProduct = (course, callback) => {
  const { id, nome, cargahoraria } = course
  const sql = 'UPDATE cursos SET nome = ?, cargahoraria = ?  WHERE id = ?;'
  const values = [nome, cargahoraria, id]

  con.query(sql, values, (err, result) => {
    if (err) {
      callback(err, null)
      console.log(`DB Error: ${err.sqlMessage}`)
    } else {
      callback(null, result)
    }
  })
}

export default { listAllProduct, listId, createProduct, deleteProduct, updateProduct }