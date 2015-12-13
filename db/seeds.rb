Product.destroy_all

p1 = Product.create :name => 'Red Bucket'
p1.tag_list.add('birthday', 'wedding', 'party')
# Product.create(:name => 'Blue Vase', :tag_list => 'wedding, garden, table')


