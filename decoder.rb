def decode_char(code)
  decode = ''
  morse_code = {
    '.-' => 'A', '-...' => 'B', '-.-.' => 'C', '-..' => 'D', '.' => 'E',
    '..-.' => 'F', '--.' => 'G', '....' => 'H', '..' => 'I', '.---' => 'J',
    '-.-' => 'K', '.-..' => 'L', '--' => 'M', '-.' => 'N', '---' => 'O',
    '.--.' => 'P', '--.-' => 'Q', '.-.' => 'R', '...' => 'S', '-' => 'T',
    '..-' => 'U', '...-' => 'V', '.--' => 'W', '-..-' => 'X', '-.--' => 'Y',
    '--..' => 'Z', '-----' => '0', '.----' => '1', '..---' => '2', '...--' => '3',
    '....-' => '4', '.....' => '5', '-....' => '6', '--...' => '7', '---..' => '8',
    '----.' => '9'
  }
  morse_code.each do |key, value|
    decode = value if key == code
  end
  decode
end

def decode_word(word)
  word.split.map { |char| decode_char(char) }.join
end

def decode(message)
  decode_mes = ''
  message.split('   ').each do |word|
   decode_mes += ' '
   decode_mes += word.split.map{|char| decode_word(char)}.join
  end
  decode_mes
end
