import express from 'express';
import saludar from './saludo.js';

const app = express();

app.get('/', (req, res) => {
  const mensaje = saludar();
  res.json({ mensaje });
});

app.get('/download', (req, res) => {
  const bytes = 10 * 1024 * 1024; // 10 MB
  const buffer = Buffer.alloc(bytes, 'a');

  res.setHeader('Content-Disposition', 'attachment; filename="dummy.txt"');
  res.setHeader('Content-Type', 'text/plain');
  res.send(buffer);
});

export default app;