Artist.delete_all

Artist.create(:name => 'Piet Mondrian', :nationality => 'Dutch', :dob => '', :period => 'De Stijl', :image => 'http://en.wikipedia.org/wiki/File:Piet_Mondriaan.jpg')
Artist.create(:name => 'Willem de Kooning', :nationality => 'Dutch', :dob => '', :period => 'Abstract Expressionism', :image => 'http://upload.wikimedia.org/wikipedia/commons/0/09/Willem_de_Kooning_in_his_studio.jpg')
Artist.create(:name => 'Johannes Vermeer', :nationality => 'Dutch', :dob => '', :period => 'Baroque', :image => 'http://www.essentialvermeer.com/images/vermeerslife_vermeers_face.jpg')
Artist.create(:name => 'Vincent van Gogh', :nationality => 'Dutch', :dob => '', :period => 'Post-Impressionism', :image => 'http://static.ddmcdn.com/gif/vincent-van-gogh-paintings-from-paris-5.jpg')
Artist.create(:name => 'Rembrandt van Rijn', :nationality => 'Dutch', :dob => '', :period => 'Baroque', :image => 'http://emptyeasel.com/wp-content/uploads/2007/02/rembrandt-self-portrait-1660.jpg')

Painting.delete_all

Painting.create(:title => 'Broadway Boogie Woogie', :year => '1942', :medium => 'oils', :style => 'Modern', :image => 'http://images.artfinding.com/svv/2/301/piet_mondrian_d_apres__broadway_boogie_woogie-339-1.jpg')
Painting.create(:title => 'The Night Watch', :year => '1642', :medium => 'oil on canvas', :style => 'Baroque', :image => 'http://upload.wikimedia.org/wikipedia/commons/2/28/The_Nightwatch_by_Rembrandt.jpg')
Painting.create(:title => 'The Geographer', :year => '1668', :medium => 'oil on canvas', :style => 'Baroque', :image => 'http://upload.wikimedia.org/wikipedia/commons/thumb/c/c6/J._VERMEER_-_El_ge%C3%B3grafo_(Museo_St%C3%A4del,_Fr%C3%A1ncfort_del_Meno,_1669).jpg/300px-J._VERMEER_-_El_ge%C3%B3grafo_(Museo_St%C3%A4del,_Fr%C3%A1ncfort_del_Meno,_1669).jpg')
Painting.create(:title => 'Woman3', :year => '1951', :medium => 'oil on canvas', :style => 'postmodernism', :image => 'http://upload.wikimedia.org/wikipedia/en/e/e7/Woman3.jpg')
Painting.create(:title => 'At Eternitys Gate', :year => '1890', :medium => 'oil on canvas', :style => 'impressionist', :image => 'http://upload.wikimedia.org/wikipedia/commons/3/38/Vincent_Willem_van_Gogh_002.jpg')