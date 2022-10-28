fish = ['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 
'fiiiissshhhhhh']

def sluggish(arr)
    (0...arr.length).each do |i|
        (0...arr.length).each do |j|
            if i != j && arr[i].length > arr[j].length
                arr[i],arr[j] = arr[j],arr[i]
            end
        end
    end
    return arr[0]
end

p sluggish(fish)

def merge_fish(arr)
    return arr if arr.length == 1
    mp = arr.length/2
    left = arr[0...mp]
    right = arr[mp...arr.length]
    return merge(merge_fish(left),merge_fish(right))
end

def merge(arr1,arr2)
    arr = []
    until arr1.empty? || arr2.empty? do
        if arr1[0].length < arr2[0].length
            arr<<arr1.shift
        else
            arr<<arr2.shift
        end
    end
    return arr + arr1 + arr2
end

puts merge_fish(fish)[-1]

def clever(arr)
    longest = ""
    
    arr.each do |x|
        longest = x if x.length > longest.length
    end

    return longest
end

puts clever(fish)

tiles_array = ["up", "right-up", "right", "right-down", "down", "left-down", "left",  "left-up"]

def slow_dance(str,arr)
    arr.each_with_index do |x,i|
        return i if x == str
    end
    return nil
end

p slow_dance("up",tiles_array)
p slow_dance("right-down", tiles_array)

new_tiles_data_structure = {"up" => 0, "right-up" => 1, "right" => 2, "right-down" => 3, "down" => 4,"left=down" => 5,"left" => 6,"left-up" => 7}

def constant_dance(str,hash)
    return hash[str]
end

p constant_dance("up",new_tiles_data_structure)
p constant_dance("right-down",new_tiles_data_structure)