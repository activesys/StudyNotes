class ProcExample
  def pass_in_block(&action)
    @stored_proc = action
  end
  def use_proc(parameter)
    @stored_proc.call(parameter)
  end
end

eg = ProcExample.new
eg.pass_in_block {|param| puts "The parameter is #{param}"}
eg.use_proc 99

my_proc = Proc.new {|param| puts "#{param} in Proc"}
eg.pass_in_block(&my_proc)
eg.use_proc(100)

my_lambda = -> param {puts "#{param} in lambda"}
eg.pass_in_block(&my_lambda)
eg.use_proc(200)

