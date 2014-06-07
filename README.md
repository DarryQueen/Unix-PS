unix-ps
=======

A Ruby wrapper around the unix tool __ps__

Getting started
=======
Add unix-ps to your Gemfile with:

```ruby
gem 'unix-ps'
```

Usage
=======
Get a list of running processes
```ruby
UnixPs.processes.first
=> #<UnixPs::UnixProcess:0x007fa553834758 @user="jason", @pid=54672, @cpu="100.5", @mem="0.6", @vsz="1115436", @rss="93692", @tty="??", @stat="R", @start=2014-06-04 00:00:00 -0700, @time="3162:49.67", @command="/Applications/Dropbox.app/Contents/MacOS/Dropbox\n"> 
```

Search for processes by name
```ruby
UnixPs.processes("mysql")
=> [#<UnixPs::UnixProcess:0x007f82649d7838 @user="root", @pid=19440, @cpu="0.0", @mem="0.0", @vsz="2445652", @rss="336", @tty="s001", @stat="S+", @start=2014-05-20 00:00:00 -0700, @time="0:00.02", @command="/bin/sh\n">, #<UnixPs::UnixProcess:0x007f82649d71f8 @user="root", @pid=19439, @cpu="0.0", @mem="0.0", @vsz="2461648", @rss="108", @tty="s001", @stat="S+", @start=2014-05-20 00:00:00 -0700, @time="0:00.01", @command="sudo\n">, #<UnixPs::UnixProcess:0x007f82649d6bb8 @user="jason", @pid=55626, @cpu="0.0", @mem="0.0", @vsz="2432784", @rss="628", @tty="s000", @stat="S+", @start=2014-06-05 11:16:00 -0700, @time="0:00.00", @command="grep\n">, #<UnixPs::UnixProcess:0x007f82649d64d8 @user="jason", @pid=55624, @cpu="0.0", @mem="0.0", @vsz="2433364", @rss="920", @tty="s000", @stat="S+", @start=2014-06-05 11:16:00 -0700, @time="0:00.00", @command="sh\n">] 

```


