class Playboy

  #TODO: implement necessary getters or setters to run meeting_casanova.rb

  attr_reader :nationality
  attr_reader :name
  attr_reader :conquests
  attr_accessor :hair_length
  attr_accessor :lady
  attr_accessor :married

  INITIAL_HAIR_LENGTH = 20  # beautiful long playboy hair

  def initialize(name, nationality)
    @conquests = []
    @name, @nationality = name, nationality
    @hair_length = INITIAL_HAIR_LENGTH
    @married = false
  end

  def meets(lady)
    @conquests << lady unless @married
  end

end