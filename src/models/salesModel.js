import con from '../db/dbConnection.js'



export const listAllSales = (callback) => {
  const sql = "SELECT DISTINCT(c.id), s.id, s.date, c.fname FROM sales as s INNER JOIN clients as c ON s.id_cliente = c.id;"
  con.query(sql, (err, result) => {
    if (err) {
      callback(err, null)
      console.log(`DB Error: ${err.sqlMessage}`)
    } else {
      callback(null, result)
    }
  })
}

export const listAllProducts = (id, callback) => {
  const sql = "SELECT * FROM product_sales as s INNER JOIN products as c ON s.id_product = c.id WHERE id_sales = ?;"
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

export const createSale = (clientID, callback) => {
  // const sql = 'INSERT INTO cursos SET ?;'
  // const values = { nome, cargahoraria }
  const sql = 'INSERT INTO sales (id_cliente) VALUES ( ? );'
  const values = [clientID]

  con.query(sql, values, (err, result) => {
    if (err) {
      callback(err, null)
      console.log(`DB Error: ${err.sqlMessage}`)
    } else {
      callback(null, result)
    }
  })
}

export default { listAllSales, createSale, listAllProducts}