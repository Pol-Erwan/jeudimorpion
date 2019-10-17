
class BoardCase

  def initialize(name)
	@name = name
    #TO DO : doit régler sa valeur, ainsi que son numéro de case
  end

puts " prénom joueur 1 ?"				# entrer son prénom
print ">"
player1 = Player.new(gets.chomp)

puts " prénom joueur 2 ?"
print ">"
player2 = Player.new(gets.chomp)

morpion = []
morpiontab = ["A1","A2","A3","B1","B2","B3","C1","C2","C3"]

partie_on = 1

while partie_on == 1

i = 0
while i < 10
	morpion [i] = " "
	i = i + 1
end

tour_de_jeu = 1

win = ["A","B","C","D","E","F","G","H","I"]

while tour_de_jeu < 10 

puts "*** % $ § % € MORPION € % § $ % *** " 

  puts "    1   2   3".green
  puts "  +---+---+---+".green
  print "A | ".green
  print "#{morpion[1]}"
  print " | ".green
  print "#{morpion[2]}"
  print " | ".green
  print "#{morpion[3]}"
  puts " | ".green

  puts "  +---+---+---+".green
  print "B | ".green
  print "#{morpion[4]}"
  print " | ".green
  print "#{morpion[5]}"
  print " | ".green
  print "#{morpion[6]}"
  puts " | ".green

  puts "  +---+---+---+".green
  print "C | ".green
  print "#{morpion[7]}"
  print " | ".green
  print "#{morpion[8]}"
  print " | ".green
  print "#{morpion[9]}"
  puts " | ".green
  puts "  +---+---+---+".green
  puts " " 

	if tour_de_jeu <= 9 
		if tour_de_jeu%2 == 0
  			puts " tour n°#{tour_de_jeu}, joueur 2 : quel case ?".red
		else
			puts " tour n°#{tour_de_jeu}, joueur 1 : quel case ?".yellow
		end

    	    position = gets.chomp
    	    puts ">"
  	    z = 1
	  morpiontab.each do |item|
  		if position != item
			z = z + 1
  		else
			system('clear')
			puts "case #{item}."
	
		  if morpion[z] == " "
			if tour_de_jeu%2 == 0 	
				morpion [z] = "X".red 
				win[z] = "x"
			else
				morpion [z] = "O".yellow
				win[z] = "O"
			end
		    tour_de_jeu = tour_de_jeu + 1
		  else 
		    system('clear')
		    puts "occupé"
		  end
  		end
	  end
	end

	if win[1] == win[2] && win[3] == win[1]
	puts "------ WIN LIGNE A -------" 
	tour_de_jeu = 11
	end

	if win[4] == win[5] && win[6] == win[4]
	puts "------ WIN LIGNE B ------ "
	tour_de_jeu = 11
	end

	if win[7] == win[8] && win[9] == win[7]
	puts "------ WIN LIGNE C ------ "
	tour_de_jeu = 11
	end

	if win[1] == win[4] && win[7] == win[1]
	puts "|||||| WIN COLONNE 1 ||||||"
	tour_de_jeu = 11
	end

	if win[2] == win[5] && win[8] == win[2]
	puts "|||||| WIN COLONNE 2 ||||||"
	tour_de_jeu = 11
	end

	if win[3] == win[6] && win[9] == win[3]
	puts "|||||| WIN COLONNE 3 ||||||"
	tour_de_jeu = 11
	end

	if win[1] == win[5] && win[9] == win[1]
	puts "\\\\\\ WIN DIAGONAL \\\\\\"
	tour_de_jeu = 11
	end

	if win[3] == win[5] && win[7] == win[3]
	puts "////// WIN DIAGONAL //////"
	tour_de_jeu = 11
	end
end

	puts "GAME".red+"-OVER".yellow
  	puts "Voulez-vous recommencez une nouvelle partie ? (y/n)".green
  	repeat = gets.chomp
  	print ">"
		if repeat == "n"
		  partie_on = 0
		  puts "NON".red
		else 
		  partie_on = 1	
		  puts "OOOUUUAAAIIISSS".white					
		end
end



end
 


