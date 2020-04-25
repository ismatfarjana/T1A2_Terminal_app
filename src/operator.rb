# frozen_string_literal: true
class Operator
  ONE = '𝟙'
  NINE = '𝟡'
  def initialize(player:, computer:, game:)
    @player = player
    @computer = computer
    @game = game
  end
  def self.get_rounds(argument:)
    raise ArgumentError if argument.to_i.zero?
    argument.to_i
  rescue ArgumentError
    print 'Nᴜᴍʙᴇʀ ᴏғ ʀᴏᴜɴᴅs ʏᴏᴜ ᴡᴀɴɴᴀ ᴘʟᴀʏ : '
    get_rounds(argument: gets.chomp)
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
  def place_choise_message
    'Cʜᴏᴏsᴇ ᴀ ᴘʟᴀᴄᴇ ғʀᴏᴍ '.colorize(:light_green) + ONE.to_s.colorize(:light_red) + ' ᴛᴏ '.colorize(:light_green) + NINE.to_s.colorize(:light_red) + ' ᴛᴏ ᴘʟᴀᴄᴇ ʏᴏᴜʀ sɪɢɴ ᴏɴ ᴛʜᴇ ʙᴏᴀʀᴅ : '.colorize(:light_green).bold
  end
  def place_player_sign(board:, position:)
    board.place_sign(sign: player.sign, position: position)
    puts "ʏᴏᴜ ᴄʜᴏᴏsᴇ ᴘᴏsɪᴛɪᴏɴ #{position}".colorize(:light_yellow)
  rescue ArgumentError
    puts 'ʏᴏᴜʀ ᴄʜᴏsᴇɴ ᴘʟᴀᴄᴇ ɪs ɴᴏᴛ ᴀᴠᴀɪʟᴀʙʟᴇ'
    puts 'ᴘʟᴇᴀsᴇ ᴄʜᴏᴏsᴇ ᴀ ᴅɪғғᴇʀᴇɴᴛ ᴘʟᴀᴄᴇ'
    print place_choise_message
    position = gets.chomp.to_i
    place_player_sign(board: board, position: position)
  end
  def take_position(board:)
    if board.continue_round?(player: player, computer: computer)
      print place_choise_message
      position = gets.chomp.to_i
      place_player_sign(board: board, position: position)
      sleep 1
      computers_position = board.available_places.sample
      unless board.available_places.empty?
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

