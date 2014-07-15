# Encoding: utf-8

def mail_joke(email)
  # TODO: Return a joke suited to the email provided
  if email.include?('@') == true
    match_data = email.match(/(\S+)@(\S+)/)
    name = match_data[1]

    if name.include?('.')
      p_name = match_data[1].gsub('.', ' ')
      email("#{p_name}", "#{match_data[2]}")
    else
      email("#{match_data[1]}", "#{match_data[2]}")
    end
  else
    fail ArgumentError
  end
end

def email(name, email_com)
  if email_com == "lewagon.org"
    "Well done #{name}, you're skilled and capable"
  elsif email_com == "gmail.com"
    "#{name}, you're an average but modern person"
  elsif email_com == "live.com"
    "#{name}, aren't you born before 1973?"
  else
    "Sorry #{name}, we don't know how to judge '#{email_com}'"
  end
end


