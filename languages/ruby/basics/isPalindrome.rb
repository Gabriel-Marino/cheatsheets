def isPalindrome(word)
  len = word.length
  arr = word.downcase.split(//)
  if len %2 == 0
    for index in 1..len
      return "#{word.capitalize} is NOT a palindrome!" if arr[index-1] != arr[len-index] 
    end
  else
    arr.delete_at((len-1)/2)
    len = arr.length
    for index in 1..len
      return "#{word.capitalize} is NOT a palindrome!" if arr[index-1] != arr[len-index]
    end
  end
  "#{word.capitalize} is a palindrome!!!"
end


## Solutions by teacher
def isPalindrome?(word)
  reverse = ""
  index = word.length

  until index == 0
    letter = word[index-1]
    reverse << letter
    index -= 1
  end

  word.downcase == reverse.downcase
end

def palindrome?(word)
  word.downcase == word.downcase.reverse
end

p "Write a word"
word = gets.chomp
p isPalindrome(word)
p "#{word.capitalize} is palindrome? #{isPalindrome?(word)}"
p "#{word.capitalize}    palindrome? #{palindrome?(word)}"
