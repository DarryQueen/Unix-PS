require 'time'

# Class that represents a unix process' basic information
class UnixProcess 

  attr_accessor :user, :pid, :cpu, :mem, :vsz, :rss, :tty, :stat, :start, :time, :command

  def initialize(line)
    # Split each line into fields by the delimiter
    fields = line.split(DELIMITER)

    # Assign the fields
    @user = fields[0]
    @pid = fields[1].to_i
    @cpu = fields[2]
    @mem = fields[3]
    @vsz = fields[4]
    @rss = fields[5]
    @tty = fields[6]
    @stat = fields[7]
    @start = Time.parse(fields[8])
    @time = fields[9]
    @command = fields[10]
  end

  def kill!(sig=nil)
    sig ||= 'INT'
    Process.kill(sig, self.pid)
  end

end