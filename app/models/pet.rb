class Pet < ApplicationRecord
    has_many :pet_histories
    belongs_to :client

    def history_count
        #TODO-implement
        self.pet_histories.size
    end

    def avg_weight
        if self.pet_histories.count > 0 
            self.pet_histories.sum(:weight)/self.pet_histories.count 
        else "No cuenta con informacion" 
        end
    end

    def avg_height
        if self.pet_histories.count > 0 
            self.pet_histories.sum(:height)/self.pet_histories.count 
        else "No cuenta con informacion" 
        end
    end

    def max_weight
        if self.pet_histories.count > 0 
            self.pet_histories.pluck(:weight).max
        else "No cuenta con informacion" 
        end
    end

    def max_height
        if self.pet_histories.count > 0 
            self.pet_histories.pluck(:height).max
        else "No cuenta con informacion" 
        end
    end
end