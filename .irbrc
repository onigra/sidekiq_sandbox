Dir[File.expand_path('../worker', __FILE__) << '/*.rb'].each do |file|
  require file
end
