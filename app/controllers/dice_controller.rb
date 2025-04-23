class DiceController < ApplicationController

  def home
    render({ :template => "dice_templates/home"})
  end

  def dynamicpath
    @dice = params.fetch("dice").to_i
    @sides = params.fetch("sides").to_i
    @rolls = []
    @dice.times do
      dice = rand(1..@sides) # generate a random number
      @rolls.push(dice) # fill up the array
    end
    render({ :template => "dice_templates/dynamic"})
  end
end
