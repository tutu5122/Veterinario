class Pet < ApplicationRecord
    has_many :pet_histories

    def history_count
        self.pet_histories.size
    end
    
    def avg_weight
        if self.pet_histories.count > 0
            self.pet_histories.sum(:weight)/self.pet_histories.count
        else
            "No cuenta con mas informacion"
        end
    end
    
    def avg_height
        if self.pet_histories.count > 0
            self.pet_histories.sum(:height)/self.pet_histories.count
        else
            "No cuenta con mas informacion"
        end
    end
    
    def max_weight
        self.pet_histories.pluck(:weight).max
    end
    
    def max_height
        self.pet_histories.pluck(:height).max 
    end
    
end
