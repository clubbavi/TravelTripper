class CreateDashboards < ActiveRecord::Migration[5.0]
  def change
    create_table :dashboards do |t|
      t.string :font
      t.string :title
      t.string :color

      t.timestamps
    end
  end
end
