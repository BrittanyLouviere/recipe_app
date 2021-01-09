class StaticPagesController < ApplicationController
  def home
    check_db_last_reset
  end
end
