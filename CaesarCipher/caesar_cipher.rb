def caesar_cipher(message, shift)
  message.each_char.with_object("") do |chr, acc|
    if chr =~ /[A-Za-z]/
      base = chr.ord < 91 ? 65 : 97
      acc << (((chr.ord - base + shift) % 26) + base).chr
    else
      acc << chr
    end
  end
end
