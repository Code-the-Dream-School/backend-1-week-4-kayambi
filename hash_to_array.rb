# (3) Write a program that collects 5 keys and 5 values from the user, 
# and stores them in a hash.  Write a function that accepts the hash as 
# optional parameters and prints out an array of keys and an array of values. 
#  Call the function within your program so you know it works. (Question: Can you find online information on Ruby hash methods that will help with this function?) 
#  Call this program hash_to_array.rb.




contact_list = []

def ask(question , kind = "string")
    print question + " "
    answer = gets.chomp.to_i if kind == "number"
    return answer
end

# test ask method

answer = ask("Enter your first name ")

puts answer

adding to contacts

def add_contact
    contact = {'fname' => " ", 'lname' => " ", 'location' => " " , "zipcode_number" => [], "phone_number" => []}
    contact["fname"] = ask("What is your first name ?")
    answer = " "
    while answer != "n" 
        answer = ask("do you want to add your last name ? (y/n)")

        if answer == "y"
            lname = ask("enter last name :")
            contact["lname"].push(lname)
        end
    end
    return contact
end 
answer = " "
while answer != "n"
    contact_list.push(add_contact)
    answer = ask("add other ?(y/n)")
end
# puts ""

# Printint the contact list

contact_list.each do contact
    puts "fname #{name["fname"]}"
    if contact["phone_number"].size > 0 
        contact["phone_number"].each do |phone_number|
            puts "phone_number: #{phone_number}"
    end 
end

     puts "---- \n"
end


#  Another option to colleect keys and values using hash options
def hello_msg_with_an_options_hash(name_parts={})
    fname = name_parts.fetch( :fname)
    lname = name_parts.fetch( :lname)
    location = name_parts.fetch(:location)
    age = name_parts.fetch(:age)
    weight = name_parts.fetch(:weight)
    "My namee is : #{fname} #{lname} I am from #{location}, I am #{age} years old , I weight #{weight} lbs" 
end 

p hello_msg_with_an_options_hash(fname:"musaf", lname:"kay", location:"Oakland" , age:34, weight:187)
