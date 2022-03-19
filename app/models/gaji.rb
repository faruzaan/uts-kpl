class Gaji < ApplicationRecord
    has_and_belongs_to_many :tunjangan
    belongs_to :karyawan
end
