require './unix_process'

# Subject to change, hopefully this does not cause issues
DELIMITER = "!"

class UnixPS

  def self.processes
    ps_output = `ps aux | awk '{print $1 "#{DELIMITER}" $2 "#{DELIMITER}" $3 "#{DELIMITER}" $4 "#{DELIMITER}" $5 "#{DELIMITER}" $6 "#{DELIMITER}" $7 "#{DELIMITER}" $8 "#{DELIMITER}" $9 "#{DELIMITER}" $10 "#{DELIMITER}" $11}'`.lines

    # Pop off header columns
    ps_output.shift

    # Generate objects
    ps_output.collect { |line| UnixProcess.new(line) }
  end
end

puts UnixPS.processes.inspect