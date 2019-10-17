
class BoardCase
  #TO DO : la classe a 2 attr_accessor, sa valeur en string (X, O, ou vide), ainsi que son identifiant de case

  
  def initialize
    #TO DO : doit régler sa valeur, ainsi que son numéro de case
  end

morpion = []
morpiontab = ["a1","a2","a3","b1","b2","b3","c1","c2","c3"]
print morpiontab

i = 0
while i < 10
	morpion [i] = " "
	i = i + 1
end

j = 0
while j < 9

puts "    1   2   3".green
puts "  +---+---+---+".green
print "A | ".green
print "#{morpion[1]}".red
print " | ".green
print "#{morpion[2]}".red
print " | ".green
print "#{morpion[3]}".red
puts " | ".green

puts "  +---+---+---+".green
print "B | ".green
print "#{morpion[4]}".red
print " | ".green
print "#{morpion[5]}".red
print " | ".green
print "#{morpion[6]}".red
puts " | ".green

puts "  +---+---+---+".green
print "C | ".green
print "#{morpion[7]}".red
print " | ".green
print "#{morpion[8]}".red
print " | ".green
print "#{morpion[9]}".red
puts " | ".green
puts "  +---+---+---+".green


puts " " 
puts "?????"
aaa = gets.chomp
puts ">"
z = 1

morpiontab.each do |item|

  if aaa != item
	puts "NO"
	z = z + 1
  else
	puts "gets.chomp = #{item} position = #{z}."
	
		if morpion[z] == " "

			if j%2 == 0 	
				morpion [z] = "X" 
			else
				morpion [z] = "O"
			end
			j = j + 1
		else 
			puts "occupé"
		end

  end

end

#puts " tour n°#{j} :0 ... 8 ?".yellow
#print ">"
#a = gets.chomp.to_i


if j > 4 

if morpion[0] == morpion[1] && morpion[2]
puts "WIN 0 1 2"
#break
end
if morpion[3] == morpion[4] && morpion[5]
puts "WIN 3 4 5"
#break
end
if morpion[6] == morpion[7] && morpion[8]
puts "WIN 6 7 8"
#break
end
if morpion[0] == (morpion[3] && morpion[6])
puts "WIN 0 3 6"
#break
end
if morpion[1] == (morpion[4] && morpion[7])
puts "WIN 1 4 7"
#break
end
if morpion[2] == (morpion[5] && morpion[8])
puts "WIN 2 5 8"
#break
end
if morpion[0] == (morpion[4] && morpion[8])
puts "WIN 0 4 8"
#break
end

end


end

puts "GAME OVER"
 
end


