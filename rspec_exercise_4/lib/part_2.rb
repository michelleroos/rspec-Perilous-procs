def proper_factors(num)
    new_arr = []
    (1...num).each do |n|
        if num % n == 0
            new_arr << n
        end
    end
    new_arr
end

def aliquot_sum(num)
    proper_factors(num).sum
end

def perfect_number?(num)
    num == aliquot_sum(num)
end

def ideal_numbers(n)
    array = []
    count = 0
    number = 0

    until count == n
        number += 1
        if perfect_number?(number)
            count += 1
            array << number
        end
    end
    array
end

# def nth_prime(nth)
#     prime_count = 0
#     number = 1

#     until prime_count == nth
#         number += 1
#         prime_count += 1 if is_prime?(number)
#     end

#     number
# end