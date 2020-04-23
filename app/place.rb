class Place
  attr_reader :sign, :position
  def initialize(sign: '', position:)
    @sign = sign
    @position = position
  end
end