***What does puts do?***
It will output what you send to it to the console, but it will return
nil rather than the evaluated code.

***What is an integer? What is a float?***
An integer is a rounded number, example: 2
A Float is a floating point number. A decimal, example: 2.2

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

***How does Ruby handle addition, subtraction, multiplication, and division of numbers?***
Almost just like a calculator! With division, you would have to specify between a decimal and an integer.

***What is the difference between integers and floats?***
See previous answer at the top^

***What is the difference between integer and float division?***
See previous answer at the top^

***What are strings? Why and when would you use them?***
Strings are characters, symbols, numbers, etc that occur within 
parenthesis in Ruby. Strings, will often represent readable text which is 
useful for manipulating things like data or sentences.

***What are local variables? Why and when would you use them?***
Local variables are a storage mechanism in Ruby. They start with a 
lowercase letter and can store values that you assign to them. 
Local variables can also be renamed, the newest value takes precedence.

***How was this challenge? Did you get a good review of some of the basics?***
Yes, it was very basic which is a good thing! Hopefully this gives us 
a good grounding.