class CreateGolongans < ActiveRecord::Migration[6.0]
  def change
    create_table :golongans do |t|
      t.integer :gapok

      t.timestamps
    end
  end
end
