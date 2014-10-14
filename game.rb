require_relative "menu.rb"
require_relative "player.rb"

menu = Menu.new( 
	"Type 'new' to add character                   #", 
	"Type 'start' to start the battle              #",
	"Type 'quit' to exit the game                  #"
)

player = Player.new

while((choice = menu.get_menu_choice) != menu.quit)
  if choice == "new"    
    player.add_player

  elsif choice == "start"			
    puts "#=====================================================#"
    puts "#              Welcome to Battle Arena                #"
    puts "#-----------------------------------------------------#"
    puts "#    Battle Start :                                   #"	
    puts '#-----------------------------------------------------#'
    player.select_player
		
  else
    puts '', '     <PLEASE CHOOSE BETWEEN NEW, START OR QUIT!!!>', '' 
  end
end



 	
