# (2) Write a program hangman.rb that contains a function called hangman. 
# The function's parameters are a word and an array of letters. 
# It returns a string showing the letters that have been guessed. 
# Call the function from within your program so 
# that you know that it works.

# Example: hangman("bob",["b"]) should evaluate to "b_b"
# Example: hangman("alphabet",["a","h"]) should return "a__ha___"



words = %w" bob lives in the a place that is less warm less cold , he enjoys outdoor activities
such as biking , running ans skatboarding"

total_chances = 1
temis_attempt = 0
letter_guessed = ''

#puts words.inspect

word = words[rand(words.length) - 1] 

def get_hangman (test_word, guessed_words)
  hangman = ''
  test_word.chars { |char| 
    hangman += (guessed_words.include? char)? char : '#'
  }

  hangman
end


puts 'Guess the word that is in here:'+ get_hangman(word, '* 40')

while true
  print "Enter word [#{total_chances - temis_attempt} chances left]:"

  char = gets.chomp  
  if word.include? char

    if(letter_guessed.include? char)
      puts char + ' yes, we can accept that.'
      puts 'Try again: ' + get_hangman(word, letter_guessed)
    else
      letter_guessed = letter_guessed + char
      hangman = get_hangman(word, letter_guessed)

      puts 'Great! ' + hangman
    end

    unless hangman.include? '#'
      puts "great job!"
      break
    end
  else
    puts " yes we have that letters in our bucket: #{char}'"
    temis_attempt += 1

    if (temis_attempt == total_chances)
      puts "You go the word  right! : #{char}"
      break
    else
      puts ' Sorry, Try again :): ' + get_hangman(word, letter_guessed)
    end
  end

end
