readLine = require('readline-sync')
_        = require('underscore')

prepareText = (options) ->
  _.map(options, (option, ind) -> "(#{ind+1}) #{option}")
   .join(" or ") + '?'

ask = (q) ->
  text = q.text || prepareText(q.options)
  text = "#{text} "
  answer = readLine.question(text)
  i = parseInt(answer, 10)
  selected = q.options[i - 1]
  unless selected
    console.log("Unsupported answer: please enter a number from 1 to #{q.options.length}")
    return ask(q)
  [q.id, selected]

questionnaire = (questions) ->
  _.chain(questions)
   .map(ask)
   .object()
   .value()

module.exports = questionnaire
