User.create!(email: 'test@test.com', name: 'Homer Simpson', password: 'asdfasdf', password_confirmation: 'asdfasdf')

puts "1 User created"

vaccs_list = ['Tdap', 'Tuberculosis', 'Hep A', 'Hep B', 'Varicella', 'Rubella', 'Mumps', 'Anti-hbs', 'Rubeola']

vaccs_list.each do |i|
  Vaccination.create!(title: "#{i}")
end

puts "9 vaccinations created"