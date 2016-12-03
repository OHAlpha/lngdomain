rails g scaffold Wof::Game name:string sequence:integer state:integer status:string details:text
rails g scaffold Wof::GamePlayer game:references user:references position:integer score:integer state:integer status:string details:text 
rails g scaffold Wof::GameModerator game:references user:references role:string 
rails g scaffold Wof::PuzzleCategory name:string description:text
rails g scaffold Wof::Puzzle puzzle:string kind:string
rails g scaffold Wof::CategoryPuzzle puzzle_category:references puzzle:references
rails g scaffold Wof::PuzzleWord puzzle:references word:string orientation:string row:integer column:integer
rails g scaffold Wof::GamePuzzle game:references puzzle:references role:string 
rails g scaffold Wof::GameAction game:references game_puzzle:references game_user:references kind:string score:integer details:text sequence:integer
rails g scaffold Wof::GameModeratorAction game:references game_puzzle:references game_user:references game_action:references kind:string score:integer details:text sequence:integer 
