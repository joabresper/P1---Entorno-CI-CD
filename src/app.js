import express from 'express';
import saludar from './saludo.js';

const app = express();

app.get('/', (req, res) => {
  const mensaje = saludar();
  res.json({ mensaje });
});

export default app;