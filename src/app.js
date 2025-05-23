import express from 'express';
import saludar from './saludo.js';

const app = express();

app.get('/', (req, res) => {
  const mensaje = saludar();
  const otroMensaje = '¡Hola, mundo! 🌍';
  res.json({ mensaje, otroMensaje });
});

export default app;