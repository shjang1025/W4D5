class Array
    def two_sum
        res = []
        self.each_with_index do |ele1, i1|
            self.each_with_index do |ele2, i2|
               res << [i1, i2] if i1 < i2 && ele1 + ele2 == 0
            end
        end
        res 
    end

end

def my_uniq(array)
    res = []
    array.each do |ele|
        if !res.include?(ele)
            res << ele
        end
    end
    res 
end


