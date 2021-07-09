function fizzBuzz(array) {
  let newArray = [];
  array.forEach(element => {
    if ((element % 3 === 0 || element % 5 === 0) && element % 15 !== 0) {
      newArray.push(element);
    }
  });
  return newArray;
}
