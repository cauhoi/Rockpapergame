class Game
  SIGNS = %w[Rock Paper Scissors]

  attr_reader :sign, :throw_result

  def initialize(sign)
    @sign = sign
  end

  def throw
    @throw_result = SIGNS.sample
  end

  def result
    case sign
    when 'Rock'
      case throw_result
      when 'Rock'
        'Draw'
      when 'Paper'
        'Lose'
      when 'Scissors'
        'Win'
      end
    when 'Paper'
      case throw_result
      when 'Rock'
        'Win'
      when 'Paper'
        'Draw'
      when 'Scissors'
        'Lose'
      end
    when 'Scissors'
      case throw_result
      when 'Rock'
        'Lose'
      when 'Paper'
        'Win'
      when 'Scissors'
        'Draw'
      end
    end
  end
end
