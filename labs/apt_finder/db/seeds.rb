Apartment.delete_all
Tenant.delete_all

a1 = Apartment.create(:name => "A1", :rooms => 1, :rent => 1_200)
a2 = Apartment.create(:name => "A2", :rooms => 2, :rent => 2_200)
a3 = Apartment.create(:name => "A3", :rooms => 3, :rent => 3_000)
a4 = Apartment.create(:name => "A4", :rooms => 4, :rent => 3_500)
a5 = Apartment.create(:name => "A5", :rooms => 1, :rent => 1_200)

t1 = Tenant.create(:name => "Chyld", :age => 30, :gender => "male")
t2 = Tenant.create(:name => "Zahra", :age => 27, :gender => "female")
t3 = Tenant.create(:name => "Tiffany", :age => 26, :gender => "female")
t4 = Tenant.create(:name => "Francisco", :age => 27, :gender => "male")

p1 = Pet.create(:name => "Max", :age => 5, :species => "male")
p2 = Pet.create(:name => "Roger", :age => 2, :species => "female")
p3 = Pet.create(:name => "Pepper", :age => 6, :species => "female")
p4 = Pet.create(:name => "Charley", :age => 2, :species => "male")

a1.tenants << t1
a2.tenants = [t2, t3]
a3.tenants << t4
a4.tenants << t4

t1.pets << p4
t2.pets = [p1, p3]
t3.pets << p2