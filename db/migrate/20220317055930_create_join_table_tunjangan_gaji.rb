class CreateJoinTableTunjanganGaji < ActiveRecord::Migration[6.0]
  def change
    create_join_table :gajis, :tunjangans do |t|
      t.index [:gaji_id, :tunjangan_id]
      t.index [:tunjangan_id, :gaji_id]
    end
  end
end
