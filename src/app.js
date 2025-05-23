import express from 'express';
import saludar from 'src/saludo.js';

const app = express();

app.get('/', (req, res) => {
  const mensaje = saludar();
  res.json({ mensaje });
});

export default app;