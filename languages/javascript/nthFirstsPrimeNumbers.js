function isPrime(number)
{
  let arr = new Array(number).fill(0).map((_, i) => i+1);
  arr = arr.filter(div => number % div === 0);
  return arr.length === 2;
}

function nthFirstsPrimes(num)
{
  let arr = new Array(num).fill(0).map((_, i) => i+1);
  return arr.filter(isPrime);
}
