# encoding: utf-8

unless defined?(Motion::Project::Config)
  raise 'This file must be required within a RubyMotion Rakefile'
end

gem_dir = Gem::Specification.find_by_name('mugatu').gem_dir
lib_dir = File.dirname(File.expand_path(__FILE__))

Motion::Project::App.setup do |app|
  app.files.unshift(Dir.glob(File.join(gem_dir, "lib/**/*.rb")))
  app.files.unshift(Dir.glob(File.join(lib_dir, "mugatu_motion/**/*.rb")))
end
