class SocialShare

  def initialize(report)
    @report = report
    post_to_twitter
  end

  def post_to_twitter
    tweets = split_tweet
    tweets.each do |tweet|
      puts tweet
    end

    Report.last.delete
    Image.last.delete
  end

  def generate_tags
    tags = []
    tags << "##{@report.state.name}" if @report.state.present?
    tags << "##{@report.election.tag}" if @report.election.present?
    tags.join(" ")
  end

  def no_of_tweets
    ((@report.details.length + generate_tags.length)/ 140.to_f).ceil
  end

  def split_tweet
    num = no_of_tweets
    tweets = []
    chars = 140

    (1..num).each do |i|
      start = (i - 1) * 135
      stop = i * 135

      if i == num && @report.details[start..stop]
         tweets << "#{i}) #{@report.details[start..stop]} #{generate_tags}"
      elsif @report.details[start..stop]
        tweets << "#{i}) #{@report.details[start..stop]}"
      end
    end

    tweets
  end
end
