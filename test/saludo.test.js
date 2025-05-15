import { expect } from 'chai';
import request from 'supertest';
import app from '../src/index.js';

describe('GET /', () => {
  it('debería responder con un saludo', async () => {
    const res = await request(app).get('/');
    expect(res.status).to.equal(200);
    expect(res.body).to.have.property('mensaje');
  });
});
