#Attr Methods

# I worked on this challenge [by myself, with:]

# I spent [#] hours on this challenge.

class NameData
	attr_accessor :name
end


class Greetings
	def initialize
		@namedata = NameData.new
	end

	def greeting
		greets = @namedata.name=("Logan") #Must have = sign to work.
		puts "Hello #{greets}. How are you?"
	end
end

greet = Greetings.new
greet.greeting


# Reflection
=begin 
What is a reader method?
	A reader method is a method that would be called to display  or "read"
	data. 
	def reader
		@read
	end

What is a writer method?
	A writer method is a method that would be called with an equals
	argument to set data to a given value.
	def writer=(write_here)
		@write = write_here
	end


What do the attr methods do for you?
	They are there to shorten the code and make it look more presentable.
	You can reduce the code by many lines with the attr methods
	attr_accessor :read, :write, :run, :jump, etc...


Should you always use an accessor to cover your bases? Why or why not?
	No, sometimes you will only want attr_reader or attr_writer. If you
	don't want your readers to be writable then dont use accessor.

What is confusing to you about these methods?
	I still need to visually write the code the long way in my head when
	implimenting the attr's in other parts of the code to make sure I'm 
	useing the methods correctly. I also tend to forget the = when 
	setting a attr_writer method.

=end