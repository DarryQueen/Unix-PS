require 'time'

module UnixPs
  # Class that represents a unix process' basic information
  class UnixProcess 

    attr_accessor :user, :pid, :cpu, :mem, :vsz, :rss, :tty, :stat, :start, :time, :command

    def initialize(columns)
      # Assign the columns
      @user = columns[0]
      @pid = columns[1].to_i
      @cpu = columns[2].to_f
      @mem = columns[3].to_f
      @vsz = columns[4]
      @rss = columns[5]
      @tty = columns[6]
      @stat = columns[7]
      @start = Time.parse(columns[8])
      @time = columns[9]
      @command = columns[10]
    end

    # Kill a process
    def kill!(sig=nil)
      sig ||= 'INT'
      Process.kill(sig, self.pid)
    end

  end
end