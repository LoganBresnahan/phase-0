# Leap Years

# I worked on this challenge [by myself, with: ].


# Your Solution Below

def leap_year?(year)
if (year % 4 == 0)
	if (((year % 4 == 0) && (year % 100 == 0)) && (year % 400 != 0))
		false
	else (year % 400 == 0) || ((year % 4 == 0) && (year % 100 != 0))
		true
	end
else
	false
end
end

leap_year?(2000)
