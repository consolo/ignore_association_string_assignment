Gem::Specification.new do |s|
  s.name = 'ignore_association_string_assignment'
  s.version = '1.0.0'
  s.author = 'Andrew Coleman'
  s.email = 'developers@consoloservices.com'
  s.summary = 'Ignore Association String Assignments'
  s.description = 'When assigning assocations in Active Record, ignore values that are strings.'
  s.homepage = 'https://redmine.consoloservices.com'
  s.require_path = '.'
  s.files = [ 'ignore_association_string_assignment.rb' ]
  s.add_dependency 'activerecord'
end
