class PS 

  def initialize(pid)
    @pid = pid
  end

  def pid
    @pid
  end
end

puts `ps aux | grep ruby`