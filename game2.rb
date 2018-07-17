require_relative "board_case"
require_relative "board"
require_relative "player"

class Game
    
  def initialize
    @players = []
      puts " Veuillez entrer le nom du 1er joueur ( o ) "
      name = gets.chomp 
      @players.push(addPlayer(name,"o"))
      #puts " Veuillez entrer le nom du 2eme joueur ( x )"
      #name = gets.chomp 
      #@players.push(addPlayer(name,"x"))
    
  end
    
    
  def addPlayer(name,symbole)
      player = Player.new(name,symbole)
      puts "Joueur 1 s'appelle : #{player.player_name}"
      return player
  end

  def go
      @board = Board.new
      @board.display
      #board.
      @board.display
  end

end


#game = Game.new
#game.go

bc = BoardCase.new(1)
puts bc.symbol
-------------
    



require_relative "board_case"

class Board
	#include Enumerable
	#attributs getter et setter réunis
	attr_accessor :cases

	
	def initialize
		@cases = Array.new(9)#création de l'array 

		#on rempli le tableau 9 fois par la class BoardCases qui définit une seule case
		9.times {|i|
			@cases.push(BoardCase.new(i))
		}
        
        @cases.each{
            |x| puts x
            }
        
        
	end

	#Afficher le quadrillage
	def display
        
        @cases.each{
            |x| puts x
            }
		#print @cases[0..2]
		#print @cases[3..5]
		#print @cases[6..8]
	end

end

board = Board.new()
board.display
