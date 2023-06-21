import con from '../db/dbConnection.js'

export const listAllSales = (callback) => {
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

export const createSales = (sales, callback) => {
  const { nameClient, nameProduct } = sales
  // const sql = 'INSERT INTO cursos SET ?;'
  // const values = { nome, cargahoraria }
  const sql = 'INSERT INTO sales (client, product) VALUES (?, ?);'
  const values = [nameClient, nameProduct]

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

export const updateProduct = (product, callback) => {
  const { id, name, price, stock } = product
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

export default { showId, createSales}