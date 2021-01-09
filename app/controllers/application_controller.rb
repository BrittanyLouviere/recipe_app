class ApplicationController < ActionController::Base
  # TODO This method is only for use in the demo and should be removed in the final version
  def check_db_last_reset
    lastUsed = Config.new.get_app_last_used
    if !lastUsed || lastUsed < 1.day.ago
      reset_db
      Config.new.set_app_last_used
    end
  end
  
  # TODO This method is only for use in the demo and should be removed in the final version
  def reset_db
    Ingredient.all.each { |ingredient| ingredient.destroy }
    Recipe.all.each { |recipe| recipe.destroy }
    Rails.application.load_seed
  end
end
