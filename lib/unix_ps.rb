require './unix_ps/unix_process'
module UnixPs

    # Subject to change, hopefully this does not cause issues
  DELIM = "!"
  COLUMNS = (1..11).collect{|i| "$#{i}"}
  COLUMNS = COLUMNS.join(" \"#{DELIM}\" ")

  def self.processes(search=nil)

    ps_output = nil

    if search.is_a? String
      ps_output = `ps aux | grep #{search} | awk '{print #{COLUMNS}}'`.lines
    else
      ps_output = `ps aux | awk '{print #{COLUMNS}}'`.lines
    end

    # Pop off header columns
    ps_output.shift

    # Generate objects
    ps_output.collect { |line| UnixProcess.new(line) }
  end
end
