
class BoardCase
  #TO DO : la classe a 2 attr_accessor, sa valeur en string (X, O, ou vide), ainsi que son identifiant de case

  
  def initialize
    #TO DO : doit régler sa valeur, ainsi que son numéro de case
  end
morpion = []
i = 0
while i < 10
	morpion [i] = " "
	i = i + 1
end
j = 0
while j < 9

a1 = morpion[0]
a2 = morpion[1]
a3 = morpion[2]
b1 = morpion[3]
b2 = morpion[4]
b3 = morpion[5]
c1 = morpion[6]
c2 = morpion[7]
c3 = morpion[8]
d4 = morpion[9]


#morpion2 = [1,2,3,4,5,6,7,8,9]

puts "    1   2   3".green
puts "  +---+---+---+".green
print "A | ".green
print "#{a1}".red
print " | ".green
print "#{a2}".red
print " | ".green
print "#{a3}".red
puts " | ".green

puts "  +---+---+---+".green
print "B | ".green
print "#{b1}".red
print " | ".green
print "#{b2}".red
print " | ".green
print "#{b3}".red
puts " | ".green

puts "  +---+---+---+".green
print "C | ".green
print "#{c1}".red
print " | ".green
print "#{c2}".red
print " | ".green
print "#{c3}".red
puts " | ".green
puts "  +---+---+---+".green

puts " tour n°#{j} :0 ... 9 ?".yellow
print ">"
a = gets.chomp.to_i

if morpion[a] == " "

	if j%2 == 0 	
		morpion [a] = "X" 
	else
		morpion [a] = "O"
	end
	j = j + 1
else 
	puts "occupé"
end


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


