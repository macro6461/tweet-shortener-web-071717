# Write your code here.
def dictionary
  dictionary =
  {
    "hello" => "hi", #need to make these hash acceptable. use =>
    "to" => "2",
    "two" => "2",
    "too" => "2",
    "four" => "4",
    "for" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"
  }
end

def word_substituter(tweet)
  short_tweet = tweet.split.collect do |word| #use .split to go from array to string
    if dictionary.keys.include?(word.downcase)
      word = dictionary[word.downcase]
    else
      word
    end
  end
  short_tweet.join(" ") #then need to switch back to string! #use .join()
end

def bulk_tweet_shortener(tweet)
  tweets.collect {|tweet| puts word_substituter(tweet)}
end

def selective_tweet_shortener(tweet)
  if tweet.length > 140
    word_substituter(tweet)
  else
    tweet
  end
end

def shortened_tweet_truncator(tweet)
  if word_substituter(tweet).length > 140
    tweet[0..135] << " ..."
  elsif tweet.length < 140
    tweet
  end
end
