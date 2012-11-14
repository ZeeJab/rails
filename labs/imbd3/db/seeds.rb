m1 = Movie.create(:name => "Pirates of The Carabean")
m2 = Movie.create(:name => "Blow")
m3 = Movie.create(:name => "Good Will Hunting")
m4 = Movie.create(:name => "Skyfall")

d1 = Director.create(:name => "John")
d2 = Director.create(:name => "Bannana")
d3 = Director.create(:name => "Sheep")

s1 = Studio.create(:name => "Universal")
s2 = Studio.create(:name => "MGM")
s3 = Studio.create(:name => "Hello")

a1 = Actor.create(:name => "Johnny Depp")
a2 = Actor.create(:name => "Matt Damon")
a3 = Actor.create(:name => "Daniel Craig")

s1.movies << m1
s2.movies = [m2, m1, m3]
s3.movies << m4

d1.movies = [m1, m2]
d2.movies = [m3]
d3.movies << m4

a1.movies = [m1, m2]
a2.movies << m3
a3.movies << m4

m1.actors << a1




