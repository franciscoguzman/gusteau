# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Emanuel', :city => cities.first)

#Tables
Table.create(:name => '10', :seats => 6)
Table.create(:name => '11', :seats => 4)
Table.create(:name => '12', :seats => 6, :status => 'En Servicio')
Table.create(:name => '13', :seats => 4)
Table.create(:name => '14', :seats => 6)

Table.create(:name => '15', :seats => 4, :status => 'En Servicio')
Table.create(:name => '20', :seats => 4)
Table.create(:name => '21', :seats => 6, :status => 'En Servicio')
Table.create(:name => '22', :seats => 4)
Table.create(:name => '23', :seats => 6)

Table.create(:name => '24', :seats => 4)
Table.create(:name => '25', :seats => 6)
Table.create(:name => '30', :seats => 4, :status => 'En Servicio')
Table.create(:name => '31', :seats => 4)
Table.create(:name => '32', :seats => 4, :status => 'En Servicio')

#orders
Order.create(:table => Table.find_by_name('12'))
Order.create(:table => Table.find_by_name('15'))
Order.create(:table => Table.find_by_name('21'))
Order.create(:table => Table.find_by_name('30'))
Order.create(:table => Table.find_by_name('32'))


#Products
Product.create(:name => 'Quesadillas', :description => 'Awesome quesadillas', :price => 10.25)
Product.create(:name => 'Coke', :description => 'Enjoy Coke', :price => 1.25)
Product.create(:name => 'Pasta', :description => 'Italian Style', :price => 12.00)
Product.create(:name => 'Refresco', :description => 'Bebida carbonatada de sabor', :price => 10.00)
Product.create(:name => 'Cerveza', :description => 'Modelo, Pacifico, Corona, Estrella', :price => 20.00)
Product.create(:name => 'Filete de res', :description => 'Arrachera asada al gusto', :price => 95.00)
Product.create(:name => 'Filete de pescado', :description => 'Huachinango, Mojarra, Lisa al gusto', :price => 85.00)
Product.create(:name => 'Hamburguesa', :description => 'Hamburguesa simple', :price => 45.00)
Product.create(:name => 'Agua Fresca', :description => 'Bebida de fruta natural', :price => 10.00)
Product.create(:name => 'Sopa de fideos', :description => 'Sopa del dia', :price => 25.00)
Product.create(:name => 'Caldo Tlalpa', :description => 'Descripcion', :price => 35.00)
Product.create(:name => 'Pozole', :description => 'Pozole de cerdo', :price => 25.00)
Product.create(:name => 'Enchiladas verdes', :description => 'Enchiladas Suizas', :price => 35.00)
Product.create(:name => 'Chilaquiles', :description => 'Verdes o rojos', :price => 35.00)
Product.create(:name => 'Huevos rancheros', :description => 'Huevos fritos', :price => 25.00)
Product.create(:name => 'Huevos con tocino', :description => 'Huevos con tocino', :price => 30.00)

#Order_Items
OrderItem.create(:order_id => '1', :product_id => '1', :quantity => '2', :price => 10.25)
OrderItem.create(:order_id => '1', :product_id => '4', :quantity => '3', :price => 5.00)
OrderItem.create(:order_id => '1', :product_id => '3', :quantity => '4', :price => 12.00)
OrderItem.create(:order_id => '1', :product_id => '2', :quantity => '1', :price => 12.0)
OrderItem.create(:order_id => '2', :product_id => '1', :quantity => '2', :price => 10.25)
OrderItem.create(:order_id => '2', :product_id => '2', :quantity => '2', :price => 1.25)
OrderItem.create(:order_id => '2', :product_id => '3', :quantity => '1', :price => 12.00)
OrderItem.create(:order_id => '2', :product_id => '4', :quantity => '1', :price => 10.00)
OrderItem.create(:order_id => '3', :product_id => '4', :quantity => '2', :price => 10.00)
OrderItem.create(:order_id => '3', :product_id => '5', :quantity => '3', :price => 20.00)
OrderItem.create(:order_id => '3', :product_id => '3', :quantity => '3', :price => 12.00)
OrderItem.create(:order_id => '3', :product_id => '2', :quantity => '4', :price => 1.25)
OrderItem.create(:order_id => '4', :product_id => '1', :quantity => '2', :price => 10.25)
OrderItem.create(:order_id => '4', :product_id => '2', :quantity => '1', :price => 1.25)
OrderItem.create(:order_id => '4', :product_id => '3', :quantity => '5', :price => 12.00)
OrderItem.create(:order_id => '5', :product_id => '4', :quantity => '1', :price => 10.00)
OrderItem.create(:order_id => '5', :product_id => '5', :quantity => '2', :price => 20.00)