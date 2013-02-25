Genre.delete_all
Song.delete_all
Album.delete_all
Artist.delete_all
User.delete_all
Mixtape.delete_all

g1 = Genre.create(:name => 'Classical')
g2 = Genre.create(:name => 'Rock')
g3 = Genre.create(:name => 'Top 40')

s1 = Song.create(:name => 'Thriller', :filename => 'testing.mp3', :image => '100px_placeholder.png', :price => 0.99)
s2 = Song.create(:name => 'Billie Jean', :filename => 'testing.mp3', :image => '100px_placeholder.png', :price => 0.99)
s3 = Song.create(:name => 'Smells Like Teen Spirit', :filename => 'testing.mp3', :image => '100px_placeholder.png', :price => 0.99)
s4 = Song.create(:name => 'Cop shoot cop', :filename => 'cop_shoot_cop.mp3', :image => '100px_placeholder.png', :price => 0.99)
s5 = Song.create(:name => 'Everywhere', :filename => 'everywhere.m4a', :image => '100px_placeholder.png', :price => 0.99)
s6 = Song.create(:name => 'I think Im in love', :filename => 'in_love.mp3', :image => '100px_placeholder.png', :price => 0.99)
s7 = Song.create(:name => 'Avalon', :filename => 'Avalon.mp3', :image => '100px_placeholder.png', :price => 0.99)
s8 = Song.create(:name => 'India', :filename => 'india.mp3', :image => '100px_placeholder.png', :price => 0.99)

a1 = Album.create(:name => 'Thriller')
a2 = Album.create(:name => 'Nevermind')
a3 = Album.create(:name => 'The White Album')

r1 = Artist.create(:name => 'Michael Jackson')
r2 = Artist.create(:name => 'Nirvana')
r3 = Artist.create(:name => 'The Beatles')

u1 = User.create(:name => 'Bob', :image => 'http://www.comedycouch.com/images/interview_photos/bnewhart1.jpg', :password => 'bob', :password_confirmation => 'bob', :balance => 50.0)
u2 = User.create(:name => 'Alice', :image => 'http://www.magweb.com/picts/actor/59292/linda_lavin.jpg', :password => 'alice', :password_confirmation => 'alice', :balance => 30.0)
u3 = User.create(:name => 'Sue', :image => 'http://assets.nydailynews.com/polopoly_fs/1.332551.1314426767!/img/httpImage/amd-sue-simmons-jpg.jpg', :password => 'sue', :password_confirmation => 'sue', :balance => 10.75)
u4 = User.create(:name => 'Admin', :image => 'http://images.ridemonkey.com/index.php?size=full&src=http%3A%2F%2Fimg.photobucket.com%2Falbums%2Fv469%2Fbmxgirlie%2Fbear.jpg', :password => 'admin', :password_confirmation => 'admin', :balance => 100.0)
u4.is_admin = true
u4.save

m1 = Mixtape.create(:name => 'Easy Listening')
m2 = Mixtape.create(:name => 'Workout Music')
m3 = Mixtape.create(:name => 'Old School')

r1.songs << s1 << s2
r2.songs << s3

a1.songs << s1 << s2

a2.songs << s3

g3.songs << s1 << s2 << s3

u1.mixtapes << m1 << m2
u3.mixtapes << m3

m1.songs << s1 << s3
m2.songs << s1 << s2
m3.songs << s1 << s2 << s3

u1.albums = [a1, a2]