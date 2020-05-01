# Running Bundler gem tasks in a monorepo doesn't work

```console
$ bin/bundle

$ DEBUG=1 bin/rake
["gem", "build", "-V", "my_gem/my_gem.gemspec"]
rake aborted!
ERROR:  Gemspec file not found: my_gem/my_gem.gemspec.gemspec
/Users/andrew/.gem/ruby/2.7.1/gems/bundler-2.1.4/lib/bundler/gem_helper.rb:189:in `sh'
/Users/andrew/.gem/ruby/2.7.1/gems/bundler-2.1.4/lib/bundler/gem_helper.rb:76:in `build_gem'
/Users/andrew/.gem/ruby/2.7.1/gems/bundler-2.1.4/lib/bundler/gem_helper.rb:40:in `block in install'
Tasks: TOP => default => my_gem:build
(See full trace by running task with --trace)
```

The problem is that we're attempting to run `gem build` after `cd`-ing into `my_gem/`, but we're still specifying the gemspec path relative to the root directory.
