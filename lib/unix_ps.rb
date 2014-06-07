require 'tempfile'
require './unix_ps/unix_process'
module UnixPs

    # Subject to change, hopefully this does not cause issues
  DELIM = "!"
  @columns = (1..10).collect{|i| "$#{i}"}
  @columns = @columns.join(" \"#{DELIM}\" ")
  @command_column = "for(i=1;i<11;i++) $i=\"\";print $0"

  def self.processes(search=nil)

    # Get ps aux output.
    #TODO: Handle errors
    ps_output = `ps aux`

    # Store the output in a temporary file so we can operate on the data without
    # losing consistency.
    file = Tempfile.new('unix-ps')
    file.write(ps_output)

    # Lines to create process objects from
    lines = nil

    if search.is_a? String
      lines = `grep #{search} #{file.path}| awk '{print #{@columns}}'`.lines
      command_columns = `grep #{search} #{file.path}| awk '{#{@command_column}}'`.lines
      
      # Merge columns + command column
      lines = lines.each_with_index.map {|line, index|
        line = line.split(DELIM)
        command = command_columns[index].strip
        line.push(command)
      }
    else
      lines = `#{file.path} | awk '{print #{@columns}}'`.lines
      command_columns = `#{file.path}| awk '{#{@command_column}}'`.lines

      # Merge columns + command column
      lines = lines.each_with_index.map {|line, index|
        line = line.split(DELIM)
        command = command_columns[index].strip
        line.push(command)
      }
    end

    # Pop off header columns
    lines.shift

    # Generate objects
    lines.collect { |line| UnixProcess.new(line) }
  end
end
