function isPrime(number) {
  if (number < 2) {
    return false;
  }
  for (i = 2; i <= number / 2; i++) {
    if (number % i === 0) {
      return false;
    }
  }
  return true;
}

function firstNPrimes(n) {
  let primeArray = [];
  let start = 1;
  while (primeArray.length < n) {
    start++;
    if (isPrime(start)) {
      primeArray.push(start)
    }
  }
  return primeArray
}

function sumOfNPrimes(n) {
  return firstNPrimes(n).reduce((a, b) => a + b, 0)
}
