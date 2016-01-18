{qq, q, a} = require './dsl'
exports.qq = qq [
  q 'Question 1',
    a 'A'
    a 'B'
    a 'C'
  q 'Question 2',
    a '1'
    a '2'
    a '3'
]
