require 'bundler/gem_helper'

namespace :my_gem do
  Bundler::GemHelper.install_tasks dir: 'my_gem'
end

task :default => ['my_gem:build']
