
class BoardCase

  def initialize(name)
	@name = name
  end

puts " prénom joueur 1 ?".yellow				# entrer prénom joueur 1
print ">".yellow
player1 = Player.new(gets.chomp)

puts " prénom joueur 2 ?".red					# entrer prénom joueur 2
print ">".red
player2 = Player.new(gets.chomp)

morpion = []							#création tableau case à remplir
morpiontab = ["A1","A2","A3","B1","B2","B3","C1","C2","C3"]	#création tableau position case

partie_on = 1							# variable pour recommencer une partie

while partie_on == 1						# tant que partie_on = 1 on peut jouer

load = 0							# création variable pour remplir tableau
while load < 10
	morpion [load] = " "					# on rempli le tableau d'espace libre
	load = load + 1
end

tour_de_jeu = 1							# variable qui compte le nombre de tour

win = ["A","B","C","D","E","F","G","H","I"]			# tableau avec 9 items différents

while tour_de_jeu < 10 						# tant que le nombre de tour < 10 on repète

puts "*** % $ § % € MORPION € % § $ % *** " 			# titre du jeu

  puts "    1   2   3".green					# illustration quadrillage
  puts "  +---+---+---+".green
  print "A | ".green
  print "#{morpion[1]}"						# valeaur premiere case du morpion
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

  if tour_de_jeu <= 9 						# si le nombre de tour est < 9 on joue
    if tour_de_jeu%2 == 0					# tour_de_jeu pair joueur 2 joue
      puts " Tour n°#{tour_de_jeu}, #{player2.name} : à ton tour ! Nom de la case (en majuscule)".red
    else							# tour_de_jeu impair joueur 1 joue
      puts " Tour n°#{tour_de_jeu}, #{player1.name} : à ton tout ! Nom de la case (en majuscule)".yellow
    end

    position = gets.chomp					# attente position joueur
    puts ">"
    compteur = 1						# création variable compteur		
    morpiontab.each do |item|					# parcour chaque case du tableau position 
      if position != item					# si position différent position joueur
	compteur = compteur + 1					# augmenter le compteur de 1
      else
	system('clear')						# effacer terminal	
	puts "case #{item}."					# afficher case sélectionner	
	  if morpion[compteur] == " "				# vérifier emplacement libre
	    if tour_de_jeu%2 == 0 					
	      morpion [compteur] = "X".red 			# si tour de jeu pair mettre X morpion
	      win[compteur] = "x"				# si tour de jeu pair mettre X tableau win
	    else
	      morpion [compteur] = "O".yellow			# si tour de jeu impair mettre 0 	
	      win[compteur] = "O"				# si tour de jeu impair mettre 0
	    end
	    tour_de_jeu = tour_de_jeu + 1			# fin tour de jeu mettre + 1 tour_de_jeu
	  else 
	    system('clear')
	    puts "occupé"					#si emplacement pris mettre occupé
	  end
      end
    end
  end

  if win[1] == win[2] && win[3] == win[1]			# condition alignement pour la victoire
    puts "------ WIN LIGNE A -------" 
    tour_de_jeu = tour_de_jeu + 10
  end

  if win[4] == win[5] && win[6] == win[4]			# condition alignement pour la victoire
    puts "------ WIN LIGNE B ------ "
    tour_de_jeu = tour_de_jeu + 10
  end

  if win[7] == win[8] && win[9] == win[7]			# condition alignement pour la victoire
    puts "------ WIN LIGNE C ------ "
    tour_de_jeu = tour_de_jeu + 10
  end

  if win[1] == win[4] && win[7] == win[1]			# condition alignement pour la victoire
    puts "|||||| WIN COLONNE 1 ||||||"
    tour_de_jeu = tour_de_jeu + 10
  end

  if win[2] == win[5] && win[8] == win[2]			# condition alignement pour la victoire
    puts "|||||| WIN COLONNE 2 ||||||"
    tour_de_jeu = tour_de_jeu + 10
  end

  if win[3] == win[6] && win[9] == win[3]			# condition alignement pour la victoire
    puts "|||||| WIN COLONNE 3 ||||||"
    tour_de_jeu = tour_de_jeu + 10
  end

  if win[1] == win[5] && win[9] == win[1]			# condition alignement pour la victoire
    puts "\\\\\\ WIN DIAGONAL \\\\\\"
    tour_de_jeu = tour_de_jeu + 10
  end

  if win[3] == win[5] && win[7] == win[3]			# condition alignement pour la victoire
    puts "////// WIN DIAGONAL //////"
    tour_de_jeu = tour_de_jeu + 10
  end
end

  if tour_de_jeu == 9 
    puts " TIE GAME"
  end
	
  if tour_de_jeu%2 == 0 	
    puts "#{player1.name} tu as gagné !".yellow			# si tour_de_jeu pair joueur 1 gagne
  else
    puts "#{player2.name} tu as gagné !".red			# si tour_de_jeu impair jouer 2 gagne
  end

puts "GAME".red+"-OVER".yellow
puts "Voulez-vous recommencez une nouvelle partie ? (y/n)".green	# recommencer une partie ?
repeat = gets.chomp
print ">"
  if repeat == "n"
    partie_on = 0
    puts "NON".red
    break							# si réponse "n" fin du programme
  else 
    partie_on = 1	
    puts "OOOUUUAAAIIISSS".white				# si réponse "y" recommencer					
  end
end



end
 


