import { calcularPrimos } from './primos.js';

function saludar() {
	const hora = new Date().getHours();

	calcularPrimos(800)
  
	if (hora >= 6 && hora < 12) {
	  return '¡Buenos días!🌞';
	} else if (hora >= 12 && hora < 14) {
	  return '¡Buen provecho!🍴';
	} else if (hora >= 14 && hora < 20) {
	  return '¡Buenas tardes!🍵';
	} else {
	  return '¡Buenas noches!🌛';
	}
  }

export default saludar;
