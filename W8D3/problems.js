function titleize(arr, callback) {
  let titleized = arr.map(name => 'Mx. ' + name.charAt(0).toUpperCase() + name.slice(1) + ' Jingleheimer Schmidt');
  return titleized.forEach(callback);
}

function print(element) {
  console.log(element);
}

arr1 = ['Mary', 'Brian', 'Leo']

// titleize(arr1, print)


const Elephant = function(name, height, tricks) {
  this.name = name;
  this.height = height;
  this.tricks = tricks;
}
Elephant.prototype.trumpet = function() {
  console.log(`${this.name} the elephant goes 'phrRRRRRRRRRRR!!!!!!!'`);
}
Elephant.prototype.grow = function() {
  this.height += 12;
  console.log(`${this.name} the elephant grew from ${this.height - 12} inches to ${this.height} inches!`);
}
Elephant.prototype.addTrick = function(trick) {
  this.tricks.push(trick);
  console.log(`${this.name} the elephant is now capable of ${trick}!`);
}
Elephant.prototype.play = function() {
  const random = Math.floor(Math.random() * this.tricks.length);
  console.log(`${this.name} the elephant is ${this.tricks[random]}!`);
}
Elephant.paradeHelper = function(elephant) {
  console.log(elephant.name + ' is trotting by!');
}

let ellie = new Elephant("Ellie", 185, ["giving human friends a ride", "playing hide and seek"]);
let charlie = new Elephant("Charlie", 200, ["painting pictures", "spraying water for a slip and slide"]);
let kate = new Elephant("Kate", 234, ["writing letters", "stealing peanuts"]);
let micah = new Elephant("Micah", 143, ["trotting", "playing tic tac toe", "doing elephant ballet"]);
let herd = [ellie, charlie, kate, micah];

ellie.trumpet();
ellie.grow();
ellie.grow();
ellie.grow();
ellie.addTrick('taking a bath');
ellie.play();
Elephant.paradeHelper(ellie);
herd.forEach(elephant => Elephant.paradeHelper(elephant));


function dinerBreakfast(food) {
  let order = ['cheesy scrambled eggs'];
  function addToOrder() {
    order.push(food);
    console.log(`I'd like ${order.join(' and ')} please`);
  }
  return addToOrder();
}

let bfastOrder = dinerBreakfast();
bfastOrder('sausages');
bfastOrder('ham');
bfastOrder('pancakes');
