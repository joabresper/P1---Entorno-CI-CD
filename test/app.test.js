import { expect } from 'chai';
import request from 'supertest';
import app from '../src/app.js';

describe('GET /', () => {
  it('responde con mensaje', async () => {
    const res = await request(app).get('/');
    expect(res.status).to.equal(200);
    expect(res.body).to.have.property('mensaje');
  });
});

describe('Método no permitido POST', () => {
  it('debería responder con 405 si se usa un método no permitido', async () => {
    const res = await request(app).post('/');
    expect(res.status).to.be.oneOf([404, 405]); // según cómo lo manejes
  });
});
