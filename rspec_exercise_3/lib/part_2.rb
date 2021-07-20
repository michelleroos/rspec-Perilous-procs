require "byebug"

def element_count(arr)
    hash = Hash.new(0)
    arr.each do |element|
        hash[element] += 1
    end
    hash
end

# def char_replace!(string, hash)
#     i = 0 
#     while i <= string.length - 1
#         if hash.has_key?(string[i])
#             string[i] = hash[string[i]]
#         end
#         i += 1
#     end
#     string
# end

def char_replace!(string, hash)
    string.each_char.with_index do |char, idx|
        if hash.has_key?(string[idx])
            string[idx] = hash[string[idx]]
        end
    end
    string
end

def product_inject(arr)
    arr.inject { |acc, number| acc *= number }
end