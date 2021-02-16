# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Create a main sample user.
worker = User.create(name:  "Zaposleni",
             email: "zaposleni@firma.rs",
             password:              "123456",
             password_confirmation: "123456")

admin = User.create(name:  "Luka Petrovic",
             email: "l@p.rs",
             password:              "123456",
             password_confirmation: "123456",
             admin: true)

company = Company.create(name: "Code Dream")
Company.create!(name: "ASW")
Contact.create!(name: "Petar", surname: "Ratkovic", company: company)        

project_status = ProjectStatus.create(name: "Active")
ProjectStatus.create!(name: "Closed")

project = Project.create(name: "Ruby on rails", user: admin, company: company, project_status: project_status)

component = Component.create(name: "Frontend", project: project)
Component.create!(name: "Backend", project: project)

task_status_in_dev = TaskStatus.create(name: "In development")
task_status_inactive = TaskStatus.create(name: "Inactive")

task = Task.create(name: "Welcome screen", component: component, task_status: task_status_in_dev)
Task.create!(name: "Users page", component: component, task_status: task_status_inactive)

TaskLog.create!(title: "Started working", content: "A long description of the work I have done", task: task, user: worker)

Worker.create!(user: worker, component: component)
Worker.create!(user: admin, component: component)

# Generate a bunch of additional users.
25.times do |n|
  name  = Faker::Name.name
  email = "test-#{n+1}@test.com"
  password = "testtest"
  User.create!(name:  name,
               email: email,
               password:              password,
               password_confirmation: password)
end