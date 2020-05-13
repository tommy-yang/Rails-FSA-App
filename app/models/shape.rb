class Shape < ApplicationRecord

    validates :fsa, presence: true
    validates :btm_left_x, presence: true
    validates :btm_left_y, presence: true 
    validates :btm_right_x, presence: true
    validates :btm_right_y, presence: true
    validates :top_left_x, presence: true
    validates :top_left_y, presence: true
    validates :top_right_x, presence: true
    validates :top_right_y, presence: true

    
end
