import express from 'express'
import cors from 'cors'
import productRoutes from './routes/productRoutes.js'
import userRoutes from './routes/userRoutes.js'
import clientRoutes from './routes/clientRoutes.js'
import { SERVER } from './config.js'
import logger from './middlewares/logger.js'
import authRoutes from './middlewares/authenticated.js'
import errorHandler from './middlewares/errorHandler.js'


const app = express()
const port = SERVER.PORT

app.use(logger)
app.use(cors())
app.use(express.json())


app.use('/product', productRoutes)
app.use('/user/', userRoutes)
app.use('/auth/', authRoutes)
app.use('/client/', clientRoutes)

app.all('*', (req, res) => {
  res.status(404).json({ message: '404 Rota não encontrada...' })
})

app.use(errorHandler)

// Inicia o servidor
app.listen(port, () => {
  console.log(`Example app listening on port ${port}`)
})

console.log((new Date()).toLocaleDateString('pt-BR'))