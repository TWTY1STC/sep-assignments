require 'benchmark'
require_relative 'linked_list'

n = 100000

puts Benchmark.measure do |x|
  x { n.times do   ; a = "1"; end }
end