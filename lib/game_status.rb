def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

WIN_COMBINATIONS = [[0, 1, 2],[3, 4, 5],[6, 7, 8],[2, 5, 8],[1, 4, 7],[0, 3, 6],[0, 4, 8],[6, 4, 2]]
 
def won?(board)
  WIN_COMBINATIONS.detect do |combo|
    board[combo[0]] == "X" && board[combo[1]] == "X" && board[combo[2]] == "X" ||  board[combo[0]] == "O" && board[combo[1]] == "O" && board[combo[2]] == "O" 
    end
  end
  
def full?(board)
  board.none? (" ")
end

def draw?(board)
  !won?(board)
  end

def over?(board)
  won?(board) || full?(board)
end

def winner(board)
  x = won?(board)
  y = x[0]
  
  if board[y] == "X"
    puts "X"
  else 
    puts "Y"
  end
end

  #coords = won?(board)
  #thing = coords.select do |i| 
    #board[i].include? ("X")
  
  #if thing = "X"
    #puts "X"
    #else 
      #puts "O"
    #end
  #end
#end
  
  
  #won?(board).detect 
  #x = list[0]
  #if board[x] == "X"
    #puts "X"
  #else
    #puts "O"
  #end
#end