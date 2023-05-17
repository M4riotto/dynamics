import express from 'express'
import cors from 'cors'
import productRoutes from './routes/productRoutes.js'
import authRoutes from './routes/authRoutes.js'
import userRoutes from './routes/userRoutes.js'
import { SERVER } from './config.js'

const app = express()
const port = SERVER.PORT

app.use(cors())
app.use(express.json())


app.use('/product', productRoutes)
app.use('/user/', userRoutes)
app.use('/auth/', authRoutes)

app.all('*', (req, res) => {
  res.status(404).send('404 Rota não encontrada!')
  res.status(404).json({ message: '404 Rota não encontrada...' })
})

app.listen(port, () => {
  console.log(`Example app listening on port ${port}`)
})