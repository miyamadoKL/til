require './deep_freeze'

class Bank
  extend DeepFreezable

  CURRENCIES = deep_freeze({'Japan' => 'yen', 'US' => 'dollar', 'India' => 'rupee'})
end
