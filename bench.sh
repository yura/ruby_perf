rbenv local 2.7.8

echo "$(ruby -v)"
ruby lib/perf_test.rb


rbenv local 3.0.6

echo "default $(ruby -v) "
ruby lib/perf_test.rb

echo "with jit $(ruby -v) "
ruby --jit lib/perf_test.rb


rbenv local 3.1.4

echo "default $(ruby -v)"
ruby lib/perf_test.rb

echo "with yjit $(ruby -v)"
ruby --yjit lib/perf_test.rb

echo "with mjit $(ruby -v)"
ruby --mjit lib/perf_test.rb


rbenv local 3.2.2

echo "default $(ruby -v)"
ruby lib/perf_test.rb

echo "with mjit $(ruby -v)"
ruby lib/perf_test.rb

