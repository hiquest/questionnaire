# questionnaire
The easiest way to ask user questions via command line.
![](https://dl.dropboxusercontent.com/u/1995551/misc/questionnaire.png)

Installation
-----
```bash
$ npm install questionnaire
```

Usage
-----
```javascript
var questionnaire = require('questionnaire');

var questions = [
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
];

var answers = questionnaire(questions);
console.log("Here are the answers: #{JSON.stringify(answers)}")
```

Contributing
-----
Feel free to add issues, fork and send pull-requests.
