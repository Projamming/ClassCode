# Prof. Perkin's answers!

# Question 1
print "What is your name? "
username = gets.chomp
print "Where are you from? "
home = gets.chomp
puts "Hello, #{username} from #{home}!"

# Question 2
print "What is the first name of your mother? "
mom_name = gets.chomp
print "What is your age? "
age = gets.chomp
puts "Your password is #{mom_name + age}."  # You can do arithmetic operations inside #{} as well!

# Question 3
options = ["heads", "tails"]
pc_choice = options.sample
puts "The computer flipped #{pc_choice}."

# Question 4
options = ["heads", "tails"]
pc_choice = options.sample
print "Choose heads or tails: "
player_pick = gets.chomp
puts "The computer flipped #{pc_choice}."
if pc_choice = player_pick.downcase
   print "You guessed correctly!"
else
   print "I'm sorry, you were wrong!"
end
