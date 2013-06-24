# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Emanuel', :city => cities.first)

#Tables
Table.create(:name => '1', :seats => 4 )
Table.create(:name => '2', :seats => 6, :status => 'In Service')
Table.create(:name => '3', :seats => 4 )
Table.create(:name => '4', :seats => 8 )
Table.create(:name => '5', :seats => 4, :status => 'In Service')
Table.create(:name => '6', :seats => 4, :status => 'In Service')
Table.create(:name => '7', :seats => 6 )
Table.create(:name => '8', :seats => 6, :status => 'In Service')
Table.create(:name => '9', :seats => 8 )
Table.create(:name => '10', :seats => 2 )

#Accounts
Account.create(:table => Table.find_by_name('2'))
Account.create(:table => Table.find_by_name('5'))
Account.create(:table => Table.find_by_name('6'))
Account.create(:table => Table.find_by_name('8'))

#Products
Product.create(:name => 'Quesadillas', :description => 'Awesome quesadillas', :price => 10.25)
Product.create(:name => 'Coke', :description => 'Enjoy Coke', :price => 1.25)
Product.create(:name => 'Pasta', :description => 'Italian Style', :price => 12.00)
Product.create(:name => 'Refresco', :description => 'Bebida carbonatada de sabor', :price => 10.00)
Product.create(:name => 'Cerveza', :description => 'Modelo, Pacífico, Corona, Estrella', :price => 20.00)
Product.create(:name => 'Filete de res', :description => 'Arrachera asada al gusto', :price => 95.00)
Product.create(:name => 'Filete de pescado', :description => 'Huachinango, Mojarra, Lisa al gusto', :price => 85.00)
Product.create(:name => 'Hamburguesa', :description => 'Hamburguesa simple', :price => 45.00)
Product.create(:name => 'Agua Fresca', :description => 'Bebida de fruta natural', :price => 10.00)
Product.create(:name => 'Sopa de fideos', :description => 'Sopa del día', :price => 25.00)
Product.create(:name => 'Caldo Tlalpeño', :description => 'Descripción', :price => 35.00)
Product.create(:name => 'Pozole', :description => 'Pozole de cerdo', :price => 25.00)
Product.create(:name => 'Enchiladas verdes', :description => 'Enchiladas Suizas', :price => 35.00)
Product.create(:name => 'Chilaquiles', :description => 'Verdes o rojos', :price => 35.00)
Product.create(:name => 'Huevos rancheros', :description => 'Huevos fritos', :price => 25.00)
Product.create(:name => 'Huevos con tocino', :description => 'Huevos con tocino', :price => 30.00)

#Account_Items
AccountItem.create(:account_id => '1', :product_id => '1', :quantity => '2', :price => 10.25)
AccountItem.create(:account_id => '1', :product_id => '4', :quantity => '3', :price => 5.00)
AccountItem.create(:account_id => '1', :product_id => '3', :quantity => '4', :price => 12.00)
AccountItem.create(:account_id => '1', :product_id => '2', :quantity => '1', :price => 12.0)
AccountItem.create(:account_id => '2', :product_id => '1', :quantity => '2', :price => 10.25)
AccountItem.create(:account_id => '2', :product_id => '2', :quantity => '2', :price => 1.25)
AccountItem.create(:account_id => '2', :product_id => '3', :quantity => '1', :price => 12.00)
AccountItem.create(:account_id => '2', :product_id => '4', :quantity => '1', :price => 10.00)
AccountItem.create(:account_id => '3', :product_id => '4', :quantity => '2', :price => 10.00)
AccountItem.create(:account_id => '3', :product_id => '5', :quantity => '3', :price => 20.00)
AccountItem.create(:account_id => '3', :product_id => '3', :quantity => '3', :price => 12.00)
AccountItem.create(:account_id => '3', :product_id => '2', :quantity => '4', :price => 1.25)
AccountItem.create(:account_id => '4', :product_id => '1', :quantity => '2', :price => 10.25)
AccountItem.create(:account_id => '4', :product_id => '2', :quantity => '1', :price => 1.25)
AccountItem.create(:account_id => '4', :product_id => '3', :quantity => '5', :price => 12.00)
AccountItem.create(:account_id => '5', :product_id => '4', :quantity => '1', :price => 10.00)
AccountItem.create(:account_id => '5', :product_id => '5', :quantity => '2', :price => 20.00)
