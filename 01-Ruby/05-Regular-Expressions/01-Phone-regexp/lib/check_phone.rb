def french_phone_number?(phone_number)
  # TODO: true or false?
  phone_number = phone_number.delete(" -")
  if phone_number.match(/\A(?:0|\+3{2})[1-9]\d{8}\z/)
    true
  else
    false
  end

  # autre syntaxe:
  #   !!phone_number.match(/\A[0\d|3{2}]\d{8}\z/)
end

p french_phone_number?('0134257699')