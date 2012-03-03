# A sample Guardfile
# More info at https://github.com/guard/guard#readme

guard :rspec do
  watch(%r{^app/presenters(.+)\.rb$})     { |m| "fast_spec" } 
  watch(%r{^spec_fast/(.+)\.rb$})     { |m| "fast_spec" } 
  watch(%r{^app/services(.+)\.rb$})     { |m| "fast_spec" } 
end
