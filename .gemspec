require 'rake'

Gem::Specification.new do |spec|
  spec.name = 'micro_test'
  spec.version = '0.1.1'
  spec.license = 'MIT'
  spec.homepage = 'http://hopsoft.github.com/micro_test/'
  spec.summary = 'A tiny testing framework.'
  spec.description = <<-DESC
    A tiny testing framework.
  DESC

  spec.authors = ['Nathan Hopkins']
  spec.email = ['natehop@gmail.com']

  spec.add_dependency('slop', '~> 3.3.3')
  spec.files = FileList['lib/**/*.rb', 'bin/*', '[A-Z]*'].to_a
  spec.executables << "mt"
end
