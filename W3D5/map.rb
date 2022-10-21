class Map

    def initialize(size)
        @array = Array.new {Array.new(2)}
    end

    # def array
    #     @array
    # end

    def set(key, value)
        @array.each do |pair|
            if pair[0] == key
                pair[1] = value
                return
            end
        end
        @array << [key,value]
    end

    def get(key)
        @array.each do |pair|
            if pair[0] == key
                return pair[1]
            end
        end
        return nil
    end

    def delete(key)
        @array.each do |pair|
            if pair[0] == key
                @array.delete(pair)
            end
        end
    end

end

m = Map.new(5)
m.set("tofu",3)
m.set("broccoli",6)
m.set("burger",1)
m.set("burger",7)
p m.get("broccoli")
p m.get("burger")
#p m.array
