class Postal < ApplicationRecord
    #before_create { |postal| postal.postalcode = postal.postalcode.upcase }
     validates :postalcode, presence: true, length: {minimum: 6, maximum: 6},  format: { with: /\A^(?!.*[DFIOQU])[A-VXY][0-9][A-Z] ?[0-9][A-Z][0-9]$\z/}


     validate :code_starts_with 

     private 

    def code_starts_with
       if postalcode.start_with?("V7C", "V7B", "V6V", "V7E", "V6Y", "V7A", "V6X", "V6W")

       elsif 
       errors.add(:postalcode, "does not fall into Richmond")
       end
    end

     
#validates_inclusion_of :postalcode, :in => ["V7C", "V7B"]
  
    #validates_each :postalcode do  |model, attr, value|
         #a = "V7C"
        # b= "V7B"
         #c= "V6V"
        #if  value[0..2] != (a or b or c)
          # model.errors.add(attr, 'does not belong in Richmond')
     # end
    #end
    

#validates :postalcode, presence: true, if: -> { postalcode = "V7C2M2"} 



end