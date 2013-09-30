
class Player
  def play_turn(warrior)
  space = warrior.feel
     if space.empty?
        if warrior.health < 20 && !ouch(warrior)
          warrior.rest!
        else
          warrior.walk!
        end
     else
      if space.captive?
        warrior.rescue!
      else
        warrior.attack!
      end
    end
     @health = warrior.health
  end

  def ouch(warrior)
    warrior.health < @health
  end

end




class Player
  def play_turn(warrior)

  space = warrior.feel
  ecaps = warrior.feel(:backward)

  @health = warrior.health unless @health
  ouch = @health > warrior.health

     if space.empty?
        if warrior.health <= Bleeding
          warrior.walk! :backward
        else
          warrior.walk!
        end
     else
      if warrior.health < Bezerk
        warrior.rest!
      else
        warrior.awalk!
      end
      if space.captive?
        warrior.rescue!
      else
        warrior.attack!
      end
    end
     @health = warrior.health
  end
end
