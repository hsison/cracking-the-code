# Given two strings, write a method to decide if one is a permutation of the other.

def permutation(string1, string2)
  first_sorted_string = string1.split('').sort
  second_sorted_string = string2.split('').sort
  if first_sorted_string == second_sorted_string
    return true
  else
    false
  end
end

p permutation("hannah", "brock")
p permutation("brock", "ckobr")
p permutation("tyler", "ylert")

