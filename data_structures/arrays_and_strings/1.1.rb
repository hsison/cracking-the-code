# Implement an algorithm to determine if a string has all unique characters. What if you cannot use additional data structures?

# input = string of characters
# output = boolean

# Example 1

def unique?(string)
  input = string.split('')
  if input.uniq.length != string.length
    false
  else
    true
  end
end

p unique?("hello")
p unique?("hannah")
p unique?("brock")
p unique?("tyler")

# .uniq works on nested data, strings, arrays, and hashes

# Example 2

def unique?(string)
  checked = []
  string.each_char do |letter|
    checked << letter
    if checked.include?(letter)
      return false
    else
       true
    end
  end
end

p unique?("hannah")
p unique?("brock")

# Example 3

def unique?(string)
 input = string.split('')
 (0...input.length).each do |letter|
  if input[letter] == input[letter+1]
    return false
    end
  end
  true
end

p unique?("hannah")
p unique?("brock")

