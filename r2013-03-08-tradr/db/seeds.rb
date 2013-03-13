User.delete_all
Stock.delete_all

u1 = User.create(:name => 'bob', :email => 'bob@gmail.com', :balance => 20000, :password => 'x', :password_confirmation => 'x')
u2 = User.create(:name => 'sue', :email => 'sue@gmail.com', :balance => 20000, :password => 'x', :password_confirmation => 'x')
u3 = User.create(:name => 'rex', :email => 'rex@gmail.com', :balance => 9000, :password => 'x', :password_confirmation => 'x')

s1 = Stock.create(:symbol => 'AAPL', :shares => 10)
s2 = Stock.create(:symbol => 'GOOG', :shares => 10)
s3 = Stock.create(:symbol => 'YHOO', :shares => 10)
s4 = Stock.create(:symbol => 'AAPL', :shares => 10)
s5 = Stock.create(:symbol => 'GOOG', :shares => 10)
s6 = Stock.create(:symbol => 'YHOO', :shares => 10)

u1.stocks << s1 << s2
u2.stocks << s3 << s4
u3.stocks << s5 << s6