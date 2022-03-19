class Karyawan < ApplicationRecord
    belongs_to :golongan
    has_many :gaji
end
