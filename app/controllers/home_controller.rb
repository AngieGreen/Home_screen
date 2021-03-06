class HomeController < ApplicationController
  def index
    time_now = Time.now

    @current_time = time_now.stamp_like("9:00 am")

    # Adjust message by time of day
    @greet_message = case time_now.hour
      when 5..11
        "Good morning, beautiful!"
      when 12..15
        "Happy afternoon, sunshine!"
      when 16..19
        "Good evening, darling!"
      when 20..23, 0..4
        "Good night. Until tomorrow..."
      end

    @quote = Quote.all.sample
    @quip = @quote.quip
    @author = @quote.author

  end
end
