import con from '../db/dbConnection.js'

export const listAllUsers = (callback) => {
  const sql = "SELECT * FROM cpf;"
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
  const sql = "SELECT * FROM cpf WHERE id = ?;"
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
  const sql = 'INSERT INTO cpf (fname, lname, office, cpf, password, email) VALUES (?, ?, ?, ?, ?, ?);'
  const values = [fname, lname, office, cpf, password, email]

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
  const sql = 'DELETE FROM cpf WHERE id = ?;'
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
  const sql = 'UPDATE cpf SET fname = ?, lname = ?, office = ?, password = ?, email = ?  WHERE id = ?;'
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

export default { listAllUsers, listId, createUser, deleteUser, updateUser } 