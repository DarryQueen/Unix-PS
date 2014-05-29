require 'time'

# Class that represents a unix process' basic information
class UnixProcess 

  def initialize(line)
    # Split each line into fields by the delimiter
    fields = line.split(DELIMITER)

    # Assign the fields
    @user = fields[0]
    @pid = fields[1]
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

  def user
    @user
  end

  def pid
    @pid
  end

  def cpu
    @cpu
  end

  def mem
    @mem
  end

  def vsz
    @vsz
  end

  def rss
    @rss
  end

  def tty
    @tty
  end

  def stat
    @stat
  end

  def start
    @start
  end

  def time
    @time
  end

  def command
    @command
  end
end