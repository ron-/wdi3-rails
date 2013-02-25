Author.delete_all
Book.delete_all

Author.create(:image => 'http://media.snl.no/system/images/4799/standard_hamsun_portrett.jpg', :name => 'Knut Hamsun', :dob => '4 August 1859', :birthplace => 'Norway', :nationality => 'Norwegian')
Author.create(:image => 'http://upload.wikimedia.org/wikipedia/commons/c/c2/Louis-Ferdinand_C%C3%A9line_1932.jpg', :name => 'Louis-Ferdinand Celine', :dob => '27 May 1894', :birthplace => 'France', :nationality => 'French')
Author.create(:image => 'http://arts.columbia.edu/files/soa/SSP_Bolano.jpg', :name => 'Roberto Bolano', :dob => '28 April 1953', :birthplace => 'Chile', :nationality => 'Chilean')
Author.create(:image => 'http://en.wikipedia.org/wiki/File:Cort%C3%A1zar.jpg', :name => 'Julio Cortazar', :dob => '26 August 1914', :birthplace => 'Belgium', :nationality => 'Argentine')
Author.create(:image => 'http://upload.wikimedia.org/wikipedia/commons/0/0a/Huysmans_par_Taponier_1904.jpg', :name => 'Joris-Karl Huysmans', :dob => '5 February 1848', :birthplace => 'France', :nationality => 'French')

Book.create(:image => 'http://farm7.staticflickr.com/6105/6238655624_bf3b3c3344_z.jpg', :title => 'Hunger', :pubdate => '2008', :publisher => 'Farrar Straus and Giroux', :pages => '272')
Book.create(:image => 'http://www.natvanbooks.com/cat/709.gif', :title => 'The Growth of the Soil', :pubdate => '1912', :publisher => 'Empire', :pages => '402')
Book.create(:image => 'http://3.bp.blogspot.com/--da83WSRKTw/TaytY3peb1I/AAAAAAAAACo/cs2hSGNRxMs/s1600/jttenotn.jpg', :title => 'Journey to the End of the Night', :pubdate => '2006', :publisher => 'New Directions', :pages => '464')
Book.create(:image => 'http://d.gr-assets.com/books/1327947390l/106096.jpg', :title => 'Death on the Installment Plan', :pubdate => '1971', :publisher => 'New Directions', :pages => '592')
Book.create(:image => 'http://thirdfactory.files.wordpress.com/2009/05/bolano-savage1.jpg', :title => 'The Savage Detectives', :pubdate => '2008', :publisher => 'Picador', :pages => '672')
Book.create(:image => 'http://quarterlyconversation.com/wordpress/wp-content/uploads/2008/11/2666-roberto-bolano.jpg', :title => '2666', :pubdate => '2009', :publisher => 'Picador', :pages => '912')
Book.create(:image => 'http://media-cache0.pinterest.com/upload/135811744983241857_1h7u28qQ_c.jpg', :title => 'Hopscotch', :pubdate => '1982', :publisher => 'Pantheon', :pages => '576')
Book.create(:image => 'http://d.gr-assets.com/books/1336621480l/53410.jpg', :title => 'Blow Up and Other Stories', :pubdate => '1984', :publisher => 'Pantheon', :pages => '288')
Book.create(:image => 'http://huysmans.org/dedalus/cover.jpg', :title => 'La Bas', :pubdate => '1891', :publisher => 'Penguin', :pages => '320')
Book.create(:image => 'http://www.gerrybeckley.com/images/againstnature.jpg', :title => 'A Rebours', :pubdate => '1895', :publisher => 'Oxford', :pages => '270')