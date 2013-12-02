class Tweet < Document
  field :username, type: String
  field :tweet_id, type: String

  def details_url
    "https://api.twitter.com/1.1/statuses/show.json?id=#{tweet_id}"
  end
end
