require 'benchmark'
require_relative 'matrix_multiplicator'
require_relative 'samples'

report = Benchmark.measure do
    samples.each { |pair| MatrixMultiplicator.multiply(*pair) } 
  end

puts report
