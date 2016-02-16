$:.unshift File.dirname(__FILE__) + 'lib'

require 'rspec/core/rake_task'
RSpec::Core::RakeTask.new
task :default => :spec

desc "Ejecutar las pruebas"
task :spec do
  sh "rspec -I. spec/Fraccion_spec.rb"
end

desc "Ejecutar con documentacion."
task :test do
  sh "rspec -I. spec/Fraccion_spec.rb --format documentation"
end

desc "Ejecutar el fichero Fraccion.rb."
task :bin do
  sh "ruby lib/Fraccion.rb"
end

desc "Ejecutar el formato html"
task :html do
  sh "rspec -I. spec/Fraccion_spec.rb --format html"
end


