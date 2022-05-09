class Mee < ApplicationRecord
    belongs_to :user
    has_one_attached :image
    validates :q_1,presence: true
    validates :image, presence: true
    

    validates :q_a,presence: true, allow_blank: true, numericality: {only_integer: true}, length: { in: 1..12 }
    validates :q_b,presence: true, allow_blank: true, numericality: {only_integer: true}, length: { in: 1..31 }
end
