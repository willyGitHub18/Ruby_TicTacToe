require_relative "board_case"

class Board
	include Enumerable
	#attributs getter et setter réunis
	attr_accessor :cases


	def initialize
		@cases = Array.new(9) #création de l'array
		#on remplit le tableau case par case mais => @cases.fill(BoardCase.new) ne fonctionne pas car .fill méthode remplit toutes les cases à l'identique
    i = 0
		cases.each{ |x| @cases[i] = BoardCase.new #pour chaque case on utilise la class du fichier board_case pour savoir quoi afficher
			i += 1
            }
	end

	#Afficher le quadrillage
	def display
		#a chaque index on appelle l'attribut symbol du fichier board_case.rb
		puts "#{@cases[0].symbol}|#{@cases[1].symbol}|#{@cases[2].symbol}"
		puts "#{@cases[3].symbol}|#{@cases[4].symbol}|#{@cases[5].symbol}"
		puts "#{@cases[6].symbol}|#{@cases[7].symbol}|#{@cases[8].symbol}"
	end

	#Mettre à jour le board avec nouvelles entrées de chaque tour
	def update_case(i, symbol)
		#renvoie l'index de la case choisie et utilise methode update de board_case pour le symbol
		return @cases[i].update_symbol(symbol)
	end

	def show_index
		#on explique au joueur le numéro de chaque case
		puts "#{@cases[0] = 1}|#{@cases[1] = 2}|#{@cases[2] = 3}"
		puts "#{@cases[3] = 4}|#{@cases[4] = 5}|#{@cases[5] = 6}"
		puts "#{@cases[6] = 7}|#{@cases[7] = 8}|#{@cases[8] = 9}"
	end

	def game_ending
		# verifier si joueur avec symbol X a gagne
		  @victory1 = @cases[0] == "x" && @cases[1] == "x" && @cases[2] == "x" || #verifie une victoire Horizontale pour
   		 @cases[3] == "x" && @cases[4] == "x" && @cases[5] == "x" ||
   		 @cases[6] == "x" && @cases[7] == "x" && @cases[8] == "x" ||

   		 @cases[0] == "x" && @cases[3] == "x" && @cases[6] == "x" || #verfier une victoire verticale pour
       @cases[1] == "x" && @cases[4] == "x" && @cases[7] == "x" ||
       @cases[2] == "x" && @cases[5] == "x" && @cases[8] == "x" ||

       @cases[0] == "x" && @cases[4] == "x" && @cases[8] == "x" || #verifier una victoire diagonale
       @cases[2] == "x" && @cases[4] == "x" && @cases[6] == "x"

 		   @victory2 = @cases[0] == "o" && @cases[1] == "o" && @cases[2] == "o" ||
       @cases[3] == "o" && @cases[4] == "o" && @cases[5] == "o" ||
       @cases[6] == "o" && @cases[7] == "o" && @cases[8] == "o" ||

       @cases[0] == "o" && @cases[3] == "o" && @cases[6] == "o" ||
       @cases[1] == "o" && @cases[4] == "o" && @cases[7] == "o" ||
       @cases[2] == "o" && @cases[5] == "o" && @cases[8] == "o" ||

       @cases[0] == "o" && @cases[4] == "o" && @cases[8] == "o" ||
       @cases[2] == "o" && @cases[4] == "o" && @cases[6] == "o"
	end
end
