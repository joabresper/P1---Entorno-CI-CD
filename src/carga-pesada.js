function esPrimo(n, i = 2) {
  if (n < 2) return false;
  if (i * i > n) return true;
  if (n % i === 0) return false;
  return esPrimo(n, i + 1);
}

export function calcularPrimos(count, current = 2, primos = []) {
  if (primos.length === count) return primos;
  if (esPrimo(current)) primos.push(current);
  return calcularPrimos(count, current + 1, primos);
}

export function consumirMemoria(MB) {
  const arr = [];
  for (let i = 0; i < MB * 1024 * 1024 / 8; i++) {
    arr.push(Math.random());
  }
  return arr;
}
