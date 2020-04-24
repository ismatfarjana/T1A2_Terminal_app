require 'lolcat'
require 'colorize'
require_relative 'game'
require_relative 'board'
require_relative 'player'
require_relative 'leaderboard'


puts '
░██╗░░░░░░░██╗███████╗██╗░░░░░░█████╗░░█████╗░███╗░░░███╗███████╗
░██║░░██╗░░██║██╔════╝██║░░░░░██╔══██╗██╔══██╗████╗░████║██╔════╝
░╚██╗████╗██╔╝█████╗░░██║░░░░░██║░░╚═╝██║░░██║██╔████╔██║█████╗░░
░░████╔═████║░██╔══╝░░██║░░░░░██║░░██╗██║░░██║██║╚██╔╝██║██╔══╝░░
░░╚██╔╝░╚██╔╝░███████╗███████╗╚█████╔╝╚█████╔╝██║░╚═╝░██║███████╗
░░░╚═╝░░░╚═╝░░╚══════╝╚══════╝░╚════╝░░╚════╝░╚═╝░░░░░╚═╝╚══════╝'


puts '
████████╗░█████╗░
╚══██╔══╝██╔══██╗
░░░██║░░░██║░░██║
░░░██║░░░██║░░██║
░░░██║░░░╚█████╔╝
░░░╚═╝░░░░╚════╝░'

puts '
████████╗██╗░█████╗░░░░░░░████████╗░█████╗░░█████╗░░░░░░░████████╗░█████╗░███████╗
╚══██╔══╝██║██╔══██╗░░░░░░╚══██╔══╝██╔══██╗██╔══██╗░░░░░░╚══██╔══╝██╔══██╗██╔════╝
░░░██║░░░██║██║░░╚═╝█████╗░░░██║░░░███████║██║░░╚═╝█████╗░░░██║░░░██║░░██║█████╗░░
░░░██║░░░██║██║░░██╗╚════╝░░░██║░░░██╔══██║██║░░██╗╚════╝░░░██║░░░██║░░██║██╔══╝░░
░░░██║░░░██║╚█████╔╝░░░░░░░░░██║░░░██║░░██║╚█████╔╝░░░░░░░░░██║░░░╚█████╔╝███████╗
░░░╚═╝░░░╚═╝░╚════╝░░░░░░░░░░╚═╝░░░╚═╝░░╚═╝░╚════╝░░░░░░░░░░╚═╝░░░░╚════╝░╚══════╝'

  

rounds = ARGV.first.to_i
ARGV.clear

puts 'Wʜᴀᴛ ɪs ʏᴏᴜʀ ɴᴀᴍᴇ?'
name = gets.chomp.capitalize
player = Player.new(name: name, sign: '❌')
computer = Player.new(name: 'Bot', sign: '⭕')
puts 'ʏᴏᴜʀ sɪɢɴ ɪs ❌'
sleep 1
puts 'ʏᴏᴜʀ ᴏᴘᴘᴏɴᴇɴᴛ Bᴏᴛ\'s sɪɢɴ ɪs ⭕'
sleep 1


game = Game.new(rounds: rounds)
board = Board.new
leaderboard = Leaderboard.new(players: [player, computer])

def take_position(player: , computer: , board:, game:)
  if board.continue_round?(player: player, computer: computer)
    puts 'Cʜᴏᴏsᴇ ᴀ ᴘʟᴀᴄᴇ ғʀᴏᴍ 1 ᴛᴏ 9 ᴛᴏ ᴘʟᴀᴄᴇ ʏᴏᴜʀ sɪɢɴ ᴏɴ ᴛʜᴇ ʙᴏᴀʀᴅ'
    position = gets.chomp.to_i
    board.place_sign(sign: player.sign, position: position)
    sleep 1
    computers_position = board.available_places.sample
    board.place_sign(sign: computer.sign, position: computers_position)
    puts "Bᴏᴛ ᴄʜᴏᴏsᴇ ᴘᴏsɪᴛɪᴏɴ #{computers_position}"
    sleep 1
    board.display
    take_position(player: player, computer: computer, board: board, game: game)
  else
    game.reduce_round
    if board.winning_pattern?(sign: player.sign)
      player.increase_scores
      puts "Yᴏᴜ ᴡɪɴ ᴛʜɪs ʀᴏᴜɴᴅ"
    elsif board.winning_pattern?(sign: computer.sign)
      computer.increase_scores
      puts "Bᴏᴛ ᴡɪɴs ᴛʜɪs ʀᴏᴜɴᴅ"
    else
      puts 'Tʜɪs ʀᴏᴜɴᴅ ᴡᴀs ᴀ ᴅʀᴀᴡ'
    end
  end
end

if game.round_left?
  board.display
  take_position(player: player, computer: computer, board: board, game: game)

end

puts ' '
puts ' '
puts '
  █▀▀ ▄▀█ █▀▄▀█ █▀▀   █▀█ █░█ █▀▀ █▀█
  █▄█ █▀█ █░▀░█ ██▄   █▄█ ▀▄▀ ██▄ █▀▄'