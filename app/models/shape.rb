class Shape < ApplicationRecord

    validates :fsa, presence: true
    validates :btm_left_x, presence: true, numericality: {only_integer: true} 
    validates :btm_left_y, presence: true, numericality: {only_integer: true} 
    validates :btm_right_x, presence: true, numericality: {only_integer: true} 
    validates :btm_right_y, presence: true, numericality: {only_integer: true} 
    validates :top_left_x, presence: true, numericality: {only_integer: true} 
    validates :top_left_y, presence: true, numericality: {only_integer: true} 
    validates :top_right_x, presence: true, numericality: {only_integer: true} 
    validates :top_right_y, presence: true, numericality: {only_integer: true} 
    
    
end
