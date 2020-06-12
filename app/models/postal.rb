class Postal < ApplicationRecord
    
  scope :active_postals, -> {where(active: true)}
  scope :inactive_postals, -> {where(active: false)}
   
  validates :postalcode, presence: true, length: {minimum: 6, maximum: 6},  format: { with: /\A^(?!.*[DFIOQU])[A-VXY][0-9][A-Z] ?[0-9][A-Z][0-9]$\z/}

  
  validate :code_starts_with 
   
private
    def code_starts_with
        
      if !postalcode.start_with?(*Fsa.all.pluck(:fsacode))
        errors.add(:postalcode, "does not fall into Richmond")
      end
    end
     
   

end
 # belongs_to :fsa