class Postal < ApplicationRecord

validates :postalcode, presence: true , length: {minimum: 6, maximum: 6},  format: { with: /\A^(?!.*[DFIOQU])[A-VXY][0-9][A-Z] ?[0-9][A-Z][0-9]$\z/}
end