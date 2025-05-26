import app from './app.js';

if (process.env.NODE_ENV !== 'test' && process.env.VERCEL !== '1') {
  const port = process.env.PORT || 3000;

  app.listen(port, () => {
    console.log(`Servidor corriendo en http://localhost:${port}`);
  });
}


