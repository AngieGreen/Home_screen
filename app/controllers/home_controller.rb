class HomeController < ApplicationController
  def index
    time_now = Time.now

    @current_time = time_now.stamp_like("9:00 am")

    # Adjust message by time of day
    @greet_message = case time_now.hour
      when 5..11
        "Good morning, beautiful! <i class='fa fa-motorcycle'></i>".html_safe
      when 12..15
        "Happy afternoon, sunshine!"
      when 16..19
        "Good evening, darling!"
      when 20..23, 0..4
        "Good night. Until tomorrow..."
      end

  end
end
