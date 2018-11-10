# Answers to Q2 and Q3.

# Uses .join method, which prints each element in the list; .join(' ') prints each element separated with a blank space.
def q2
 my_list = [1, 8, 1, 0, 5]
 3.times do
   print my_list.join(" ")
   print (" ")  # Blank space before rerun through list.
 end
end

# Uses a counter to index each element in the list
def q2_2
 my_list = [1, 8, 1, 0, 5]
 3.times do
    index = 0
    my_list.length.times do
      print my_list[index]; print " "
      index += 1
  end
 end
end

# Uses a code block! (This is beyond the scope of this course, but just wanted to show another cool approach to the problem)
def q2_3
  my_list = [1, 8, 1, 0, 5]
  3.times do
    my_list.each {|x| print(x.to_s + " ")}
  end
end

def q3
 print "Enter a word:"
 word = gets.chomp
 scramble = word[1..-1].chars.shuffle.join  # Scrambles only the middle
 puts "Scrambled version: #{word[0] + scramble + word[-1]}"
end
