import express from 'express';
import { saludar } from './saludo.js';

const app = express();

app.get('/', (req, res) => {
  const mensaje = saludar();
  res.json({ mensaje });
});

if (process.env.NODE_ENV !== 'test') {
  app.listen(3000, () => {
    console.log('Servidor corriendo en http://localhost:3000');
  });
}

export default app;
