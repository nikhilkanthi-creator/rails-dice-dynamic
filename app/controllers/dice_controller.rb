class DiceController < ApplicationController
  def home
    render({ :template => "dice_templates/home"})
  end
end
