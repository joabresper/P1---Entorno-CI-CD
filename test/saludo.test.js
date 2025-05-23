import { expect } from 'chai';
import sinon from 'sinon';
import saludar from '../src/saludo';

describe('saludar', () => {
  let clock;

  afterEach(() => {
    if (clock) clock.restore();
  });

  it('deberia responder con ¡Buenos días!🌞', () => {
    const date = new Date('2023-10-01T09:00:00Z'); // 9 AM UTC
    clock = sinon.useFakeTimers(date.getTime());
    expect(saludar()).to.equal('¡Buenos días!🌞');
  });
});
