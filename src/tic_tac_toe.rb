# frozen_string_literal: true
require 'lolcat'
require 'colorize'
require 'terminal-table'
require_relative 'game'
require_relative 'board'
require_relative 'player'
require_relative 'leaderboard'
require_relative 'operator'
puts '🍀🌻' * 20
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
puts ' '
puts '🌻🍀' * 20
def start_game(argv:)
  rounds = Operator.get_rounds(argument: argv.first)
  argv.clear
  puts ' '
  puts 'ᴛᴏᴅᴀʏ ɪs ᴍʏ ʟᴜᴄᴋʏ ᴅᴀʏ 😇'.colorize(:light_blue)
  puts 'sᴏᴍᴇʙᴏᴅʏ ɪs ʜᴇʀᴇ ᴛᴏ ᴘʟᴀʏ 👀'.colorize(:light_blue)
  sleep 1
  puts '
  █░█ █
  █▀█ █'.colorize(:light_green)
  print 'Wʜᴀᴛ ɪs ʏᴏᴜʀ ɴᴀᴍᴇ? : '.colorize(:light_green)
  name = gets.chomp.capitalize
  player = Player.new(name: name, sign: '❎')
  computer = Player.new(name: 'Bot', sign: '⭕')
  sleep 1
  puts "Hi, #{name}! 😎".colorize(:light_green)
  puts "Lᴇᴛ's sᴛᴀʀᴛ ᴘʟᴀʏɪɴɢ ᴛʜᴇ ᴄʟᴀssɪᴄ Tɪᴄ-Tᴀᴄ-Tᴏᴇ!  🎮 👇".colorize(:light_green)
  sleep 1
  puts 'ʏᴏᴜʀ sɪɢɴ ɪs ❎'.colorize(:light_green)
  sleep 1
  puts 'ʏᴏᴜʀ ᴏᴘᴘᴏɴᴇɴᴛ Bᴏᴛ\'s sɪɢɴ ɪs ⭕'.colorize(:light_green)
  sleep 1
  game = Game.new(rounds: rounds)
  leaderboard = Leaderboard.new(players: [player, computer])
  operator = Operator.new(player: player, computer: computer, game: game)
  operator.start_round
  title = '
  ██╗░░░░░███████╗░█████╗░██████╗░███████╗██████╗░██████╗░░█████╗░░█████╗░██████╗░██████╗░
  ██║░░░░░██╔════╝██╔══██╗██╔══██╗██╔════╝██╔══██╗██╔══██╗██╔══██╗██╔══██╗██╔══██╗██╔══██╗
  ██║░░░░░█████╗░░███████║██║░░██║█████╗░░██████╔╝██████╦╝██║░░██║███████║██████╔╝██║░░██║
  ██║░░░░░██╔══╝░░██╔══██║██║░░██║██╔══╝░░██╔══██╗██╔══██╗██║░░██║██╔══██║██╔══██╗██║░░██║
  ███████╗███████╗██║░░██║██████╔╝███████╗██║░░██║██████╦╝╚█████╔╝██║░░██║██║░░██║██████╔╝
  ╚══════╝╚══════╝╚═╝░░╚═╝╚═════╝░╚══════╝╚═╝░░╚═╝╚═════╝░░╚════╝░╚═╝░░╚═╝╚═╝░░╚═╝╚═════╝░'.colorize(:light_yellow)
  title_name = '
  █▄░█ ▄▀█ █▀▄▀█ █▀▀
  █░▀█ █▀█ █░▀░█ ██▄'
  title_scores = '
  █▀ █▀▀ █▀█ █▀█ █▀▀ █▀
  ▄█ █▄▄ █▄█ █▀▄ ██▄ ▄█'
  table = Terminal::Table.new(title: title, headings: [title_name, title_scores], rows: [[leaderboard.top_scored_players.first.name.colorize(:light_green), leaderboard.top_scored_players.first.scores], [leaderboard.top_scored_players.last.name.colorize(:light_green), leaderboard.top_scored_players.last.scores]])
  puts table
  puts ' '
  puts ' '
  if leaderboard.has_winner?
    puts "🎊🎊🏆 The winner is #{leaderboard.winners_name} 🏆🎊🎊".colorize(:cyan)
  else
    puts '👻 It\'s a Draw 👻'.colorize(:light_yellow)
  end
  sleep 1
  puts ''
  puts ('🌼' * 20)
  puts '
    █▀▀ ▄▀█ █▀▄▀█ █▀▀   █▀█ █░█ █▀▀ █▀█
    █▄█ █▀█ █░▀░█ ██▄   █▄█ ▀▄▀ ██▄ █▀▄'.colorize(:light_green)
  puts ''
  puts ('🌼' * 20)
  puts ''
  puts ''
  puts 'Dᴏ ʏᴏᴜ ᴡᴀɴɴᴀ ᴘʟᴀʏ ᴛʜᴇ ɢᴀᴍᴇ ᴀɢᴀɴɪɴ ? (ʏ /ɴ) : '
  response = gets.chomp
  start_game(argv: [nil]) if response.downcase == 'y'
end
start_game(argv: ARGV)
puts ('🌼' * 40)
puts '
▀█▀ █░█ ▄▀█ █▄░█ █▄▀ █▀   █▀▀ █▀█ █▀█   █▀█ █░░ ▄▀█ █▄█ █ █▄░█ █▀▀
░█░ █▀█ █▀█ █░▀█ █░█ ▄█   █▀░ █▄█ █▀▄   █▀▀ █▄▄ █▀█ ░█░ █ █░▀█ █▄█'.colorize(:light_green)
puts ''
puts ('🌼' * 40)