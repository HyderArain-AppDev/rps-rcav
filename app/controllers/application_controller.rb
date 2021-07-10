class ApplicationController < ActionController::Base
  layout(false)

  # Add your actions below this line
  # ================================

  def homepage
    render({ :template => "game_templates/rules.html.erb"})
  end

  def play_rock
    # write code when user plays rock
    
    
    @comp_move = ["rock", "paper", "scissors"].sample
    
    if @comp_move == "rock" 
      @outcome = "tied"
    elsif @comp_move == "paper" 
        @outcome = "lost"
    elsif  @comp_move == "scissors" 
        @outcome = "won"
    end 

    render({:template => "game_templates/user_rock.html.erb"})
  end
end
