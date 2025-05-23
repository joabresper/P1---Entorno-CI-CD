import { expect } from 'chai';
import sinon from 'sinon';
import saludar from '../src/saludo.js';

describe('saludar', () => {
  let clock;

  afterEach(() => {
    if (clock) clock.restore();
  });

  it('deberia responder con ¡Buenos días!🌞', () => {
    clock = sinon.useFakeTimers(new Date('2023-10-01T09:00:00').getTime());
    expect(saludar()).to.equal('¡Buenos días!🌞');
  });

  it('deberia responder con ¡Buen provecho!🍴', () => {
    clock = sinon.useFakeTimers(new Date('2023-10-01T12:00:00').getTime());
    expect(saludar()).to.equal('¡Buen provecho!🍴');
  });

  it('deberia responder con ¡Buenas tardes!🍵', () => {
    clock = sinon.useFakeTimers(new Date('2023-10-01T15:00:00').getTime());
    expect(saludar()).to.equal('¡Buenas tardes!🍵');
  });

  it('deberia responder con ¡Buenas noches!🌛', () => {
    clock = sinon.useFakeTimers(new Date('2023-10-01T22:00:00').getTime());
    expect(saludar()).to.equal('¡Buenas noches!🌛');
  });
});

