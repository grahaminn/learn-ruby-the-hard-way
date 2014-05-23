END {
  puts "This happens at the end"
}
module Foo
  class A
    def amethod(aparam)
      puts "param: #{aparam}"
      puts "class A self=#{self}"
      @aparam = aparam
    end

    alias aclass_method amethod
  end
  a = A.new
  a.aclass_method("Bar")
  puts "foobar"
  puts "a.aclass_method=#{a.aclass_method('bar')}"

  puts "module Foo self=#{self}"

  i = 3 
  begin
    i += 2
    puts "i:#{i}"
  end while i < 10

  j = 1
  begin 
    j += 1
    puts "j:#{j}"
    break if j == 7
  end until j == 10
  
  array = [1,2,3]
  array.each do |node|
     next unless node > 2
     puts "node: #{node}"
     # redo // this will loop forever if uncommented 
  end

  for node in array do
    puts "for node: #{node}"
  end
 
  def Foo.testyield()
    puts "in the testyield method"
    yield
    puts "in the testyield method again"
  end

  testyield() { puts "You are in the block passed to testyield" }
  
  retrycount = 0
  begin 
    1 / 0
  rescue ZeroDivisionError
    puts "Div by Zero"
    if retrycount < 2
      retrycount += 1 
      retry
    end
  ensure
    puts "Ensure is like 'finally' in java"
  end

  puts "aclass_method.defined?=#{defined?(a.aclass_method)}"
end
BEGIN {
  puts "This happens at the beginning"
}
