class AddDescriptionToTests < ActiveRecord::Migration
  def change
    add_column :tests, :description, :text
  end
end
