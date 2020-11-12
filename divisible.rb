# (1) Write a method that returns in 
# an array all the numbers between 1 and 100 that are divisible by 2 or 3 or 5. 
# Then call the method in your program and print out what it returns. 
# Call the program divisible.rb

new_array =[]
array_divby3 =[]
array_divby5 =[]

(1..100).each do |n|
     if n % 2 == 0 
        new_n = new_array.push(n)     
     elsif n % 3 ==0 
        new_n2 =array_divby3.push(n)
     else  n % 5 == 0
        new_n3 = array_divby5.push(n)
     end
end
puts "number divisable by 2 is #{new_array} "
puts "number divisable by 3 is #{array_divby3} "
puts "number divisable by 5 is #{array_divby5} "