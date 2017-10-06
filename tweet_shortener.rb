def dictionary
  words = {
    "hello" => 'hi',
    "to" => '2',
    'two' => '2',
    'too' => '2',
    'four' => '4',
    'for' => '4',
    'be' => 'b',
    'you' => 'u',
    'at' => '@',
    'and' => '&'
  }
end

def word_substituter(str)
  arr = str.split(' ')
  newArr =[]
  i=0
  while i < arr.length
    word = arr[i]
    if dictionary[word.downcase] == nil
      newArr.push(word)
      i +=1
    else
      newArr.push(dictionary[word.downcase])
      i +=1
    end
  end
  newArr.join(" ")
end



def bulk_tweet_shortener(arr)
  arr.each do |i|
    puts word_substituter(i)
  end
end

def selective_tweet_shortener(str)
  if str.length > 140
    word_substituter(str)
  else
    str
  end
end

def shortened_tweet_truncator(str)
  if word_substituter(str).length > 140
    return word_substituter(str)[0..136]+'...'
  else
    word_substituter(str)
  end
end

#
# word_subsituter("I'm running out of example tweets for you guys, which is weird, because I'm a writer and this is just writing and I tweet all day. For real, you guys. For real.")
