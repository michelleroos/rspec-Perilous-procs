require "byebug"

def is_prime?(num)
    return false if num < 2

    (2...num).each do |f|
        if num % f == 0
            return false
        end
    end
    true
end

def nth_prime(nth)
    prime_count = 0
    number = 1

    while !(prime_count == nth)
        number += 1
        prime_count += 1 if is_prime?(number)
    end
    number
end

def nth_prime(nth)
    prime_count = 0
    number = 1

    until prime_count == nth
        number += 1
        prime_count += 1 if is_prime?(number)
    end

    number
end

def prime_range(min, max)
    primes = []
    (min..max).each { |num| primes << num if is_prime?(num) }
    primes
end

