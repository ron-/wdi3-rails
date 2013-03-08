User.delete_all
Exercise.delete_all

u1 = User.create(:email => 'bob@gmail.com', :password => 'x', :password_confirmation => 'x')
u2 = User.create(:email => 'tito@thejacksons.com', :password => 'x', :password_confirmation => 'x')
u3 = User.create(:email => 'richard@simmons.com', :password => 'x', :password_confirmation => 'x')


e1 = Exercise.create(:activity => 'running', :value => 10, :unit => 'km', :completed => '03-02-2013')
e2 = Exercise.create(:activity => 'running', :value => 50, :unit => 'km', :completed => '03-03-2013')
e3 = Exercise.create(:activity => 'running', :value => 10, :unit => 'km', :completed => '03-04-2013')
e4 = Exercise.create(:activity => 'running', :value => 18, :unit => 'km', :completed => '03-05-2013')
e5 = Exercise.create(:activity => 'running', :value => 30, :unit => 'km', :completed => '03-07-2013')
e6 = Exercise.create(:activity => 'running', :value => 5, :unit => 'km', :completed => '03-07-2013')
e7 = Exercise.create(:activity => 'running', :value => 10, :unit => 'km', :completed => '03-07-2013')
e8 = Exercise.create(:activity => 'push-ups', :value => 50, :unit => 'reps', :completed => '03-07-2013')
e9 = Exercise.create(:activity => 'jumprope', :value => 10, :unit => 'minutes', :completed => '03-07-2013')
e10 = Exercise.create(:activity => 'yoga', :value => 1, :unit => 'hour', :completed => '03-07-2013')
e11 = Exercise.create(:activity => 'situps', :value => 30, :unit => 'reps', :completed => '03-07-2013')
e12 = Exercise.create(:activity => 'running', :value => 5, :unit => 'km', :completed => '03-07-2013')

u1.exercises << e1 << e2 << e3 << e4 << e5 << e6
u2.exercises
u3.exercises << e5 << e6