# Encoding: utf-8

def mail_joke(email)
  # TODO: Return a joke suited to the email provided

  if !email.match(/\A[^@]+@[^@]+\.[^@\.]+\z/)
    raise ArgumentError.new("Input is not an email")


  elsif email.match(/\A[^@]+@lewagon\.[^@\.]+\z/)
    name = email.match(/\A([^@]+)@/)[1]
    "Well done #{name}, you're skilled and capable"


  elsif email.match(/\A[^@]+@gmail\.[^@\.]+\z/)
    name = email.match(/\A([^@]+)@/)[1]
    "#{name}, you're an average but modern person"


  elsif email.match(/\A[^@]+@live\.[^@\.]+\z/)
    name = email.match(/\A([^@]+)@/)[1]
    name = name.gsub(/\./, ' ')
    "#{name}, aren't you born before 1973?"


  else
    name = email.match(/\A([^@]+)@/)[1]
    # name = email.split("@")[0]
    domain = email.match(/@(.+)\z/)[1]
    # domain = email.split("@")[1]

    # ou bien, tout en un :
    #   name, domain = *email.split("@")

    "Sorry #{name}, we don't know how to judge '#{domain}'"
  end

end

