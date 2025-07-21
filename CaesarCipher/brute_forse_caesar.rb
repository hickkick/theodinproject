require_relative "caesar_cipher"

def brute_forse_caesar(message)
  (1..25).map { |shift| "#{shift.to_s} - #{caesar_cipher(message, shift)}" }.join("\n")
end
