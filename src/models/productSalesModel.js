import con from '../db/dbConnection.js'

export const createSalesProduct = (sales, salesID, callback) => {

  let sql = ''
  let values = []

  sales.forEach((sale) => {
    sql += 'INSERT INTO product_sales (id_sales, id_product, stock) VALUES (?, ?, ?); '
  })

  sales.forEach((sale) => {
    values = [
      ...values,
      salesID,
      sale.id,
      10
    ]
  })

  console.log(values)
  console.log(sql)

  con.query(sql, values, (err, result) => {
    if (err) {
      callback(err, null)
      console.log(`DB Error: ${err.sqlMessage}`)
    } else {
      callback(null, result)
    }
  })
}