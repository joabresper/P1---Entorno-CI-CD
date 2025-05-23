import express from 'express';

const app = express();

app.get('/', (req, res) => {
  const mensaje = saludar();
  res.json({ mensaje });
});

export default app;