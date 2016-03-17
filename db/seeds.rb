Company.create description: "R2A", cnpj: "44332211", capital: 100000
Company.create description: "Instituto Atlântico", cnpj: "11223344", capital: 200000

User.create email: "teste@teste.com", password: "12345678", role: 0, company_id: 1
User.create email: "fulano@fulano.com", password: "12345678", role: 1, group_id: 1, father_id: 1, company_id: 1

Functionality.create description: "Editar empresa"
Functionality.create description: "Remover empresa"
Functionality.create description: "Editar produto"
Functionality.create description: "Remover produto"

Group.create description: "Grupo 1", company_id: 1
Group.create description: "Grupo 2", company_id: 1
Group.create description: "Grupo 3", company_id: 2

GroupFunctionality.create group_id: 1, functionality_id: 1
GroupFunctionality.create group_id: 1, functionality_id: 2
GroupFunctionality.create group_id: 2, functionality_id: 1
GroupFunctionality.create group_id: 2, functionality_id: 3
GroupFunctionality.create group_id: 2, functionality_id: 4
GroupFunctionality.create group_id: 3, functionality_id: 2
GroupFunctionality.create group_id: 3, functionality_id: 4

Product.create description: "Macbook Air", price: 4500, quantity: 2
Product.create description: "Asus Zenfone 2", price: 1500, quantity: 4
Product.create description: "Iphone 6s", price: 3500, quantity: 3