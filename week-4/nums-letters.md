***What does puts do?***
It will output what you send to it to the console, but it will return
nil rather than the evaluated code.
***What is an integer? What is a float?***
An integer is a rounded number, example: 2
A Float is a floating point number; a decimal. example: 2.2
***What is the difference between float and integer division? How would you explain the difference to someone who doesn't know anything about programming?***
An integer will always output as an integer. Meaning, even if you expect
decimal Ruby will round down and evaluate to an integer. example: 9/2 = 4
(not 4.5)
A float will always output to a float. example: 4.0/2.0 = 2.0 (not just 2)


```ruby
#Hours in a year.
p 365 * 24

#Minutes in a decade
p ((24 * 60) * 365) * 10
```