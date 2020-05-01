Gem::Specification.new do |spec|
  spec.name = 'my_gem'
  spec.version = '0.0.1'
  spec.author = 'Andrew Haines'
  spec.summary = 'One of many gems in a monorepo'

  spec.files = Dir.chdir __dir__ do
    `git ls-files -z`.split("\x0")
  end
end
