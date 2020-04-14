class Fsa < ApplicationRecord
   
   scope :active_fsas, -> { where(active: true) }
   scope :inactive_fsas, -> {where(active: false) }
   
    validates :fsacode, presence: true, length: {minimum: 3, maximum: 3},  format: { with: /\A^(?!.*[DFIOQU])[A-VXY][0-9][A-Z]$\z/}
   
    validates_uniqueness_of :fsacode
   
   
    has_many :postals



end
