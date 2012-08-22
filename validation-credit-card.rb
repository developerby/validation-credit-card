p eval(ARGV.join.gsub(/(\d)?(\d)(?=(?:\d\d)*\d$)/) do
  "#{$1 + '+' if $1}#{($2.to_i * 2).to_s.split('').join('+')}+"
end ) % 10 == 0 ? "Valid" : "Invalid"
