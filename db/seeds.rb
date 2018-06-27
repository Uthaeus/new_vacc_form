User.create!(email: 'test@test.com', name: 'Homer Simpson', password: 'asdfasdf', password_confirmation: 'asdfasdf', role: 'admin')

puts "1 Admin User created"

User.create!(email: 'test2@test.com', name: 'Jim Beam', password: 'asdfasdf'. password_confirmation: 'asdfasdf', role: 'user')

puts "1 Regular User created"

vaccs_list = ['Tdap', 'Tuberculosis', 'Hep A', 'Hep B', 'Varicella', 'Rubella', 'Mumps', 'Anti-hbs', 'Rubeola']

vaccs_list.each do |i|
  Vaccination.create!(title: "#{i}")
end

puts "9 vaccinations created"