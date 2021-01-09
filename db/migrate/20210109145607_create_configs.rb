class CreateConfigs < ActiveRecord::Migration[6.1]
  def change
    create_table :configs do |t|
      t.string :config_option
      t.string :string_value
      t.datetime :date_time_value

      t.timestamps
    end

    add_index :configs, :config_option, unique: true
  end
end
