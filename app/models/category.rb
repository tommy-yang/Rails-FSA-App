class Category < ApplicationRecord

    validates :fsa, presence: true, length: {minimum: 6, maximum: 6}

end