import con from '../db/dbConnection.js'
import { z } from 'zod'

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
    cpf:
        z.string({
            required_error: "CPF é obrigatória.",
            invalid_type_error: "CPF deve ser uma string.",
        })
            .min(11, { message: "CPF deve ter no mínimo 11 caracteres." })
            .max(11, { message: "CPF deve ter no máximo 11 caracteres." }),
    email:
        z.string({
            required_error: "Email é obrigatória.",
            invalid_type_error: "Email deve ser uma string.",
        })
            .email({ message: "Email Inválido." })
            .min(12, { message: "O email deve ter ao menos 12 caracteres." })
            .max(200, { message: "Email deve ter no máximo 200 caracteres." }),
    office:
        z.string({
            required_error: "office é obrigatória.",
            invalid_type_error: "office deve ser uma string.",
        })
            .min(4, { message: "office deve ter no mínimo 4 caracteres." })
            .max(50, { message: "office deve ter no máximo 50 caracteres." }),

    wage:
        z.string({
            required_error: "wage é obrigatória.",
            invalid_type_error: "wage deve ser uma string.",
        })
            .min(6, { message: "wage deve ter no mínimo 4 caracteres." })
            .max(256, { message: "wage deve ter no máximo 256 caracteres." }),
    birth:
        z.date({
            required_error: "birth é obrigatória.",
            invalid_type_error: "birth deve ser uma string.",
        }),
    street:
        z.string({
            required_error: "street é obrigatória.",
            invalid_type_error: "street deve ser uma string.",
        })
            .min(6, { message: "street deve ter no mínimo 4 caracteres." })
            .max(256, { message: "street deve ter no máximo 256 caracteres." }),
    number:
        z.number({
            required_error: "number é obrigatória.",
            invalid_type_error: "number deve ser uma number.",
        })
            .min(1, { message: "street deve ter no mínimo 1 caracteres." })
            .max(5, { message: "street deve ter no máximo 5 caracteres." }),
    address:
        z.string({
            required_error: "address é obrigatória.",
            invalid_type_error: "address deve ser uma string.",
        })
            .min(6, { message: "address deve ter no mínimo 4 caracteres." })
            .max(256, { message: "address deve ter no máximo 256 caracteres." }),

})

export const validateEmployeesToUpdate = (employees) => {
    const partialUserSchema = userSchema.partial({ id: true });
    return partialUserSchema.safeParse(employees)
}

export const validateEmployeesToCreate = (employees) => {
    const partialUserSchema = userSchema.partial({ password: true });
    return partialUserSchema.safeParse(employees)
}

export const listAllEmployees = (callback) => {
    const sql = "SELECT * FROM employees;"
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
    const sql = "SELECT * FROM employees WHERE id = ?;"
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

export const createEmployees = (employees, callback) => {
    const { fname, lname, cpf, email, office,  wage, birth, street, number, address  } = employees
    const sql = 'INSERT INTO employees (fname, lname, cpf, email, office,  wage, birth, street, number, address) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?);'
    const values = [fname, lname, cpf, email, office,  wage, birth, street, number, address]

    con.query(sql, values, (err, result) => {
        if (err) {
            callback(err, null)
            console.log(`DB Error: ${err.sqlMessage}`)
        } else {
            callback(null, result)
        }
    })
}

export const deleteEmployees = (id, callback) => {
    // const id  = user
    const sql = 'DELETE FROM employees WHERE id = ?;'
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

export const updateEmployees = (employees, callback) => {
    const { id, fname, lname, cpf, email, office,  wage, birth, street, number, address } = employees
    const sql = 'UPDATE employees SET fname = ?, lname = ?, cpf = ?, email = ?, office = ?, wage = ?, birth = ?, street = ?, number = ?, address = ?  WHERE id = ?;'
    const values = [fname, lname, cpf, email, office,  wage, birth, street, number, address, id]

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
// export const findUserByEmail = (user) => {
//     return new Promise((resolve, reject) => {
//         const { cpf } = user
//         const sql = 'SELECT fname FROM users WHERE cpf = ?;'
//         const values = [cpf]

//         con.query(sql, values, (err, result) => {
//             if (err) {
//                 console.log(`DB Error: ${err.sqlMessage}`)
//                 reject(err)
//             } else if (result.length === 0) {
//                 reject(new Error('User not found'))
//             } else {
//                 const findUserEnc = result
//                 resolve(findUserEnc[0].fname)
//             }
//         })
//     })
// }


// export const loginUser = (cpf, password, callback) => {

//     const hashPass = sha256(password)

//     console.log(cpf, hashPass)

//     const sql = 'SELECT * FROM users WHERE cpf = ? AND password = ?;'
//     const value = [cpf, hashPass]
//     con.query(sql, value, (err, result) => {
//         if (err) {
//             callback(err, null)
//             console.log(`DB Error: ${err.sqlMessage}`)
//         } else {
//             callback(null, result)
//         }
//     })
// }

export default { listAllEmployees, showId, createEmployees, deleteEmployees, updateEmployees, validateEmployeesToCreate, validateEmployeesToUpdate } 