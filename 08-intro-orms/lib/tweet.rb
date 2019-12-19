class Tweet
  attr_accessor :message, :username
  attr_reader :id

  # @@tweets = []

  def initialize(props = {})
    @message = props['message']
    @username = props['username']

    # save
  end

  def self.all
    # @@tweets

    tweets = DB[:conn].execute('SELECT * FROM tweets')

    tweets.map do |tweet|
      Tweet.new({"username" => tweet["username"], "message" => tweet["message"]})
    end
  end

  def save
    # self.class.all << self

    sql = <<-SQL
      INSERT INTO tweets (username, message) VALUES (?, ?);
    SQL

    DB[:conn].execute(sql, username, message)
  end
end
