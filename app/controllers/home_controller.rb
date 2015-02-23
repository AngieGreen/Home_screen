class HomeController < ApplicationController
  def index
    time_now = Time.now

    @current_time = time_now.to_formatted_s(:short)

    # Adjust message by time of day
    @greet_message = case time_now.hour
      when 5..11
        "Good morning!"
      when 12..15
        "Good afternoon!"
      when 16..19
        "Good evening!"
      when 20..23, 0..4
        "Good night!"
      end

  end
end
