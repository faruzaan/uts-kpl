class CreateGajis < ActiveRecord::Migration[6.0]
  def change
    create_table :gajis do |t|
      t.integer :id_karyawan
      t.integer :id_tunjangan
      t.string :desc
      t.integer :potongan

      t.timestamps
    end
    add_index :gajis, :id_karyawan
    add_index :gajis, :id_tunjangan
  end
end
