class Client < ApplicationRecord
    has_many :pets

    def count_pets
        self.pets.count
    end
end
