class Character < ApplicationRecord
    belongs_to :user
    belongs_to :race
    belongs_to :stat
    has_many :achievements
    belongs_to :dndclass

    validates :name, presence: true
end