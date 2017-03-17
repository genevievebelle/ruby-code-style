class EnglishNumber

  UNIT_TEENS = { 0 => 'zero',
    1 => 'one',
    2 => 'two',
    3 => 'three',
    4 => 'four',
    5 => 'five',
    6 => 'six',
    7 => 'seven',
    8 => 'eight',
    9 => 'nine',
    10 => 'ten',
    11 => 'eleven',
    12 => 'twelve',
    13 => 'thirteen',
    14 => 'fourteen',
    15 => 'fifteen',
    16 => 'sixteen',
    17 => 'seventeen',
    18 => 'eighteen',
    19 => 'nineteen' }

  TENS = { 2 => 'twenty',
    3 => 'thirty',
    4 => 'fourty',
    5 => 'fifty',
    6 => 'sixty',
    7 => 'seventy',
    8 => 'eighty',
    9 => 'ninety' }

  def in_english(integer)
    integer = integer.ceil
    return if integer > 99

    if UNIT_TEENS.has_key?(integer)
      result = UNIT_TEENS[integer]
    elsif integer.to_s[-1].to_i == 0
      result = TENS[integer.to_s[-2].to_i]
    else
      result = [TENS[integer.to_s[-2].to_i], UNIT_TEENS[integer.to_s[-1].to_i]].join('-')
    end

    result = "negative "+result if integer < 0

    result
  end

end
