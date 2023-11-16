module SearchData
    extend ActiveSupport::Concern

    def piece_count
        pieces = [0,500,1000,1500,2000,2500,3000,4000]
    end

    def year_count
        years = []
        for a in 1949..2024 do
            years.push(a)
        end
        return years
    end
end