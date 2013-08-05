class Player
  attr_reader :lives

	def initialize(game_window)
		@game_window = game_window
		@icon = Gosu::Image.new(@game_window, "images/cartoon_icon.jpg", true)
		@x = 150
		@y = 330
    @lives = 3
	end

	def draw
	    @icon.draw(@x, @y, 1)	
	end

	def move_left
		if @x < 0
		  @x = 0
		else
		 @x = @x - 10
	    end
    end
    
    def move_right
    	if @x > (@game_window.width - 128)
    		@X = @game_window.width - 128
    	else
    	@x = @x + 10
    end
  end
    def move_up
    	if @y < 0
    	  @y = 0
    	else
        @y = @y - 10
    end
  end

    def move_down
   	if @y > (@game_window.height - 120)
   		@y = @game_window.height - 120
   	else
   		@y = @y + 10
    end
  end

     def hit_by?(balls)
     bang = balls.any? {|ball| Gosu::distance(@x, @y, ball.x, ball.y) < 50}
     if bang
      @lives = @lives - 1
   end
   bang
  end 
end


