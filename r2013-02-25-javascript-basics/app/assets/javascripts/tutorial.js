// /*
// multi-line comment
// alert('hello world');
// alert('hello world');
// */

// // single line comment


// var first = prompt('who are you?');
// // alert('you just entered ' + first);
// console.log('sup ' + first);

// var age = prompt('enter your age?');
// age = parseInt(age);

// if(age < 18)
// {
//   console.log('you are a minor');
// }
// else
// {
//   console.log('you are a major');
// }

// switch(age)
// {
//   case 10:
//     console.log('you are 10');
//     break;
//   case 20:
//     console.log('you are 20');
//     break;
//   case 30:
//     console.log('you are 30');
//     break;
//   case 40:
//     console.log('you are 40');
//     break;
//   default:
//     console.log('age not valid');
// }


// var colors = [];
// var color = prompt('enter a color: ');

// while(color != 'q')
// {
//   colors.push(color);
//   color = prompt('enter a color: ');
// }

// for(var index = 0; index <colors.length; index++)
// {
//   console.log('The color is ' + colors[index]);
// }

function square(number)
{
  return (number * number);
}

function cube(number)
{
  return (square(number) * number);
}

function area(length, width)
{
  return (length * width);
}


var response = prompt('(s)quare, (c)ube or (a)rea or (q)uit?');

while(response != 'q')
{
  switch(response)
  {
    case 's':
      var number = prompt('Enter a number to square: ');
      console.log(number + " squared is " + square(number));
      break;
    case 'c':
      var number = prompt('Enter a number to cube: ');
      console.log(number + " cubed is " + cube(number));
      break;
    case 'a':
      var llength = prompt('Enter a length: ');
      var width = prompt('Enter a width: ');
      console.log("The area is " + area(llength, width));
      break;
  }

  response = prompt('(s)quare, (c)ube or (a)rea or (q)uit?');
}






