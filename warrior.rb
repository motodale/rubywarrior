
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

Bleeding = 20 * 0.4
Bezerk = 20 * 0.7

  def play_turn(warrior)

  space = warrior.feel
  ecaps = warrior.feel(:backward)
  @wall = ecaps.wall?
  @health = warrior.health unless @health
  ouch = @health > warrior.health

    if ecaps.empty?
      if ecaps.captive?
        warrior.rescue! :backward
      else
         if @wall == true
          warrior.walk!
         else
          warrior.walk! :backward
         end
      end
    else @wall == true
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
            warrior.walk!
          end
        if space.captive?
          warrior.rescue!
        else
          warrior.attack!
        end
        end
    end
     @health = warrior.health

  end
end
