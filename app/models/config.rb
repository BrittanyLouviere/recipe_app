class Config < ApplicationRecord
  def set_app_last_used
    config = Config.find_by(config_option: "DB Last Reset")
    if !!config
      config.update(date_time_value: Time.zone.now)
    else
      Config.create(config_option: "DB Last Reset", date_time_value: Time.zone.now)
    end
  end
  
  def get_app_last_used
    config = Config.find_by(config_option: "DB Last Reset")
    if !!config
      config.date_time_value
    else
      nil
    end
  end
end
