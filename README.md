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
UnixPs.processes
=> #<UnixPs::UnixProcess:0x007fa553834758 @user="jason", @pid=54672, @cpu="100.5", @mem="0.6", @vsz="1115436", @rss="93692", @tty="??", @stat="R", @start=2014-06-04 00:00:00 -0700, @time="3162:49.67", @command="/Applications/Dropbox.app/Contents/MacOS/Dropbox\n"> 
```


