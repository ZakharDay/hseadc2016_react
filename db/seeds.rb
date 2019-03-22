Rake::Task['db:drop'].invoke
Rake::Task['db:create'].invoke
Rake::Task['db:migrate'].invoke

user = User.create(
  email: 'test@test.test',
  password: 'testtest',
  password_confirmation: 'testtest'
)

puts "User with id #{ user.id } created"

10.times do |i|
  oscillator = user.oscillators.create!(title: "OSC " + i.to_s)
  puts "Oscillator with id #{ oscillator.id } created"
end
