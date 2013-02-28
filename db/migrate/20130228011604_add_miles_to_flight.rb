class AddMilesToFlight < ActiveRecord::Migration
  def change
    add_column :flights, :miles, :integer, default: 0
  end
end
