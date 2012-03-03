# A sample Guardfile
# More info at https://github.com/guard/guard#readme

guard :rspec do
  watch(%r{^app/presenters(.+)\.rb$})     { |m| "spec_fast" } 
  watch(%r{^spec_fast/(.+)\.rb$})     { |m| "spec_fast" } 
  watch(%r{^app/services(.+)\.rb$})     { |m| "spec_fast" } 
  watch(%r{^app/roles(.+)\.rb$})     { |m| "spec_fast" } 
end
