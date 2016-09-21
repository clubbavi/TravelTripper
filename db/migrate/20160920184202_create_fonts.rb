class CreateFonts < ActiveRecord::Migration[5.0]
  def change
    create_table :fonts do |t|
      t.string :font

      t.timestamps
    end
  end
end
