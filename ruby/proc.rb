p1 = Proc.new {|param| puts "You called me with #{param}"}
p2 = lambda {|param| puts "You called me with #{param}"}
p3 = -> param {puts "You called me with #{param}"}

p1.call 111
p2.call 99
p3.call 88

