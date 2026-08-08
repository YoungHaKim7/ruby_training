p "hello ruby"
s = 'hello'
s.sub(/[aeiou]/, '*') # => "h*llo"
s.gsub(/[aeiou]/, '*') # => "h*ll*"
s.gsub(/[aeiou]/, '')  # => "hll"
s.sub(/ell/, 'al')     # => "halo"
s.gsub(/xyzzy/, '*')   # => "hello"
'THX1138'.gsub(/\d+/, '00') # => "THX00"
