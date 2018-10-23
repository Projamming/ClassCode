# Class for 181023

# ======================= Ruby as a Calculator =======================
# Basic Operations: +, -, *, /, **, %

# ======================= Basic Ruby Data Types =======================
# Function
def datatype
  # Data -- information stored in a computer.
  # String -- sequence of characters. single ('') or double quotes ("").
  puts "Hello"
  puts 'Hi'

  # Integer -- integers.
  puts 40

  # Float -- numbers with decimals.
  puts 40.5

  # Boolean -- true/false values.
  puts true
  puts false

  # .methods -- shows all the methods available for the data type.
  puts false.methods
end

# =======================  Basic Ruby Commands  =======================
def strings
  # print -- prints without new line.
  # puts -- prints with new line.
  print "Hello"
  print "Dave"
  print "\n"  # New line character
  puts "Hello Dave"

  # .downcase -- Turns every letter into downcase.
  # .upcase -- Capitalizes every letter.
  puts "JIiN".downcase
  puts "hello cLaSs".upcase

  # .to_s -- Turns another data type into string.
  puts 40.to_s + "20"

  # .to_i -- String to integer.
  puts "40".to_i + 20
  
  # What would happen if we did not do these conversions?
  # ==> TYPE ERROR.
end

# gets -- gets user input from the command line.
# .chomp -- gets rid of the newline character.
def greet
  # Greets users.
  print "What is your name? "
  username = gets.chomp
  puts "Hello, #{username}."
end

# =======================  EX 1  =======================
# Every input you get is a string!
def until100
  # Tells when you will be age 100.
  print "Enter your current age: "
  input = gets.chomp
  year100 = 2018 + (100 - input.to_i)
  # String interpolation: #{}
  return "You will be 100 in year #{year100}."
end

# =======================  EX 2  =======================
def rock_paper_scissor
  # Plays a round of rock paper scissor with the computer.

  # List!
  options = ["Rock", "Paper", "Scissor"]

  print "Rock, Paper, or Scissor? "
  input = gets.chomp.downcase

  # .sample -- similar to .choose in Sonic Pi
  # (Returns random element from the list)
  pc_choice = options.sample
  puts "The computer picked #{pc_choice.upcase}."
  puts "You picked #{input.upcase}."

    # If statement.
	if pc_choice == "Rock"
	  if input == "rock"
	  	return "Tie :/"
	  elsif input == "paper"
	  	return "Win :)"
	  else
	  	return "Lose :("
	  end
	elsif pc_choice == "Paper"
	  if input == "rock"
	  	return "Lose :("
	  elsif input == "paper"
	  	return "Tie :/"
	  else
	  	return "Win :)"
	  end
	else
	  if input == "rock"
	  	return "Win :)"
	  elsif input == "paper"
	  	return "Lose :("
	  else
	  	return "Tie :/"
	  end
	end
end

# =======================  EX 2 (more CS-like!)  =======================
def shorter_rps
  # Shorter rock paper scissor game.

  options = ["Rock", "Paper", "Scissor"]

  print "Rock, Paper, or Scissor? "
  input = gets.chomp.downcase

  pc_choice = options.sample
  puts "The computer picked #{pc_choice.upcase}."
  puts "You picked #{input.upcase}."

  if (pc_choice == "Rock" && input == "paper") ||
		 (pc_choice == "Paper" && input == "scissor") ||
		 (pc_choice == "Scissor" && input == "rock")
     return "Win :)"
  elsif (pc_choice == "Rock" && input == "rock") ||
		 (pc_choice == "Paper" && input == "paper") ||
		 (pc_choice == "Scissor" && input == "scissor")
     return "Tie :/"
  else
     return "Lose :("
  end
end
