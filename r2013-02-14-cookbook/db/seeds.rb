Book.delete_all
Recipe.delete_all
Ingredient.delete_all

b1 = Book.create(:title => 'How to Cook Everything', :cuisine => 'All', :chef => 'Mark Bittman', :image => 'http://simplemom.net/wp-content/uploads/2012/11/howtocookeverything.jpeg')

r1 = Recipe.create(:name => 'Chicken Soup', :course => 'soup', :cooktime => '2 hours', :servingsize => '4',:instructions => 'boil it',:image => 'http://www.seniormag.com/cookbook/images/chicken-soup.jpg')
r2 = Recipe.create(:name => 'Chicken Parmigiana', :course => 'main', :cooktime => '1 hour', :servingsize => '4',:instructions => 'cook it now',:image => 'http://chickenzz.com/images/chicken%20parmigiana/5_chicken%20parmigiana.jpg')
r3 = Recipe.create(:name => 'Fried Chicken', :course => 'main', :cooktime => '1 hour', :servingsize => '4 people',:instructions => 'fry it',:image => 'http://nieuport17.com/wp-content/uploads/2012/01/Fried-Chicken.jpg')

i1 = Ingredient.create(:name => 'chicken', :measurement => '2lb', :cost => '4', :image => 'http://www.hospitalityinfocentre.co.uk/Poultry/Images/raw-chicken.jpg')
i2 = Ingredient.create(:name => 'breadcrumbs', :measurement => '6oz', :cost => '1', :image => 'http://www.foodsubs.com/Photos/breadcrumbs2.jpg')
i3 = Ingredient.create(:name => 'eggs', :measurement => '4', :cost => '1', :image => 'http://i-cdn.apartmenttherapy.com/uimages/kitchen/2008_03_26-EggFreshness.jpg')
i4 = Ingredient.create(:name => 'tomato sauce', :measurement => '2 cups', :cost => '3', :image => 'http://www.simplyrecipes.com/wp-content/uploads/2007/01/basic-tomato-sauce.jpg?ea6e46')
i5 = Ingredient.create(:name => 'salt', :measurement => '2 tbsp', :cost => '1', :image => 'http://images.wisegeek.com/table-salt.jpg')
i6 = Ingredient.create(:name => 'black pepper', :measurement => '1tbsp', :cost => '0.2', :image => 'http://ichef.bbci.co.uk/food/ic/food_16x9_608/foods/b/black_pepper_16x9.jpg')

b1.recipes = [r1, r2]
b1.recipes << r3

r1.ingredients = [i1, i2, i4]
r2.ingredients = [i2, i4, i5, i6]
r3.ingredients = [i3, i6, i5, i1]
