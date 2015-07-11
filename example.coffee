q = require('./index')

questions = [
  {
    id: 'os',
    text: 'Do you prefer (1) OSX, (2) Windows or (3) Linux?',
    options: ['osx', 'windows', 'linux']
  },
  {
    id: 'coffee',
    text: 'Do you like coffee with (1) milk or with (2) sugar?',
    options: ['milk', 'sugar']
  },
  {
    id: 'actor',
    options: ['Stephen Fry', 'Hugh Laurie']
  }
]

console.log(q(questions));


