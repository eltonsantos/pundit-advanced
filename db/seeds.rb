# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create email: "teste@teste.com", password: "12345678", role: 1
User.create email: "fulano@fulano.com", password: "12345678", role: 0

Functionality.create description: "Editar empresa"
Functionality.create description: "Remover empresa"
Functionality.create description: "Editar produto"
Functionality.create description: "Remover produto"

Group.create description: "Grupo 1"
Group.create description: "Grupo 2"
Group.create description: "Grupo 3"

Product.create description: "Macbook Air", price: 4500, quantity: 2
Product.create description: "Asus Zenfone 2", price: 1500, quantity: 4
Product.create description: "Iphone 6s", price: 3500, quantity: 3

Company.create description: "R2A", cnpj: "44332211", capital: 100000
Company.create description: "Instituto Atlântico", cnpj: "11223344", capital: 200000