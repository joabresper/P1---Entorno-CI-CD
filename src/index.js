import app from './app.js';

if (process.env.NODE_ENV !== 'test') {
  
  const port = process.env.PORT || 3000;

  app.listen(3000, () => {
    console.log('Servidor corriendo en http://localhost:${port}');
  });
}

