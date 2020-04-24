require 'lolcat'
require_relative 'game'
require_relative 'board'
require_relative 'player'

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

if game.round_left?
  board.display
  puts 'Cʜᴏᴏsᴇ ᴀ ᴘʟᴀᴄᴇ ғʀᴏᴍ 1 ᴛᴏ 9 ᴛᴏ ᴘʟᴀᴄᴇ ʏᴏᴜʀ sɪɢɴ ᴏɴ ᴛʜᴇ ʙᴏᴀʀᴅ'
  position = gets.chomp.to_i
  board.place_sign(sign: player.sign, position: position)
  sleep 1
  computers_position = board.available_places.sample
  board.place_sign(sign: computer.sign, position: computers_position)
  puts "Bᴏᴛ ᴄʜᴏᴏsᴇ ᴘᴏsɪᴛɪᴏɴ #{computers_position}"
  sleep 1
  board.display
else
  puts ' '
  puts ' '
  puts '
  █▀▀ ▄▀█ █▀▄▀█ █▀▀   █▀█ █░█ █▀▀ █▀█
  █▄█ █▀█ █░▀░█ ██▄   █▄█ ▀▄▀ ██▄ █▀▄'
end

