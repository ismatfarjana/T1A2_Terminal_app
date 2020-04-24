class Operator
  def initialize(player:, computer:, game:)
    @player = player
    @computer = computer
    @game = game
  end

  def start_round(board: Board.new)
    if game.round_left?
      sleep 2
      board.display
      take_position(board: board)
      game.reduce_round
      start_round
    end
  end

  private

  attr_reader :player, :computer, :game

  def take_position(board:)
    one ='𝟙'
    nine = '𝟡'
    if board.continue_round?(player: player, computer: computer)
      puts 'Cʜᴏᴏsᴇ ᴀ ᴘʟᴀᴄᴇ ғʀᴏᴍ '.colorize(:light_green) +"#{one}".colorize(:light_red)+' ᴛᴏ '.colorize(:light_green)+"#{nine}".colorize(:light_red)+' ᴛᴏ ᴘʟᴀᴄᴇ ʏᴏᴜʀ sɪɢɴ ᴏɴ ᴛʜᴇ ʙᴏᴀʀᴅ'.colorize(:light_green).bold
      position = gets.chomp.to_i
      board.place_sign(sign: player.sign, position: position)
      sleep 1
      computers_position = board.available_places.sample
      if board.available_places.size != 0
        board.place_sign(sign: computer.sign, position: computers_position)
        puts "Bᴏᴛ ᴄʜᴏᴏsᴇ ᴘᴏsɪᴛɪᴏɴ #{computers_position}".colorize(:light_cyan)
      end
      sleep 1
      board.display
      take_position(board: board)
    else
      if board.winning_pattern?(sign: player.sign)
        player.increase_scores
        puts 'Yᴏᴜ ᴡɪɴ ᴛʜɪs ʀᴏᴜɴᴅ'.colorize(:light_red)
      elsif board.winning_pattern?(sign: computer.sign)
        computer.increase_scores
        puts 'Bᴏᴛ ᴡɪɴs ᴛʜɪs ʀᴏᴜɴᴅ'.colorize(:light_cyan)
      else
        puts 'Tʜɪs ʀᴏᴜɴᴅ ᴡᴀs ᴀ ᴅʀᴀᴡ'.colorize(:yellow)
      end
    end
  end
end