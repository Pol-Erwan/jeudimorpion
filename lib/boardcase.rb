
class BoardCase

  def initialize
    #TO DO : doit régler sa valeur, ainsi que son numéro de case
  end

morpion = []
morpiontab = ["A1","A2","A3","B1","B2","B3","C1","C2","C3"]

aaa = 1

while aaa == 1

i = 0
while i < 10
	morpion [i] = " "
	i = i + 1
end

tour_de_jeu = 1

while tour_de_jeu < 10

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

	if tour_de_jeu < 10
		if tour_de_jeu%2 == 0
  			puts " tour n°#{tour_de_jeu}, joueur 1 : quel case ?".yellow
		else
			puts " tour n°#{tour_de_jeu}, joueur 2 : quel case ?".blue
		end

    	    position = gets.chomp
    	    puts ">"
  	    z = 1
	  morpiontab.each do |item|
  		if position != item
			z = z + 1
  		else
			puts "case #{item}."
	
		  if morpion[z] == " "

			if tour_de_jeu%2 == 0 	
				morpion [z] = "X" 
			else
				morpion [z] = "O"
			end
		    tour_de_jeu = tour_de_jeu + 1
		  else 
		    puts "occupé"
		  end
  		end
	  end
	end
end

	puts "GAME OVER"
  	puts "Voulez-vous recommencez une nouvelle partie ? (y/n)"
  	repeat = gets.chomp
  	print ">"
		if repeat == "n"
		  aaa = 0
		  puts "non"
		  #break
		else 
		  aaa = 1	
		  puts "oui"					
		end
end


  if tour_de_jeu > 5 

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
 


