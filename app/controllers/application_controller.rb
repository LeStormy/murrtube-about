class ApplicationController < ActionController::Base
  def terms
    puts "\n----\n#{request.env['HTTP_USER_AGENT']}\n----\n"
    
  end

  def privacy

  end

  def cookies_policy

  end
  
  def about

  end

  def contact_us

  end

  def advertise

  end
end
