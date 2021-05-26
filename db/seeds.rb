puts "Clearing old data..."
Cohort.destroy_all
Student.destroy_all

# This will create 5 cohorts using a random date
puts "Seeding cohorts..."
c1 = Cohort.create(
  name: "F$off} LLAMA",
  current_mod: rand(1..5)
)
c2 = Cohort.create(
  name: "devTones",
  current_mod: rand(1..5)
)


puts "Seeding students..."

s1 = Student.create(
  name: "Dane",
  age: 32, 
  cohort_id: c1.id
)
s2 = Student.create(
  name: "Grant",
  age: 28, 
  cohort_id: c2.id
)
s3 = Student.create(
  name: "Selam",
  age: 25, 
  cohort_id: c2.id
)
s4 = Student.create(
  name: "David",
  age: 20, 
  cohort_id: c1.id
)
s5 = Student.create(
  name: "Frank",
  age: 102, 
  cohort_id: c1.id
)
# TODO: create seed data for students
# check your schema and make sure to create students with all the necessary data

puts "Done!"