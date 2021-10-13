  display_board(board)

  if someone_won?(board)
    prompt "#{detect_winner(board)} won!"
    winners += ["#{detect_winner(board)}"]
  else
    prompt "Cat's game!"
  end

  prompt "Player: #{winners.count('Player')} Computer: #{winners.count('Computer')}"
  break if winners.count('Player') == 5 || winners.count('Computer') == 5
end

prompt "Thanks for playing Tic-Tac-Toe. Goodbye."


prompt "Play again (y or n)"
answer = gets.chomp
break unless answer.downcase.start_with?('y')
