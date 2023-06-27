import con from '../db/dbConnection.js'



export const listAllSales = (callback) => {
  const sql = "SELECT DISTINCT(c.id), s.id, s.date, c.fname, s.valor FROM sales as s INNER JOIN clients as c ON s.id_cliente = c.id;"
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
  const sql = "SELECT * FROM product_sales AS s INNER JOIN products AS c ON s.id_product = c.id INNER JOIN sales ON s.id_sales = sales.id WHERE id_sales = ?;"
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

export const createSale = (clientTotal, callback) => {
  const {clientID, totalValue} = clientTotal
  // const sql = 'INSERT INTO cursos SET ?;'
  // const values = { nome, cargahoraria }
  const sql = 'INSERT INTO sales (id_cliente, valor) VALUES ( ?, ? );'
  const values = [clientID, `R$ ${totalValue},00` ]

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