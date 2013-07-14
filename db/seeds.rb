# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).

## Origins

ebay = Origin.create(:name => 'ebay', :description => 'eBay')
grandma_betty = Origin.create(:name => 'Grandma Betty', :description => "Marnie's Grandma")
raymond_and_jane_howell = Origin.create(:name => 'Raymond and Jane Howell', :description => "The Parents")


## Rating Agencies

ngc_agency = RatingAgency.create(:name => 'NGC', :full_name => 'Numismatic Guaranty Corporation ')
pcgs_agency = RatingAgency.create(:name => 'PCGS', :full_name => 'Professional Coin Grading Service')
blue_book_2013 = RatingAgency.create(:name => 'Blue Book 2013', :full_name => 'The Official Blue Book - Handbook of United States Coins - 2013')
blue_book_2014 = RatingAgency.create(:name => 'Blue Book 2014', :full_name => 'The Official Blue Book - Handbook of United States Coins - 2014')
red_book_2014 = RatingAgency.create(:name => 'Red Book 2014', :full_name => 'The Official Red Book - A Guide Book of United States Coins - 2014')

## Sheldon Rating Categories

pf_cat = SheldonRatingCategory.create(:title => 'PF', :description => 'Proof', :start => 60, :end => 70, :special_order => 1)
ms_cat = SheldonRatingCategory.create(:title => 'MS', :description => 'Mint State', :start => 60, :end => 70, :special_order => 0)
au_cat = SheldonRatingCategory.create(:title => 'AU', :description => 'About Uncirculated', :start => 50, :end => 59, :special_order => 0)
ef_cat = SheldonRatingCategory.create(:title => 'EF', :description => 'Extremely Fine', :start => 40, :end => 49, :special_order => 0)
vf_cat = SheldonRatingCategory.create(:title => 'VF', :description => 'Very Fine', :start => 20, :end => 39, :special_order => 0)
f_cat = SheldonRatingCategory.create(:title => 'F', :description => 'Fine', :start => 12, :end => 19, :special_order => 0)
vg_cat = SheldonRatingCategory.create(:title => 'VG', :description => 'Very Good', :start => 8, :end => 11, :special_order => 0)
g_cat = SheldonRatingCategory.create(:title => 'G', :description => 'Good', :start => 4, :end => 7, :special_order => 0)
ag_cat = SheldonRatingCategory.create(:title => 'AG', :description => 'About Good', :start => 3, :end => 3, :special_order => 0)
fr_cat = SheldonRatingCategory.create(:title => 'FR', :description => 'Fair', :start => 2, :end => 2, :special_order => 0)
po_cat = SheldonRatingCategory.create(:title => 'PO', :description => 'Poor', :start => 1, :end => 1, :special_order => 0)
b_cat = SheldonRatingCategory.create(:title => 'B', :description => 'Bad', :start => 0, :end => 0, :special_order => 0)


## Sheldon Rating Scales

po1 = SheldonRatingScale.create(:title => 'PO-1', :sheldon_rating_category_id => po_cat.id, :value => 1.00, :description => 'Identifiable date and type')
fr2 = SheldonRatingScale.create(:title => 'FR-2', :sheldon_rating_category_id => fr_cat.id, :value => 2.00, :description => 'Mostly worn, though some detail is visible')
ag3 = SheldonRatingScale.create(:title => 'AG-3', :sheldon_rating_category_id => ag_cat.id, :value => 3.00, :description => 'Worn rims but most lettering is readable though worn')
g4 = SheldonRatingScale.create(:title => 'G-4', :sheldon_rating_category_id => g_cat.id, :value => 4.00, :description => 'Slightly worn rims, flat detail, peripheral lettering nearly full')
g6 = SheldonRatingScale.create(:title => 'G-6', :sheldon_rating_category_id => g_cat.id, :value => 6.00, :description => 'Rims complete with flat detail, peripheral lettering full')
vg8 = SheldonRatingScale.create(:title => 'VG-8', :sheldon_rating_category_id => vg_cat.id, :value => 8.00, :description => 'Design worn with slight detail')
vg10 = SheldonRatingScale.create(:title => 'VG-10', :sheldon_rating_category_id => vg_cat.id, :value => 10.00, :description => 'Design worn with slight detail, slightly clearer')
f12 = SheldonRatingScale.create(:title => 'F-12', :sheldon_rating_category_id => f_cat.id, :value => 12.00, :description => 'Some deeply recessed areas with detail, all lettering sharp')
f15 = SheldonRatingScale.create(:title => 'F-15', :sheldon_rating_category_id => f_cat.id, :value => 15.00, :description => 'Slightly more detail in the recessed areas, all lettering sharp')
vf20 = SheldonRatingScale.create(:title => 'VF-20', :sheldon_rating_category_id => vf_cat.id, :value => 20.00, :description => 'Some definition of detail, all lettering full and sharp')
vf25 = SheldonRatingScale.create(:title => 'VF-25', :sheldon_rating_category_id => vf_cat.id, :value => 25.00, :description => 'Slightly more definition in the detail and lettering')
vf30 = SheldonRatingScale.create(:title => 'VF-30', :sheldon_rating_category_id => vf_cat.id, :value => 30.00, :description => 'Almost complete detail with flat areas')
vf35 = SheldonRatingScale.create(:title => 'VF-35', :sheldon_rating_category_id => vf_cat.id, :value => 35.00, :description => 'Detail is complete but worn with high points flat')
ef40 = SheldonRatingScale.create(:title => 'EF-40', :sheldon_rating_category_id => ef_cat.id, :value => 40.00, :description => 'Detail is complete with most high points slightly flat')
ef45 = SheldonRatingScale.create(:title => 'EF-45', :sheldon_rating_category_id => ef_cat.id, :value => 45.00, :description => 'Detail is complete with some high points flat')
ef451 = SheldonRatingScale.create(:title => 'EF-45+', :sheldon_rating_category_id => ef_cat.id, :value => 45.01, :description => 'Detail is complete with a few high points flat. Superior eye appeal.')
au50 = SheldonRatingScale.create(:title => 'AU-50', :sheldon_rating_category_id => au_cat.id, :value => 50.00, :description => 'Full detail with friction over most of the surface, slight flatness on high points.')
au501 = SheldonRatingScale.create(:title => 'AU-50+', :sheldon_rating_category_id => au_cat.id, :value => 50.01, :description => 'Full detail with friction over most of the surface, very slight flatness on high points. Good eye appeal.')
au53 = SheldonRatingScale.create(:title => 'AU-53', :sheldon_rating_category_id => au_cat.id, :value => 53.00, :description => 'Full detail with friction over 1/2 or more of surface, very slight flatness on high points.')
au531 = SheldonRatingScale.create(:title => 'AU-53+', :sheldon_rating_category_id => au_cat.id, :value => 53.01, :description => 'Full detail with friction on only 1/2 of surface, extremely slight flatness on high points. Positive eye appeal.')
au55 = SheldonRatingScale.create(:title => 'AU-55', :sheldon_rating_category_id => au_cat.id, :value => 55.00, :description => 'Full detail with friction on less than 1/2 surface, mainly on high points.')
au551 = SheldonRatingScale.create(:title => 'AU-55+', :sheldon_rating_category_id => au_cat.id, :value => 55.01, :description => 'Full detail with slight friction on less than 1/2 of surface, on high points. Eye appeal is good.')
au58 = SheldonRatingScale.create(:title => 'AU-58', :sheldon_rating_category_id => au_cat.id, :value => 58.00, :description => 'Full detail with only slight friction on the high points.')
au581 = SheldonRatingScale.create(:title => 'AU-58+', :sheldon_rating_category_id => au_cat.id, :value => 58.01, :description => 'Full detail with the barest trace of friction on the highest points. Superior eye appeal.')
ms60 = SheldonRatingScale.create(:title => 'MS-60', :sheldon_rating_category_id => ms_cat.id, :value => 60.00, :description => 'No wear. May have many heavy marks/hairlines, strike may not be full')
ms61 = SheldonRatingScale.create(:title => 'MS-61', :sheldon_rating_category_id => ms_cat.id, :value => 61.00, :description => 'No wear. Multiple heavy marks/hairlines, strike may not be full')
ms62 = SheldonRatingScale.create(:title => 'MS-62', :sheldon_rating_category_id => ms_cat.id, :value => 62.00, :description => 'No wear. Slightly less marks/hairlines, strike may not be full')
ms621 = SheldonRatingScale.create(:title => 'MS-62+', :sheldon_rating_category_id => ms_cat.id, :value => 62.01, :description => 'No wear. Still slightly above number of marks/hairlines, strike may not be full. Attractive eye appeal for grade.')
ms63 = SheldonRatingScale.create(:title => 'MS-63', :sheldon_rating_category_id => ms_cat.id, :value => 63.00, :description => 'Moderate number/size marks/hairlines, strike may not be full')
ms631 = SheldonRatingScale.create(:title => 'MS-63+', :sheldon_rating_category_id => ms_cat.id, :value => 63.01, :description => 'Average number of marks/hairlines, strike will be close to average. Good eye appeal for grade.')
ms64 = SheldonRatingScale.create(:title => 'MS-64', :sheldon_rating_category_id => ms_cat.id, :value => 64.00, :description => 'Few marks/hairlines or a couple of severe ones, strike should be average or above')
ms641 = SheldonRatingScale.create(:title => 'MS-64+', :sheldon_rating_category_id => ms_cat.id, :value => 64.01, :description => 'Very few marks/hairlines or a couple of heavier ones, strike should be average or above. Superior eye appeal.')
ms65 = SheldonRatingScale.create(:title => 'MS-65', :sheldon_rating_category_id => ms_cat.id, :value => 65.00, :description => 'Minor marks/hairlines though none in focal areas, above average strike')
ms651 = SheldonRatingScale.create(:title => 'MS-65+', :sheldon_rating_category_id => ms_cat.id, :value => 65.01, :description => 'Very minor marks/hairlines though none in focal areas, above average strike and eye appeal')
ms66 = SheldonRatingScale.create(:title => 'MS-66', :sheldon_rating_category_id => ms_cat.id, :value => 66.00, :description => 'Few minor marks/hairlines not in focal areas, good strike')
ms661 = SheldonRatingScale.create(:title => 'MS-66+', :sheldon_rating_category_id => ms_cat.id, :value => 66.01, :description => 'Very few minor marks/hairlines not in focal areas, very good strike with superior eye appeal')
ms67 = SheldonRatingScale.create(:title => 'MS-67', :sheldon_rating_category_id => ms_cat.id, :value => 67.00, :description => 'Virtually as struck with minor imperfections, very well struck')
ms671 = SheldonRatingScale.create(:title => 'MS-67+', :sheldon_rating_category_id => ms_cat.id, :value => 67.01, :description => 'Virtually as struck with very minor imperfections, very well struck with attractive eye appeal')
ms68 = SheldonRatingScale.create(:title => 'MS-68', :sheldon_rating_category_id => ms_cat.id, :value => 68.00, :description => 'Virtually as struck with slight imperfections, slightest weakness of strike allowed')
ms681 = SheldonRatingScale.create(:title => 'MS-68+', :sheldon_rating_category_id => ms_cat.id, :value => 68.01, :description => 'Virtually as struck with very slight imperfections, the strike must be virtually full. Eye appeal must be very good.')
ms69 = SheldonRatingScale.create(:title => 'MS-69', :sheldon_rating_category_id => ms_cat.id, :value => 69.00, :description => 'Virtually as struck with minuscule imperfections, near full strike necessary')
ms70 = SheldonRatingScale.create(:title => 'MS-70', :sheldon_rating_category_id => ms_cat.id, :value => 70.00, :description => 'As struck, with full strike')
pf60 = SheldonRatingScale.create(:title => 'PF-60', :sheldon_rating_category_id => pf_cat.id, :value => 60.00, :description => 'No wear. May have many heavy marks/hairlines, strike may not be full')
pf61 = SheldonRatingScale.create(:title => 'PF-61', :sheldon_rating_category_id => pf_cat.id, :value => 61.00, :description => 'No wear. Multiple heavy marks/hairlines, strike may not be full')
pf62 = SheldonRatingScale.create(:title => 'PF-62', :sheldon_rating_category_id => pf_cat.id, :value => 62.00, :description => 'No wear. Slightly less marks/hairlines, strike may not be full')
pf621 = SheldonRatingScale.create(:title => 'PF-62+', :sheldon_rating_category_id => pf_cat.id, :value => 62.01, :description => 'No wear. Still slightly above number of marks/hairlines, strike may not be full. Attractive eye appeal for grade.')
pf63 = SheldonRatingScale.create(:title => 'PF-63', :sheldon_rating_category_id => pf_cat.id, :value => 63.00, :description => 'Moderate number/size marks/hairlines, strike may not be full')
pf631 = SheldonRatingScale.create(:title => 'PF-63+', :sheldon_rating_category_id => pf_cat.id, :value => 63.01, :description => 'Average number of marks/hairlines, strike will be close to average. Good eye appeal for grade.')
pf64 = SheldonRatingScale.create(:title => 'PF-64', :sheldon_rating_category_id => pf_cat.id, :value => 64.00, :description => 'Few marks/hairlines or a couple of severe ones, strike should be average or above')
pf641 = SheldonRatingScale.create(:title => 'PF-64+', :sheldon_rating_category_id => pf_cat.id, :value => 64.01, :description => 'Very few marks/hairlines or a couple of heavier ones, strike should be average or above. Superior eye appeal.')
pf65 = SheldonRatingScale.create(:title => 'PF-65', :sheldon_rating_category_id => pf_cat.id, :value => 65.00, :description => 'Minor marks/hairlines though none in focal areas, above average strike')
pf651 = SheldonRatingScale.create(:title => 'PF-65+', :sheldon_rating_category_id => pf_cat.id, :value => 65.01, :description => 'Very minor marks/hairlines though none in focal areas, above average strike and eye appeal')
pf66 = SheldonRatingScale.create(:title => 'PF-66', :sheldon_rating_category_id => pf_cat.id, :value => 66.00, :description => 'Few minor marks/hairlines not in focal areas, good strike')
pf661 = SheldonRatingScale.create(:title => 'PF-66+', :sheldon_rating_category_id => pf_cat.id, :value => 66.01, :description => 'Very few minor marks/hairlines not in focal areas, very good strike with superior eye appeal')
pf67 = SheldonRatingScale.create(:title => 'PF-67', :sheldon_rating_category_id => pf_cat.id, :value => 67.00, :description => 'Virtually as struck with minor imperfections, very well struck')
pf671 = SheldonRatingScale.create(:title => 'PF-67+', :sheldon_rating_category_id => pf_cat.id, :value => 67.01, :description => 'Virtually as struck with very minor imperfections, very well struck with attractive eye appeal')
pf68 = SheldonRatingScale.create(:title => 'PF-68', :sheldon_rating_category_id => pf_cat.id, :value => 68.00, :description => 'Virtually as struck with slight imperfections, slightest weakness of strike allowed')
pf681 = SheldonRatingScale.create(:title => 'PF-68+', :sheldon_rating_category_id => pf_cat.id, :value => 68.01, :description => 'Virtually as struck with very slight imperfections, the strike must be virtually full. Eye appeal must be very good.')
pf69 = SheldonRatingScale.create(:title => 'PF-69', :sheldon_rating_category_id => pf_cat.id, :value => 69.00, :description => 'Virtually as struck with minuscule imperfections, near full strike necessary')
pf70 = SheldonRatingScale.create(:title => 'PF-70', :sheldon_rating_category_id => pf_cat.id, :value => 70.00, :description => 'As struck, with full strike')

## Precious Metals -- Value needs updating regularly

gold = PreciousMetal.create(:name => 'Gold', :symbol => 'Au', :unit => 'ounce', :conversion_factor => 0.0321510000, :price_per_unit => 1596.9000000000, :price_per_gram => 51.3415272455)
silver = PreciousMetal.create(:name => 'Silver', :symbol => 'Ag', :unit => 'ounce', :conversion_factor => 0.0321510000, :price_per_unit => 28.3000000000, :price_per_gram => 0.9098661288)
copper = PreciousMetal.create(:name => 'Copper', :symbol => 'Cu', :unit => 'pound', :conversion_factor => 0.0022050000, :price_per_unit => 3.4200000000, :price_per_gram => 0.0075398094)
manganese = PreciousMetal.create(:name => 'Manganese', :symbol => 'Mn', :unit => 'ton', :conversion_factor => 0.0000010000, :price_per_unit => 2405.0000000000, :price_per_gram => 0.0024050000)
nickel_metal = PreciousMetal.create(:name => 'Nickel', :symbol => 'Ni', :unit => 'pound', :conversion_factor => 0.0022050000, :price_per_unit => 7.5600000000, :price_per_gram => 0.0166669470)
zinc = PreciousMetal.create(:name => 'Zinc', :symbol => 'Zn', :unit => 'pound', :conversion_factor => 0.0022050000, :price_per_unit => 0.8400000000, :price_per_gram => 0.0018518830)
tin = PreciousMetal.create(:name => 'Tin', :symbol => 'Sn', :unit => '', :conversion_factor => 0.00, :price_per_unit => 0.00, :price_per_gram => 0.00)
platinum = PreciousMetal.create(:name => 'Platinum', :symbol => 'Pt', :unit => 'ounce', :conversion_factor => 0.0321510000, :price_per_unit => 1575.5000000000, :price_per_gram => 50.6535012683)

## Mints

philadelphia_mint = Mint.create(:name => "Philadelphia", :symbol => "P", :always_present => false, :comments => "")
new_orleans_mint = Mint.create(:name => "New Orleans", :symbol => "O", :always_present => true, :comments => "")
dahlonega_mint = Mint.create(:name => "Dahlonega", :symbol => "D", :always_present => true, :comments => "Gold coins only")
charlotte_mint = Mint.create(:name => "Charlotte", :symbol => "C", :always_present => true, :comments => "Gold coins only")
san_francisco_mint = Mint.create(:name => "San Francisco", :symbol => "S", :always_present => true, :comments => "")
carson_city_mint = Mint.create(:name => "Carson City", :symbol => "CC", :always_present => true, :comments => "")
denver_mint = Mint.create(:name => "Denver", :symbol => "D", :always_present => true, :comments => "")
west_point_mint = Mint.create(:name => "West Point", :symbol => "W", :always_present => true, :comments => "")

## Mint Date Ranges

MintDate.create(:mint_id => philadelphia_mint.id, :start_year => 1793, :end_year => 2013)
MintDate.create(:mint_id => new_orleans_mint.id, :start_year => 1838, :end_year => 1861)
MintDate.create(:mint_id => new_orleans_mint.id, :start_year => 1879, :end_year => 1909)
MintDate.create(:mint_id => dahlonega_mint.id, :start_year => 1838, :end_year => 1861)
MintDate.create(:mint_id => charlotte_mint.id, :start_year => 1838, :end_year => 1861)
MintDate.create(:mint_id => san_francisco_mint.id, :start_year => 1854, :end_year => 2013)
MintDate.create(:mint_id => carson_city_mint.id, :start_year => 1870, :end_year => 1893)
MintDate.create(:mint_id => denver_mint.id, :start_year => 1906, :end_year => 2013)
MintDate.create(:mint_id => west_point_mint.id, :start_year => 1984, :end_year => 2013)

## Coin Attribute Types

ebay_group_attrib_type = AttributeType.create(:value => 'Ebay Group')
weight_attrib_type = AttributeType.create(:value => 'Weight')

## Coin Denominations

### Double Eagles 

double_eagle = CoinValue.create(:name => 'Double Eagle', :value => 20.00, :description => "<p>This largest denomination of all regular United States issues was authorized to be coined by the Act of March 3, 1849. The coin's weight was set at 516 grains, and its fineness at .900. A single $20 gold pattern of 1849 resides in the Smithsonian.</p>")

### Eagles 

eagle = CoinValue.create(:name => "Eagle", :value => 10.00, :description => "<p>Coinage authorization, specified weights, and fineness of the eagle coins conform to those of the half eagle. The small eagle reverse was not used until 1797, when the large, heraldic eagle replaced it.</p>")

## Half Eagles

half_eagle = CoinValue.create(:name => "Half Eagle", :value => 5.00, :description => "<p>The half eagle ($5 gold coin) was the first gold coin struck for the United States. It was authorized to be coined by the Act of April 2, 1792. The first type weighed 135 grains, of .91667 fineness. The weight was changed by the Act of June 28, 1834, to 129 grains, of .899225 fineness. Fineness became .900 by the Act of January 18, 1837.</p>")

### Four-Dollar Gold Pieces

four_dollar_gold_piece = CoinValue.create(:name => "Four-Dollar Gold Piece", :value => 4.00, :description => "<p>The Four Dollar Gold Piece or Stella is a pattern coin, which is a coin made as an example of a proposed coin. There are two very different looking types made in both 1879 and 1880. Charles Barber designed one with a Liberty head with flowing hair and George Morgan designed one with a Liberty head with coiled hair. Both types have a common reverse, that is a star with the words \"One Stella-400 cents.\" The minting of both these \"patterns\" took on the air of a competition between the two designers as they solicited Members of Congress with examples of their designs.</p>

<p>Stellas are very rare today, with the highest mintage being 415 pieces for the 1879 Flowing Hair piece. They were all struck as proofs and none were placed in circulation so most pieces encountered today are usually in a high state of preservation. Stellas are worth more than $50,000.</p>")

### Three-Dollar Gold Piece

three_dollar_gold_piece = CoinValue.create(:name => "Three-Dollar Gold Piece", :value => 3.00, :description => "<p>The three-dollar gold piece was authorized by the Act of February 21, 1853. Coinage was struck beginning in 1854. It was never popular and saw very little circulation.</p>")

### Quarter Eagle

quarter_eagle = CoinValue.create(:name => "Quarter Eagle", :value => 2.50, :description => "<p>Although authorized by the Act of April 2, 1792, coinage of quarter eagles ($2.50 gold coins) was not begun until 1796.</p>")

### Gold Dollar

gold_dollar = CoinValue.create(:name => "Gold Dollar", :value => 1.00, :description => "<p>Coinage of the gold dollar was authorized by the Act of March 3, 1849. The weight was 25.8 grains, fineness .900. The first type, struck until 1854, is known as the Liberty Head type.</p>

<p>In 1854, the piece was made larger in diameter and thinner. The design was changed to a feather headdress on a female, generally referred to as the Indian Princess Head type. In 1856 the type was changed slightly by enlarging the size of the head.</p>")


### Silver and Related Dollar

silver_dollar = CoinValue.create(:name => "Silver and Related Dollar", :value => 1.00, :description => "<p>The silver dollar was authorized by Congress April 2, 1792. Its weight was specified at 416 grams and its fineness at .8924. The first issues appeared in 1794, and until 1804 all silver dollars had the value stamped on the edge: HUNDRED CENTS, ONE DOLLAR OR UNIT. After a lapse in coinage of the silver dollar during the period of 1804 to 1835, coins were made of either plain (1836 only) or reeded edges and the value was placed on the reverse side.</p>

<p>The weight was changed by the law of January 18, 1837, to 412-1/2 grains, fineness .900. The coinage was discontinued by the Act of February 12, 1873, and reauthorized by the Act of February 28, 1878. The silver dollar was again discontinued after 1935, and since then copper-nickel and other base-metal pieces have been coined for circulation.</p>")


### Half Dollar

half_dollar = CoinValue.create(:name => "Half Dollar", :value => 0.50, :description => "<p>The half dollar, authorized by the Act of April 2, 1792, was not minted until December, 1794. The weight of the half dollar was 208 grains and its fineness .8924 when first issued. This standard was not changed until 1837 when the Act of January 18, 1837, specified 206-1/4 gains, .900 fine. This fineness continued in use until 1965.</p>

<p>Arrows at the date in 1853 indicate the reduction of weight to 192 grains. During that year only, rays were added to the reverse. Arrows remained in 1854 and 1855. In 1873 the weight was raised by .9 grains and arrows were again placed at the date.</p>")


## Coin Value Attributes

CoinValueAttribute.create(:coin_value_id => double_eagle.id,   :attribute_type_id => ebay_group_attrib_type.id, :value => '39472')
CoinValueAttribute.create(:coin_value_id => eagle.id,   :attribute_type_id => ebay_group_attrib_type.id, :value => '39471')
CoinValueAttribute.create(:coin_value_id => half_eagle.id,   :attribute_type_id => ebay_group_attrib_type.id, :value => '39470')
CoinValueAttribute.create(:coin_value_id => four_dollar_gold_piece.id,   :attribute_type_id => ebay_group_attrib_type.id, :value => '39468')
CoinValueAttribute.create(:coin_value_id => three_dollar_gold_piece.id,   :attribute_type_id => ebay_group_attrib_type.id, :value => '39468')
CoinValueAttribute.create(:coin_value_id => quarter_eagle.id,   :attribute_type_id => ebay_group_attrib_type.id, :value => '39469')
CoinValueAttribute.create(:coin_value_id => gold_dollar.id,   :attribute_type_id => ebay_group_attrib_type.id, :value => '149937')
CoinValueAttribute.create(:coin_value_id => silver_dollar.id,   :attribute_type_id => ebay_group_attrib_type.id, :value => '11975')
CoinValueAttribute.create(:coin_value_id => half_dollar.id,   :attribute_type_id => ebay_group_attrib_type.id, :value => '11968')


## Coins


### Double Eagles

liberty_head_double_eagle = Coin.create(:name => "Liberty Head", :start_year => 1849, :end_year => 1907, :description => "<p>In the Old West (or anywhere else in the country for that matter), if you wanted to flaunt your wealth, you set down a stack of these on the counter or gaming table. In 19th century and early 20th century America, the Liberty Head double-eagle made people sit up and listen. This big gold coin had a long shelf life — 1849 through 1907. That covers the period from covered wagons and steamboats to the first automobiles and airplanes! True, the Liberty Head double-eagle doesn't have the staggering beauty of our nation's only other circulating $20 gold coin, the Saint-Gaudens double-eagle, but it has a classic eye-appeal all its own.</p>

<p>Like the $1 and $3 gold coin, the $20 gold piece was born out of the California Gold Rush of 1849. So much gold was coming out of the foothills of the Sierra Nevada, that the gold lobbyists gained tremendous power and influence – and they were able to push through legislation that allowed these new gold coin denominations. The new $20 gold coin was designed by James B. Longacre (who not only designed the Liberty Head $1 gold coin, $3 Indian Princess Head gold coin, but the the Indian Head one-cent coin as well). The obverse design mirrored that of the Liberty Head $1 gold coin: a right-facing Liberty bust, her head of thick, tight curls adorned with a \"Liberty\" head band. The bust is surrounded by stars, with the date below the bust. The reverse design, however, was unique to the Liberty Head double-eagle: a majestically-posed eagle with U.S. shield on its chest, and flanked by two ornate banners reading \"E Pluribus Unum.\" Above the eagle is an elipse of stars and rays emanating out from the eagle wings.</p>", :coin_value_id => double_eagle.id)


saint_gaudens_double_eagle = Coin.create(:name => "Saint-Gaudens", :start_year => 1907, :end_year => 1933, :description => "<p>The $20 gold piece designed by Augustus Saint-Gaudens is considered by many to be the most beautiful United States coin. The first coins issued were slightly more than 12,000 high-relief pieces struck for general circulation. The relief is much higher than that of later issues and the date 1907 is in Roman numerals. A few of the Proof coins were made using the lettered-edge collar from the Ultra High Relief version. These can be distinguished by a pronounced bottom left serif on the N in UNUM, and other minor differences. Flat-relief double eagles were issued later in 1907 with Arabic numerals, and continued through 1933.</p>

<p>The field of the rare, Ultra High Relief experimental pieces is extremely concave and connects directly with the edge without any border, giving it a sharp knifelike appearance. Liberty's skirt shows two folds on the side of her right leg; the Capitol building in the background at left is very small; the sun, on the reverse side, has 14 rays, as opposed to the regular high-relief coins, which have only 13 rays extending from the sun. High-relief Proofs are trial or experimental pieces.</p>", :coin_value_id => double_eagle.id)

### Eagles

capped_bust_to_right_eagle = Coin.create(:name => "Capped Bust To Right", :start_year => 1795, :end_year => 1804, :description => "<p>The Capped Bust Eagle was struck from 1795 until 1804, across two different subtypes and several varieties. At the time of issue, the eagle valued at $10, represented the the largest denomination within America's coinage system. High quality examples are elusive, particularly for the first subtype. Many surviving specimens will display mounting remnants, repairs, or cleaning, making original and unimpaired coins highly desirable. Completion of a complete date set is an obtainable goal given the proper budget, however, for most collectors the goal might be to acquire a single coin to represent the type.</p>

<p>The Mint Act of 1792 authorized the production of three different gold denominations. The half eagle with a value of five dollars was the first to be produced, followed by the eagle with a value of ten dollars. The quarter eagle, valued at $2.50, would not be produced until 1796. The largest ten dollar denomination was intended for use in international trade, although pieces from other countries generally served this purpose. Use within domestic commerce was limited due to the high value of the coin. The few people of the late 18th century who had the opportunity to obtain a gold piece of such a high value would generally save it instead of spending it. Accordingly, mintages for the Capped Bust Eagles were relatively small, especially compared to the gold half eagles, which would become the coin of choice for smaller international transactions.</p>

<p>The obverse of the Capped Bust Eagle features the bust of Liberty, facing right. The truncation is just below the upper part of the neck, which draped by a small part of clothing. Liberty wears a Phrygian cap with a lock of hair wrapping upwards, which gives the appearance of a turban. The word \"LIBERTY\" appears above, the date below, and stars to either side of the coin, coming in various counts and arrangements. The coins of 1795 and some of 1796 contain fifteen obverse stars. After Tennessee was admitted into the Union in mid-1796, a sixteenth star was added. In 1798 the number of stars was reduced to thirteen, which would remain the case until the end of the series. Some aspects of the obverse design lend to alternate names for the series, including Turban Head Eagle or Draped Bust Eagle.</p>

<p>The initial reverse design for the series features an eagle of rather slim appearance, perched on a palm branch with wings spread. The branch usually has thirteen leaves, although one reverse die is known with only nine leaves. The eagle holds an olive branch wreath in its beak. The branch on which it sits usually has thirteen leaves, although one reverse die is known with just nine leaves. The words \"UNITED STATES OF AMERICA\" surround the image with the bottom area left blank. No denomination is included on either side of the coin, as these pieces were valued at their weight. This reverse was known as the \"small eagle\" type and used from 1795 to 1797.</p>

<p>The second reverse, known as the \"heraldic eagle\" type, is based on the Great Seal of the United States. An eagle appears in a rather unnatural position with a shield against its breast. Thirteen small stars are between the eagle's head and a cluster of clouds above. In the eagles claws are an olive branch and a bundle of arrows. Once again, \"UNITED STATES OF AMERICA\" is around, and no denomination is mentioned. This reverse design was introduced during 1797 and used until the end of the series in 1804. The obverse and both reverse designs were by Robert Scot.</p>

<p>Production of the Capped Bust Eagle continued somewhat regularly until 1804 when Thomas Jefferson halted the production of gold eagles. At this time the Napoleonic Wars had driven the world price of gold higher and large quantities of U.S. gold coins were being melted. The denomination would not resume until 1838, after Congress adjusted the bimetallic ratio of gold and silver within U.S. coinage.</p>", :coin_value_id => eagle.id)


liberty_head_no_motto_above_eagle_eagle = Coin.create(:name => "Liberty Head, No Motto Above Eagle", :start_year => 1838, :end_year => 1866, :description => "<p>Following a 34 year hiatus in production for the largest gold denomination, the Liberty Head Gold Eagle was introduced in 1838. The new ten dollar coins would feature a new design by Christian Gobrecht and a reduced weight and diameter. During the next two years, the design would be slightly modified and introduced on the two smaller gold denominations. Besides the addition of the motto on the reverse of the coin, the overall appearance would remain the same until the end of the series in 1907. For a span of nearly 70 years, the Philadelphia Mint and its branch Mints produced the Liberty Gold Eagles, creating many scarce issues and a number of true rarities.</p>

<p>After the production of $10 gold pieces was suspended in 1804, the $5 half eagle served as the largest gold denomination and became the coin of choice for large, mostly overseas transactions. This would remain the case until the early 1830's when the price of gold had risen such that the melt value of the half eagles and quarter eagles exceeded their respective face values. Under the Coinage Act of 1834, the gold content for each denomination was reduced, which solved the issue for the half and quarter eagle, as well as cleared the way for the reintroduction of the $10 eagle denomination.</p>

<p>The design for the Liberty Gold Eagle was created by Christian Gobrecht, the son of a German born immigrant and a talented engraver. He is also credited with the Liberty Seated design introduced on the silver denominations during the same era. For the gold coins, the head of Liberty appears, facing left. She wears a coronet inscribed LIBERTY with her hair bound in a knot with a beaded ribbon. The date appears below and thirteen stars surround. The obverse for coins of 1838 and some of 1839 feature a design known as \"Type of 1838\" differentiated by the pointed truncation of the neck, a partially covered ear, and the location of the tip of the coronet close to a star. The modified form of the design, or \"Type of 1840\", would be used until the end of the series.</p>

<p>The reverse design depicts a bald eagle, grasping an olive branch in one talon and three arrows in the other. The eagle's wings are spread, and a large shield is placed at the chest. The inscription UNITED STATES OF AMERICA is around and the denomination expressed as TEN D. is near the bottom rim, representing the first time the face value was mentioned on the denomination. The reverse lettering was altered early in the series. For the earliest issues (1838 and 1839/8) the lettering was large, but it was reduced in size when the \"Type of 1840\" was introduced. In 1866, a scroll inscribed IN GOD WE TRUST was added above the head of the eagle. This motto had been added to the majority of denominations following the conclusion of the American Civil War. This second type for the Liberty Head Gold Eagle would be used until the conclusion of the series.</p>

<p>In 1838 the weight and diameter of the eagle were reduced and the obverse and reverse were redesigned. Liberty now faced left and the word LIBERTY was placed on the coronet.</p>", :coin_value_id => eagle.id)


liberty_head_motto_above_eagle_eagle = Coin.create(:name => "Liberty Head, Motto Above Eagle", :start_year => 1866, :end_year => 1907, :description => "<p>Following a 34 year hiatus in production for the largest gold denomination, the Liberty Head Gold Eagle was introduced in 1838. The new ten dollar coins would feature a new design by Christian Gobrecht and a reduced weight and diameter. During the next two years, the design would be slightly modified and introduced on the two smaller gold denominations. Besides the addition of the motto on the reverse of the coin, the overall appearance would remain the same until the end of the series in 1907. For a span of nearly 70 years, the Philadelphia Mint and its branch Mints produced the Liberty Gold Eagles, creating many scarce issues and a number of true rarities.</p>

<p>After the production of $10 gold pieces was suspended in 1804, the $5 half eagle served as the largest gold denomination and became the coin of choice for large, mostly overseas transactions. This would remain the case until the early 1830's when the price of gold had risen such that the melt value of the half eagles and quarter eagles exceeded their respective face values. Under the Coinage Act of 1834, the gold content for each denomination was reduced, which solved the issue for the half and quarter eagle, as well as cleared the way for the reintroduction of the $10 eagle denomination.</p>

<p>The design for the Liberty Gold Eagle was created by Christian Gobrecht, the son of a German born immigrant and a talented engraver. He is also credited with the Liberty Seated design introduced on the silver denominations during the same era. For the gold coins, the head of Liberty appears, facing left. She wears a coronet inscribed LIBERTY with her hair bound in a knot with a beaded ribbon. The date appears below and thirteen stars surround. The obverse for coins of 1838 and some of 1839 feature a design known as \"Type of 1838\" differentiated by the pointed truncation of the neck, a partially covered ear, and the location of the tip of the coronet close to a star. The modified form of the design, or \"Type of 1840\", would be used until the end of the series.</p>

<p>The reverse design depicts a bald eagle, grasping an olive branch in one talon and three arrows in the other. The eagle's wings are spread, and a large shield is placed at the chest. The inscription UNITED STATES OF AMERICA is around and the denomination expressed as TEN D. is near the bottom rim, representing the first time the face value was mentioned on the denomination. The reverse lettering was altered early in the series. For the earliest issues (1838 and 1839/8) the lettering was large, but it was reduced in size when the \"Type of 1840\" was introduced. In 1866, a scroll inscribed IN GOD WE TRUST was added above the head of the eagle. This motto had been added to the majority of denominations following the conclusion of the American Civil War. This second type for the Liberty Head Gold Eagle would be used until the conclusion of the series.</p>

<p>In 1838 the weight and diameter of the eagle were reduced and the obverse and reverse were redesigned. Liberty now faced left and the word LIBERTY was placed on the coronet.</p>", :coin_value_id => eagle.id)


indian_head_eagle = Coin.create(:name => "Indian Head", :start_year => 1907, :end_year => 1933, :description => "<p>The Indian Head eagle was a ten-dollar gold piece, or eagle struck by the United States Mint continuously from 1907 until 1916, and then irregularly until 1933. The obverse and the reverse, designed by the sculptor Augustus Saint-Gaudens, were originally commissioned for use on other denominations. Saint-Gaudens was suffering from cancer, and did not survive to see the coins released.</p>

<p>Beginning in 1904, President Theodore Roosevelt proposed the introduction of new, more artistic designs on US coins, prompting the Mint to hire Saint-Gaudens to create them. Roosevelt and Saint-Gaudens at first considered a uniform design for the four denominations of US coins, which were then struck in gold, but in 1907 Roosevelt decided to use a model for the obverse of the eagle that the sculptor had meant to use for the cent. For the reverse of the ten-dollar coin the President decided on a design featuring a standing bald eagle, which had been developed for the twenty-dollar piece designed by Saint-Gaudens.</p>

<p>The coin, as sculpted by Saint-Gaudens, was in too high relief for the Mint to strike readily; completion of the design modifications necessary to make the coin sufficiently flat to be struck by one blow of the Mint's presses took months. Following the sculptor's death on August 3, 1907, Roosevelt insisted that the new eagle be finished and struck that month. New pieces were given to the President on August 31, which differ from the coins struck later for circulation.</p>

<p>The omission of the motto \"In God We Trust\" on the new coins caused public outrage, and prompted Congress to pass a bill mandating its inclusion. Mint Chief Engraver Charles E. Barber added the words and made minor modifications to the design. The Indian Head eagle was struck regularly until 1916, and then intermittently until President Franklin Roosevelt directed the Mint to stop producing gold coins in 1933. Its termination ended the series of eagles struck for circulation begun in 1795. Many Indian Head eagles were melted by the government in the late 1930s; the 1933 issue is a particular rarity, as few were distributed.</p>", :coin_value_id => eagle.id)


### Half Eagles

capped_bust_to_right_half_eagle = Coin.create(:name => "Capped Bust To Right", :start_year => 1795, :end_year => 1807, :description => "<p>The largest denomination struck in coin until the mid 19th century was the gold eagle, or $10 gold coin. Established by the Mint act of 1792, it was also called the coinage act of April 2, 1792. In Section nine of the Mint act, the denomination of the largest gold coinage was specified:</p>

<p>This weight was specified at 16 grams of pure gold or 17.5 grams of standard gold, which added a small percentage of other metals (mostly silver with some copper) to make the metal more durable in circulation. While authorized in 1792, it would take until 1795 before the first eagles were struck, after several denominations of copper and silver coins, and the first gold coins valued at five dollars (half eagles).</p>

<p>The first eagles were designed by Chief Engraver Robert Scot. Personally appointed by President Thomas Jefferson, Scot had taken the position in November of 1793. Born in England, he appeared in the early 1780s in Philadelphia, where he apparently worked as a watchmaker. Within a few years, he was also engraving, as several Revolutionary notes are known from his hand. Although not dated, an engraving in the book \"Freemasonry in Pennsylvania 1727-1907\", published in 1908 showed an engraving of Mason's Arms by Robert Scot. The book notes that \"this appears to have been his earliest work in this country\".</p>

<p>The first eagles utilizing Robert Scots design were struck in September of 1795. The first of these, a total of 1,097 $10 gold pieces were delivered on the 22nd of that month, and it is believed that these were all of the BD (Bass-Dannreuther, Early U.S. gold coin varieties)-1 die pair. This variety appears to be the most common die pair of this type, although collecting and classifying these by variety is a study only undertaken by the most ambitious specialists. The estimated mintage of this variety is between 2,795 and 5,583 in that reference, as early mintages are vague and unreliable. The number of pieces known ranges between 250 and 350. Compared to the other varieties, this variety appears to be the most available, with the other three 1795, 13 leaves varieties ranging from R-4+ (90-110 known) to R-5 (35 to 60 known). The latter varieties are believed to have been struck until 1796 or even 1797, as the early dies were used until they were completely unusable, often after being severely lapped and put back into usage.</p>

<p>There are two distinctive varieties known for the 1795 eagles, which are also listed in the Red book. Besides the previously mentioned 13 leaves variety, with thirteen leaves under the eagle, each representing one of the states in 1776, there is also a 9 leaves variety. The reason for its existence is unknown, but it appears to be made intentional, with the 11 leaves varieties known for both 1796 and 1797 eagles. In any case, the 9 leaves 1795 eagles (BD-3) are very rare with approximately twenty pieces known in all grades, making it the rarest variety for the type. Most of the remaining pieces are in lower grades, but a number of uncirculated examples are known as well. These are mostly impounded in specialized collections, and every opportunity to obtain one should be considered with great care.</p>

<p>The 13 leaves variety is much more available, and in fact the most common coin for the type. This variety is occasionally available in high grades, exhibiting semi prooflike surfaces. The finest piece has been graded by NGC as MS-66, but has not been auctioned or appeared at the public market in that grade yet. A number of MS-63 and MS-64 pieces are included in private collections and auctions with irregularity, with the majority of uncirculated pieces in the MS-60 to 62 grades. Circulated coins are available on most auctions, often cleaned and damaged, offering great opportunities for collectors on a tight budget. With its popularity as type coins, however, one should not expect to find a bargain when buying a 1795 eagle in any grade. Conscious collectors should opt to include premium-quality pieces with high eye-appeal, showing the magnificent status this large, early United States gold coinage have held for the last two centuries.</p>", :coin_value_id => half_eagle.id)


capped_bust_to_left_half_eagle = Coin.create(:name => "Capped Bust To Left", :start_year => 1807, :end_year => 1812, :description => "<p>The early years of the United States Mint were fraught with problems: The equipment was crude, serviceable die steel was difficult to obtain, and until 1816, men and horses, not steam, supplied power to operate the machinery. But one of the most serious problems facing the new enterprise was a lack of experienced personnel, particularly in the area of design and engraving.</p>

<p>When the Mint began operations after the Coinage Act of 1792, employing suitable officers and workmen became one of the first priorities. As early as 1790, Secretary of State Thomas Jefferson (then the Cabinet officer in charge of the Mint) had been attempting to recruit qualified artisans from European cities where minting methods were state of the art. Jefferson had attended an exhibition at the Paris Mint in 1786, where he observed the operation of an improved coining press and was quite impressed with the machine and its inventor, French engraver Jean Pierre Droz. Droz's methods were at the cutting edge of late 18th-century technology, and Jefferson was determined to retain his services for the proposed United States Mint. After some initial correspondence in 1786-87, the matter was tabled, as Droz apparently needed immediate employment and the Mint's opening was still several years away. In 1790, negotiations with Droz were resumed and initially he accepted Jefferson's offer, but later he declined, citing personal reasons.</p>

<p>As the new Mint facility in Philadelphia began to take shape, a talented engraver was still to be found. Coiners Henry Voight and Adam Eckfeldt assisted in the preparation of the first dies, but it was not until August 1793 that the artist Joseph Wright was appointed as engraver. Unfortunately, Wright died a few weeks later from yellow fever, in the annual epidemic that struck Philadelphia in the summer months. He was succeeded by Robert Scot, an English watchmaker and banknote engraver of some repute. Scot's talents as a die engraver, however, were marginal at best. Many of his early coinage designs received widespread criticism, putting him on the defensive from the very beginning. Apparently fearing competition, he thwarted every effort by Mint Director Henry DeSaussere to engage an assistant engraver. When John Smith Gardner was finally appointed to that position at the end of 1794, he lasted only 16 months, probably due to Scot's jealousy and harassing tactics. For years, Scot's authority and position would go unchallenged, and his designs continued to reflect his limited skills. Probably his best work is his 1795 design for the first half eagle, with its Draped Bust portrait of Liberty and its small eagle on the reverse. The small eagle gave way to the heraldic eagle in 1798, but by the turn of the century, Scot's failing eyesight increasingly limited his usefulness as an engraver.</p>

<p>During this era, thousands of immigrants began to arrive on the shores of the United States, including many refugees of the Napoleonic Wars. One of these emigres was John Reich, a German engraver who sold himself into indentured servitude in return for passage to America. By 1801, his skills were renowned in Philadelphia, even to President Thomas Jefferson, who recommended to Mint Director Elias Boudinot that Reich be employed. Boudinot complied, but apparently in deference to the excessively territorial Scot, Reich was not allowed to design coins but was assigned other miscellaneous tasks.</p>

<p>Scot was 62 in 1807 when the new mint director, Robert Patterson, implored Jefferson for permission to formally hire Reich. By this time Reich was so disgusted with doing menial tasks at the Mint and enduring Scot's jealousy that he was ready to return to Europe. Patterson was not about to lose Reich's services, and offered him the permanent position of assistant engraver at a salary of only $600 per year—half of the $1200 Scot received. Patterson immediately assigned Reich to revamp all the coinage designs. He began with the half dollar and half eagle, the two \"workhorses\" of commerce in that era, preferred by banks for international payments and reserves.</p>

<p>The Capped Bust motif Reich created for the 1807 half eagle features a buxom Miss Liberty facing left, flanked by seven stars to the left and six to the right. She is wearing a cloth cap inscribed LIBERTY, with curly hair falling out from the edge of her cap down to her shoulder. Reich's Liberty has a distinctly European look, completely different from any previous depiction. When the coins entered circulation, newspapers of the day sardonically reported that Reich's rendition was actually modeled after \"the artist's fat mistress.\" Although the designer's initials were not on the coin, almost all of Reich's obverses have a characteristic notched point on the lowest star on the right—as his \"signature.\" On the half eagles, the notch faces the coin's border. His reverse design depicts an eagle with outstretched wings, perched on a palm branch and holding three arrows in its claws. The motto E PLURIBUS UNUM appears on a ribbon above the eagle, and the inscriptions UNITED STATES OF AMERICA and 5D. surround the central design. One of Reich's innovations was to place the denomination on gold and silver coins. Except for the copper coins and the 1796-97 half dollars, earlier designs had no indication of value, commonly passing by weight and fineness.</p>

<p>The Philadelphia Mint struck only 399,013 half eagles of this type between 1807 and 1812, and many were melted in later years, suffering the same fate as most U.S. gold minted before 1834. Possibly 1% of the mintage survived, mostly as curiosities, along with a few examples saved by early numismatic pioneers. Although there are some very scarce varieties such as 1808/7 and the 1810 small or large dates with small 5, these are usually only of interest to the dedicated specialist. Complete date sets are within the reach of many collectors, although the design is generally collected as a \"type.\"</p>

<p>No dates in the series are very rare, and most specimens are found in grades from Extremely Fine to About Uncirculated. Mint State pieces are regularly available, and some gems occasionally appear—usually the 1807, 1809/8, 1810 or 1812 issues, the latter two dates surfacing in old hoards. In the past, this series was a target of counterfeiters and many dangerous pieces still exist: Any questionable specimens should be authenticated. Wear first shows on Liberty's hair and cap, and on the eagle's wing tips, neck and claws.</p>

<p>In 1813, Reich eliminated the bosom and drapery of Liberty and rearranged the stars, creating the Capped Head design. He quit in disgust in 1817, never receiving a raise or promotion in ten years. His design, however, would last much longer than his tenure at the Mint, appearing on the half eagle until 1834. In 1818, Scot remodeled Reich's Capped Head half eagle, fashioning an almost identical, but cruder rendition of the original. Scot would remain in the position of Chief Engraver until his death in 1823.</p>", :coin_value_id => half_eagle.id)


capped_head_to_left_half_eagle = Coin.create(:name => "Capped Head To Left", :start_year => 1813, :end_year => 1834, :description => "<p>Ever since the 16th-century landings of Cortez in Mexico and the Pizarro Brothers in Peru, Central and South America have been continuously drained of precious metals. After the turn of the 19th-century, enormous new discoveries of silver on both continents fueled marked increases in mining and exportation and quickly lowered the worldwide price of silver in relation to gold. Unfortunately, the bi-metallic standard adopted in the United States under the Coinage Act of 1792 established a 15:1 ratio between the metals, and by 1813, the ratio in Europe was 16:1 or more. All circulating U.S. gold coins became worth more than their face value in silver, and speculators and bullion dealers quickly caught on. Fifteen ounces of silver would buy one ounce of gold in the U.S., but that ounce of gold would bring sixteen ounces of silver in Paris or London, and the cycle could be continued ad infinitum, or at least until U.S. gold coins were no longer available. And that is precisely what happened.</p>

<p>By 1813, the half eagle was the only U.S. gold coin being produced. Eagle coinage ceased in 1804 and quarter eagles hadn't been minted since 1808. What little gold found its way to the Mint usually came from banks, and bankers generally preferred their bullion coined into half eagles. Although the \"fives\" were primarily used as reserves and for international payments, eventually the vast majority found their way into the melting pot.</p>

<p>The Capped Head half eagle series, minted from 1813 to 1834, suffered the most destruction from these melts. Made during the period when widespread melting took place, much of the mintage never saw circulation and commonly went straight from the Mint into bullion dealers' hands. Some forty-thousand pieces of \"recent mintage\" were destroyed in a single Paris melt in 1831. The small quantities that survived the melts before 1834 were decimated by the Mint's later recoinage of the old-tenor pieces.</p>

<p>Making its debut in 1813, John Reich's Capped Head design for the half eagle was copied by Chief Engraver Robert Scot in 1818 and extensively reworked by William Kneass in 1829. Reich modified his earlier Capped Bust design by eliminating the bosom and drapery of Liberty, leaving a large head as the central device, surrounded by thirteen stars with the date below. The reverse, only slightly altered from his 1807 design, depicts an eagle with widespread wings, clutching an olive branch and arrows. Surrounding the eagle are the inscriptions UNITED STATES OF AMERICA and 5 D., with the motto E PLURIBUS UNUM above the eagle's head. While Scot's 1818 revision was a crude copy of Reich's engraving, Kneass' 1829 modification was a distinct change. Diameters were reduced from 25 to 22.5 millimeters, the portrait appeared in higher relief, and a beaded border replaced the denticles of the previous coin.</p>

<p>When discussing this series, the word \"rarity\" loses its meaning. Although the Philadelphia Mint produced 1,385,612 business strikes and approximately 150 proofs over a 22 year period, there are no common dates. The 1813 is most often encountered, with many of the several hundred survivors probably saved as first-year-of-issue souvenirs. Beginning a list of rarities unique in U.S. coinage is the 1814, with only a few dozen pieces known. The following year produced one of numismatics' most celebrated coins, the low-mintage 1815, until this century considered the rarest date in the series. Only 12 pieces survive.</p>

<p>The 1818 and 1820 issues are occasionally available, with the latter date appearing more frequently. Coins of 1819 and 1821 are much more elusive. The 5D/50 variety of 1819, with only seven examples known, is rarer than the 1815 issue but has never achieved equal fame. Next is the legendary 1822 half eagle, perhaps the greatest rarity of all U.S. coins and one of the most famous. Only three specimens exist today, with two permanently impounded in the Smithsonian Institution. When this coin appeared at public auction in 1982, it realized a then-astounding $687,500 in the famed \"Eliasberg Sale.\"</p>

<p>It's believed that 40-50 examples exist dated 1823, making it one of the more \"common\" dates of this type. For 1824, only 20 or so pieces are known. In 1825, there were two overdates struck: 1825/4 Uneven Date with perhaps 25-30 examples extant; and 1825/4 Even Date, another icon of rarity: only two pieces exist. Both 1825/4 Evev Date half eagles are in private collections, with the second example unknown until 1970, when it was found in a Michigan bank vault as part of the N.M. Kaufman collection. Following this legendary coin are a string of elusive to impossible issues including 1826, 1827, 1828 and 1828/7, with survivors ranging from fewer than six pieces (1828/7) to as many as two to three dozen (1826). The final year of the large diameter coins, 1829, is about equal to 1828/7 in rarity, trailing only the 1822 and 1825/4 pieces.</p>

<p>In 1829, the transition was made to striking half eagles with a close collar, essentially a steel ring with vertical grooves inside. This innovation imparted a reeded edge to the finished coin and allowed smaller, standardized diameters. The new reduced size coins debuted with another landmark rarity, the 1829, an issue with perhaps 10 survivors in existence today. Two varieties followed in 1830 and 1831, with either large or small 5D, and approximately 75 examples are known of each date. A few dozen pieces exist for each year from 1832 through 1834, but only six specimens can be traced of the 1832 variety with twelve stars, making it rarer than the more ballyhooed 1815 and 1819 coins. Seeing little circulation, the majority of surviving coins are in grades ranging from XF to mint-state. Wear on this design first begins to show on Liberty's cap and hair, and on the eagle's wings and claws. Counterfeits are occasionally seen, including some crude 19th-century replicas of key dates.</p>

<p>With so many great rarities in the series, Capped Head half eagles are generally regarded as a type coin and even then are usually pursued only by advanced collectors. With the exception of Louis Eliasberg's holdings, almost all the great collections formed of this series were completed or at least started in the 19th century, most notably those of Stickney, Jenks, Steigerwalt, Dunham and Garrett.</p>

<p>In the summer of 1834, Congress passed legislation lowering both the weight and fineness of U.S. gold coins. More than a generation had passed since half eagles were seen in commerce, and the new, lighter weight Classic Head coins were readily accepted and widely circulated. Continuing melts of the old tenor pieces made Capped Head half eagles the rarest series of Federal coinage, and today even a single example is often the highlight of many collections.</p>", :coin_value_id => half_eagle.id)


classic_head_half_eagle = Coin.create(:name => "Classic Head", :start_year => 1834, :end_year => 1838, :description => "<p>For the first three decades of the 19th-century, the gold half eagle and silver half dollar were the workhorses of national commerce. Ironically, few saw daylight, spending their lives nestled in darkened vaults as bank reserves or disappearing across the Atlantic as international payments. Foreign silver pieces, underweight foreign gold coins and fractional banknotes served as retail currency in daily life. U.S. gold coins, whose bullion value on worldwide markets exceeded their face value in silver, experienced continual melting throughout the era. Suffering the worst destruction was the one gold coin minted during the years of heaviest melting, the Capped Head half eagle of 1813-1834. Congress finally addressed this untenable situation with the Mint Act of 1834. Drastic and long-lasting changes were now in store for the nation's gold coinage. All gold coins were reduced in weight to a point where they would circulate—for the first time since 1795.</p>

<p>U.S. Mint Director Samuel Moore was eager to get the new gold coins into circulation while withdrawing the pieces of 1795-1834 remaining in public hands. Expecting huge demand for the new issue (the Mint received old-tenor fives at a value of $5.32), Moore ordered Engraver William Kneass to prepare an entirely new design. Kneass created a tousle-haired Liberty facing left, her thick and curly locks confined by a headband inscribed LIBERTY. The date was placed below and a circle of 13 stars surrounded the handsome, youthful head. The reverse continued the raised-wing eagle of the previous issue, surrounded by the inscriptions UNITED STATES OF AMERICA and 5 D. Congress recommended identifying the new coins by placing the date AUGUST 1, 1834 on each, but Moore preferred omitting the scroll with E PLURIBUS UNUM used since 1807.</p>

<p>This Classic Head design is distinctly boyish, but a more attractive concept than the similar head used on John Reich's large cents of 1808-1814 and half cents of 1809-1836. All actually resemble youthful male athletes of ancient Greece rather than a female goddess of Liberty. Kneass' concept never seemed to fully satisfy Mint officials, and some minor but continuous changes appeared throughout the series' run. As Kneass faded into ill health and reduced activity, Christian Gobrecht tinkered further with the design in 1836. Variety collectors will find the Classic Heads a less busy field than the first issues of United States gold. Within the series' five years there are more than a dozen distinct varieties, including changes to Liberty's hair, and such variations as plain or crosslet 4s on the 1834 coins.</p>

<p>Over 2.1 million Classic Head half eagles were struck between 1834 and 1838, nearly all at the Philadelphia Mint. In 1838, new branch mints began operations at Charlotte, North Carolina and Dahlonega, Georgia. These coins have their distinctive mint marks on the obverse over the date. Charlotte (C) placed its mint mark on 17,179 coins. The entire output of Dahlonega (D) comprised only 20,583 pieces.</p>

<p>The Mint's purpose was to return gold to daily circulation, and in this Director Moore enjoyed great success. The withdrawal of older coins was amazingly successful, with an estimated $8,000,000 in pre-1834 gold marching to the smelter for rebirth as Classic Head coinage. The new coins were of the same size and weight as the later Coronet Head coins designed by Christian Gobrecht, so they remained in circulation for many decades after their release.</p>

<p>The severely limited mintages of Charlotte and Dahlonega have always attracted collectors, especially after publication of Augustus C. Heaton's 1893 treatise on collecting by mintmarks. Although Philadelphia half eagles were struck and circulated in adequate numbers, mint state examples of any date are highly elusive to very rare. Well-worn examples in the Fine to Very Fine range are generally available, though these often bear severe contact marks in addition to wear from circulation. Wear first appears on Liberty's hair, particularly over her eye, and on her cheek. On the reverse, check the eagle's wings and head.</p>

<p>Few if any hoards of high grade have been found. Although the great Louis C. Eliasberg collection contained 11 Classic Heads, only 1834 and 1835 were Uncirculated, and one of his 1834 Plain 4 coins was cataloged Proof-60. The remaining examples went from Choice About Uncirculated down to XF-45. Gem examples of Philadelphia issues do exist, but only 1834 Plain 4, and to a lesser extent, 1836, are seen with any frequency. The \"key\" date of the series is 1838-C, difficult to find in any grade and equal in rarity to many pre-1834 issues. Even more elusive is the scarcest variety of the series, the 1834 Crosslet 4—trailed closely by the 1838 Dahlonega coin, another \"stopper\" in mint state. A minuscule number of proofs exist of the Philadelphia dates, perhaps as many as 12 examples for 1834, three of 1835, two of 1836, and one each of 1837 and 1838 (the 1837 specimen is in the Smithsonian). Such coins are extremely rare and have appeared only in one or two of the great \"name\" auctions in recent years.</p>

<p>The generally dismal grades so frequently encountered may prejudice collectors against this series, but all pre-Gold Rush coinage is usually found in similar condition. A collector taking the opportunity to view a high-grade example objectively, however, will discover that the Kneass design is really a bold example of America's primitive neoclassical art. By 1838 this vintage design would yield to the wave of highly stereotyped motifs, such as Gobrecht's Coronet, that improved the coins' mechanical qualities but eliminated much of the life and vibrancy found in the earlier issues.</p>

<p>The Classic Head coins circulated during times of significant economic disturbance. In the early 1830's the country enjoyed a wild ride, including intense speculation in western lands and a fungus-like growth of totally unregulated and frequently shaky private banks. More destructive to the economy was the vast expansion of often unsecured paper money issued by the same banks. The Federal government's major financial preoccupation was not a deficit but the huge surpluses piling up in each year of apparent prosperity. Trying to regulate runaway land speculation, President Andrew Jackson's Specie Circular of July 1837 decreed that only gold or silver coins would be accepted for purchases of public lands.</p>

<p>A business panic beginning in England in March of 1837 rapidly spread to the United States, and the last years of Classic Head coinage saw the disastrous depression known as the \"Hard Times.\" While hard money advocates such as Missouri Senator Thomas Hart Benton argued the pros and cons of Jacksonian monetary policies, hundreds of thousands of Americans starved in the winter of 1837-38. To them, a $5 gold piece would have represented breathtaking wealth in times that saw 90% of American factories idle. To these Americans, copper \"Hard Times\" tokens were far more familiar than gold coins of any denomination.</p>", :coin_value_id => half_eagle.id)


liberty_head_half_eagle = Coin.create(:name => "Liberty Head", :start_year => 1839, :end_year => 1908, :description => "<p>In 1839 the coin was redesigned again. The new obverse was designed by Christian Gobrecht and is known as the \"Libery Head or Coronet head\". The reverse design remained largely the same, although the value was changed from \"5 D.\" to \"Five D.\". For those struck at the Philidephia Mint, there was no longer any silver in the coin, its composition was now .900 gold and .100 copper. However, gold ore used at the southern branch mints of Charlotte and Dahlonega had a high natural silver content, and many of these coins contained up to five percent silver. Its weight was virtually the same, 8.359 grams, but the diameter was reduced one final time, to 21.6 mm, in 1840, for a gold content of 0.242 Troy Oz. This design was used for nearly 70 years, from 1839 to 1908, with a modest change in 1866, when \"In God We Trust\" was placed on the reverse above the eagle. It holds the distinction of being the only coin of a single design to be minted at seven U.S. Mints: Philadelphia, Dahlonega, Charlotte, New Orleans, San Francisco, Carson City, and Denver.</p>", :coin_value_id => half_eagle.id)


indian_head_half_eagle = Coin.create(:name => "Indian Head", :start_year => 1908, :end_year => 1929, :description => "<p>This type conforms in design to the quarter eagle of the same date. The sunken-relief designs and lettering make the Indian Head a unique series, along with the quarter eagle, in United States coinage.</p>", :coin_value_id => half_eagle.id)


### Four-Dollar Gold Pieces

stella_four_dollar_gold_piece = Coin.create(:name => "Stella", :start_year => 1879, :end_year => 1880, :description => "<p>These pattern coins were first suggested by the Hon. John A. Kasson, then U.S. envoy extraordinary and minister plenipotentiary to Austria-Hungary. It was through the efforts of Dr. W.W. Hubbell, who patented the alloy goloid (used in making another pattern piece, the goloid metric dollar) that we have these beautiful and interesting coins.</p>

<p>The $4 Stella--so called because of the five-pointed star on the reverse--was envisioned by Kasson as America's answer to various foreign gold coins popular in the international market. The British sovereign, Italy's 20 lire, and the 20 pesetas of Spain were three such coins: each smaller than a U.S. $5 gold piece, they were used widely in international trade.</p>

<p>The Stella was one of many proposals made to Congress for an international trade coin, and one of only several that made it to pattern coin form (others include the 1868 $5 and 1874 Bickford $10).</p>

<p>Odds were stacked against the Stella from the start. The denomination of four U.S. dollars didn't match any of the coin's European counterparts, and at any rate the U.S. double eagle ($20 coin)--already used in international commerce--was a more convenient medium of exchange. The Stella was never minted in quantities for circulation.</p>

<p>There are two distinct types in both years of issue. Charles E. Barber designed the Flowing Hair type, and George T. Morgan the Coiled Hair. They were struck as patterns in gold, aluminum, copper, and white metal. Only those struck in gold are listed.</p>", :coin_value_id => four_dollar_gold_piece.id)


### Three-Dollar Gold Pieces

three_dollar_gold_piece_coin = Coin.create(:name => "Three-Dollar Gold Piece", :start_year => 1854, :end_year => 1889, :description => "<p>The three-dollar gold piece was authorized by the Act of February 21, 1853. Coinage was struck beginning in 1854. It was never popular and saw very little circulation.</p>", :coin_value_id => three_dollar_gold_piece.id)


### Quarter Eagle

capped_bust_to_right_quarter_eagle = Coin.create(:name => "Capped Bust To Right", :start_year => 1796, :end_year => 1807, :description => "<p>Capped Bust Quarter Eagles with stars on the obverse were the second in a long line of Quarter Eagles produced by the U.S. Mint. They were made from 1796 to 1807 with the highest mintage being 6,812 pieces in 1807. These rare gold coins were also designed by Chief Engraver Robert Scot.</p>

<p>The obverse design is of Liberty facing right; she is wearing a soft cap with the inscription \"LIBERTY\" above, and the date below. The cap was long thought to be a Phrygian cap, taken from an ancient Roman model. However, even the Mint</p>

<p>Director at the time Samuel Moore identified this cap in 1825 as a fashionable headdress of the 1790s. This series has many die changes. These coins have from 13 to 16 stars on the obverse. They also range in the number of stars from left to right on the obverse.</p>

<p>The reverse of these gold coins shows a Heraldic Eagle with wings spread. A line of clouds stretch from wing to wing with 13 to 16 stars below. The designer Robert Scot superimposed a shield for the eagle's breast and sketched the eagle holding arrows in one of its talons and an olive branch in the other.</p>

<p>The inscription \"UNITED STATES OF AMERICA\" encircles the entire design.</p>

<p>Another interesting fact with regard to these Quarter Eagles is that the dies used to make the coins were also used to produce early dimes of this design as well.</p>", :coin_value_id => quarter_eagle.id)


capped_bust_to_left_large_size_quarter_eagle = Coin.create(:name => "Capped Bust To Left - Large Size", :start_year => 1808, :end_year => 1808, :description => "<p>In 1808 John Reich redesigned the quarter eagle. The diameter remained the same as earlier, but the obverse and reverse motifs were changed.</p>

<p>Miss Liberty now faces left, wearing a loose cloth cap secured by a band inscribed LIBERTY. Seven stars are to the left and six are to the right, and the date 1808 appears below. No stars appear above her head.</p>

<p>The reverse depicts an eagle perched on an olive branch and holding three arrows. The motto E PLURIBUS UNUM is on a band or ribbon above. The inscription UNITED STATES OF AMERICA and 21/2 D is around the border. The denomination is stated for the first time on a quarter eagle.</p>

<p>The mintage figure of 2,710 on its own would suggest a rarity, but the demand for the coin as the only year of its design type has projected it into the forefront of popular rarities among American gold coins. It is believed that perhaps three or four dozen exist, nearly all of which are in the grades of Very Fine or Extremely Fine, although at least two Uncirculated coins can be accounted for.</p>

<p>The 1808 quarter eagle is among classic rarities in American numismatics, and deservedly so.</p>", :coin_value_id => quarter_eagle.id)


capped_bust_to_left_quarter_eagle = Coin.create(:name => "Capped Bust To Left", :start_year => 1821, :end_year => 1834, :description => "<p>Those dated 1829 to 1834 are smaller in diameter than the 1821 to 1827 pieces.</p>", :coin_value_id => quarter_eagle.id)


classic_head_no_motto_on_reverse_quarter_eagle = Coin.create(:name => "Classic Head - No Motto On Reverse", :start_year => 1834, :end_year => 1839, :description => "<p>In 1834, the quarter eagle was redesigned. A ribbon binding the hair, bearing the word LIBERTY, replaced the Liberty cap. The motto was omitted from the reverse.</p>", :coin_value_id => quarter_eagle.id)


liberty_head_quarter_eagle = Coin.create(:name => "Liberty Head", :start_year => 1840, :end_year => 1907, :description => "<p>Beginning in 1834, the Mint began a search for a suitable design that could serve as an enduring symbol on American gold coins. In that year Engraver William Kneass executed a head of Liberty for quarter eagles and half eagles that became known as the Classic design. But this design, although modified several times, was not to last, as it was adapted from John Reich's old Classic Head motif first used on large cents in 1808 and officials continued to press for a symbol of Liberty more befitting the growing Republic. By 1838, Christian Gobrecht's Coronet design for the eagle took center stage, and a version of this—in keeping with the Mint's penchant for uniformity—was used on the quarter eagle starting in 1840.</p>

<p>The design as finally adopted featured a large head of Liberty facing left, wearing a wide coronet inscribed with the word LIBERTY. Her hair is pulled back in a bun and held in place by a string of pearls. Thirteen stars are placed around the periphery, representing the original colonies, with the date below. The eagle on the reverse was essentially the same one that had been on quarter eagles since 1808. Originally designed by John Reich, the 1840-1907 version was modified by Gobrecht. The heraldic eagle has its wings spread from rim to rim with the union shield covering its breast. An olive branch representing the country's peaceful intentions is in the eagle's right claw, with three arrows emphasizing military preparedness in the left. The legend UNITED STATES OF AMERICA surrounds the eagle, with the denomination 2 1/2 D. beneath the bird.</p>

<p>Between 1840 and 1907, a total of 11,921,171 Coronet quarter eagles were struck at five mints: Philadelphia (no mintmark), Charlotte (C), Dahlonega (D), New Orleans (O), and San Francisco (S). Mintmarks can be found on the lower reverse beneath the eagle. An estimated 4,232 proofs were also coined. The early (pre-1860) proofs are very rare, with only two or three pieces surviving from many years. Often, proofs have frosted white devices that contrast sharply against deeply mirrored fields. These \"cameo\" proofs are very popular as type pieces. Most of the proofs struck after 1901 have an all-brilliant finish with no field to device contrast. This brilliant finish continued until the end of the series in 1907, when Bela Pratt's sunken relief Indian Head design debuted, and the matte proofing process was adopted.</p>

<p>The series contains many individual rarities, some of legendary status, and a large number of scarce issues. Its exceptional length—remaining unchanged for 68 years, unlike the larger denominations that received the motto in 1866—makes it a very difficult series to complete. Although most collectors seek a single high grade example for type sets, others expand their horizons to include one coin from each mint, but even that is challenging. Charlotte and Dahlonega quarter eagles are particularly rare and expensive in mint condition, and these pieces are the keys to a collection from the five mints. San Francisco and New Orleans issues are also very scarce in AU and mint state, but generally undervalued compared to other mintmarked gold coins with similar mintages and survival rates. The most commonly found Coronet quarter eagles in mint state however, are the Philadelphia issues from 1851 through 1853, 1861, 1873, 1878 and after 1886. Philadelphia does have its rarities though: Civil War issues and the dates from 1874 through 1877, when specie payments were still suspended, are quite elusive. Some low mintage dates like the 1881 and 1885 exist today in larger numbers than their mintage would suggest: fortunately, many were recovered from European hoards.</p>

<p>The series is replete with important coins, but none more famous and historically significant than the 1848 CAL. quarter eagle. Made from some 230 ounces of native California ore shipped eastward in 1848, the resulting 1,389 quarter eagles are distinguished by the abbreviation CAL. stamped into the die above the eagle's head, and all authentic specimens have a square period after CAL. Many collectors consider these CAL. quarter eagles to be the first commemorative coins struck in the U.S., predating the Columbian half dollar by 44 years.</p>

<p>Also struck in the Philadelphia Mint are two other dates that have achieved fabled status, the 1841 and 1875. The 1841 has affectionately been labeled \"The Little Princess.\" Approximately fifteen examples are known and these extraordinarily rare coins have only been found in the finest and most comprehensive collections. The 1875 Philadelphia issue is another very rare date, with only 400 pieces struck and an estimated 23-25 examples surviving. Interestingly, one prominent gold collector in the Northeast has accumulated more than fifteen specimens of this key issue. Another famous rarity is the first year of issue from the San Francisco Mint, the 1854-S—one of the standout rarities in all of U.S. numismatics, with a scant 10 or so specimens believed to exist today in all grades. Only 246 quarter eagles were struck in that initial year, because the San Francisco Mint lacked parting acids (the same problem that plagued private minters at the time).</p>

<p>When grading Coronet quarter eagles, friction begins to first show on the tip of the coronet and above the eye on the obverse, and on the wing tips and claws of the eagle on the reverse. Striking quality is usually quite good and should not present difficulties for most post-1878 issues, but earlier branch mint coins are especially prone to weakness on the hair curls around Liberty's face and on the left leg of the eagle. Counterfeits are sometimes encountered, but the most frequently seen dates for bogus pieces are the common dates between 1900 and 1907. Altered mintmarks exist on certain key dates such as 1841 and 1875, but the diagnostics for the dies used to strike genuine coins are widely known: authentication is highly recommended.</p>

<p>The unchanging durability of the Coronet design on quarter eagles is unrivaled in the history of U.S. coinage. This exceptionally long span of time still stands as the longest uninterrupted use of a coin design without a major design alteration, though the Roosevelt Dime may soon take this prize. When the first coins were struck in 1840, much of the United States was still a rough and tumble frontier that valued hard cider and log cabins enough to elect as their leader the coarse old Indian fighter, William Henry Harrison. As the final Coronet quarter eagles were struck in 1907, America was in many ways a different country than it had been in 1840. It retained the rugged individualism that had characterized the national spirit throughout the 19th century, but it was a more mature America, heralded not only for its powerful economic and military presence throughout the world, but for its diplomatic achievements as well—illustrated by Theodore Roosevelt's winning of the 1906 Nobel Peace Prize for his role in negotiating an end to the Russo-Japanese War.</p>", :coin_value_id => quarter_eagle.id)


cal_gold_quarter_eagle = Coin.create(:name => "CAL. Gold Quarter Eagle", :start_year => 1848, :end_year => 1848, :description => "<p>In 1848, about 230 ounces of gold were sent to Secretary of War William L. Marcy by Colonel R.B. Mason, military governor of California. The gold was turned over to the Mint and made into quarter eagles. The distinguishing mark CAL. was punched above the eagle on the reverse side, while the coins were in the die.</p>", :coin_value_id => quarter_eagle.id)


indian_head_quarter_eagle = Coin.create(:name => "Indian Head", :start_year => 1908, :end_year => 1929, :description => "<p>The Indian Head Quarter Eagle is among the most affordable and collectible of all gold series. The series was introduced in 1908 and concluded in 1933. It is famous for having an incused design instead of raised as seen on the majority of coins. Although the series is now considered to be extremely artistic, there was some opposition when the coins first appeared in circulation, replacing the Liberty quarter eagles that were put into circulation in 1840, more then a generation earlier.</p>

<p>Early in the 20th century President Roosevelt grew increasingly tired with the current coinage in circulation, in particular the gold coinage. All gold coins in circulation, from the quarter eagle to the eagle bore the same basic design, which had been introduced in the 1830's. The larger denominations, the eagles and double eagles had new designs introduced in 1907. Most people were in agreement that the new designs for these denominations represented major artistic improvements. The next year, the smaller denominations were set to change with the same goal.</p>

<p>Dr. William Sturgis Bigelow, a close friend of President Roosevelt, had suggested using an incuse design for the minor gold coins. Up to that point, all United States coinage had a raised design and rim, although an intaglio design was opted back in 1792. After apparently receiving a positive response from Roosevelt, Bigelow contacted Boston sculptor Bela Lyon Pratt to design the new coins. Born in 1867, Pratt attended Yale University, and after graduation, traveled to France, in particular Paris, to study under well-known French sculptors. After his return in the early 1890s his future work would be widely influenced by this period.</p>

<p>The designs for the Indian Quarter Eagle were finalized in late June of 1908, and production started during the last few months of the year at the Philadelphia Mint. The final design was similar to the newly introduced ten dollar design, but the incuse devices made it look much different. The obverse featured an Indian male chief with a large ceremonial headdress. The word LIBERTY is above, with thirteen stars surrounding and the date below. The reverse features an eagle, perched on a bundle of arrows with an olive branch in its claws. E PLURIBUS UNUM is in the left field, and IN GOD WE TRUST is in the right field. UNITED STATES OF AMERICA is on above, and the denomination, spelled as 2 1/2 DOLLARS is below.</p>

<p>Indian Quarter Eagles circulated extensively, making most pieces available in the Extremely Fine to About Uncirculated grades. Mint State pieces are more difficult to locate, however can be found with some searching. The series contains a single key date makes completion of the set in any condition a challenging endeavor.</p>

<p>Grading these pieces is considered to be the most difficult of all United States coinage, due to the incuse design which do not show much wear. Key features include the eyebrow and feathers on the obverse, and the eagles shoulder on the reverse. Even most Mint State coins will feature some friction on the cheek of the Indian, which is commonly accepted by the grading companies.</p>", :coin_value_id => quarter_eagle.id)


### Gold Dollar

liberty_head_gold_dollar = Coin.create(:name => "Liberty Head", :start_year => 1849, :end_year => 1854, :description => "<p>Coinage of the gold dollar was authorized by the Act of March 3, 1849. The weight was 25.8 grains, fineness .900. The first type, struck until 1854, is known as the Liberty Head type.

In 1854, the piece was made larger in diameter and thinner. The design was changed to a feather headdress on a female, generally referred to as the Indian Princess Head type. In 1856, the type was changed slightly by enlarging the size of the head.</p>", :coin_value_id => gold_dollar.id)


indian_princess_head_small_head_gold_dollar = Coin.create(:name => "Indian Princess Head, Small Head", :start_year => 1854, :end_year => 1856, :description => "<p>Coinage of the gold dollar was authorized by the Act of March 3, 1849. The weight was 25.8 grains, fineness .900. The first type, struck until 1854, is known as the Liberty Head type.</p>

<p>In 1854, the piece was made larger in diameter and thinner. The design was changed to a feather headdress on a female, generally referred to as the Indian Princess Head type. In 1856, the type was changed slightly by enlarging the size of the head.</p>", :coin_value_id => gold_dollar.id)


indian_princess_head_large_head_gold_dollar = Coin.create(:name => "Indian Princess Head, Large Head", :start_year => 1856, :end_year => 1889, :description => "<p>Coinage of the gold dollar was authorized by the Act of March 3, 1849. The weight was 25.8 grains, fineness .900. The first type, struck until 1854, is known as the Liberty Head type.</p>

<p>In 1854, the piece was made larger in diameter and thinner. The design was changed to a feather headdress on a female, generally referred to as the Indian Princess Head type. In 1856, the type was changed slightly by enlarging the size of the head.</p>", :coin_value_id => gold_dollar.id)


### Silver and Related Dollar

flowing_hair_silver_dollar = Coin.create(:name => "Flowing Hair", :start_year => 1794, :end_year => 1795, :description => "<p>The Flowing Hair dollar was the first dollar coin issued by the United States federal government. The coin was minted in 1794 and 1795; its size and weight were based on the Spanish dollar, which was popular in trade throughout the Americas.</p>

<p>In 1791, following a study by Alexander Hamilton, Congress passed a joint resolution calling for the establishment of a national mint. Later that year, in his third State of the Union address, President George Washington urged Congress to provide for a mint, which was officially authorized by the Coinage Act of 1792. Despite the authorization, silver and gold coins were not struck until 1794. The Flowing Hair dollar, designed by Robert Scot, was initially produced in 1794, and again in 1795. In October 1795 the design was replaced by the Draped Bust dollar.</p>

<p>In May 2005, a specimen striking from the 1794 production was sold in a private sale for $7.85 million, more than any other coin in history.</p>", :coin_value_id => silver_dollar.id)


draped_bust_silver_dollar = Coin.create(:name => "Draped Bust", :start_year => 1795, :end_year => 1804, :description => "<p>The Draped Bust dollar is a United States dollar coin minted from 1795 to 1803, and again into the 1850s. The design succeeded the Flowing Hair dollar, which began mintage in 1794 and was the first silver dollar struck by the United States Mint. The designer is unknown, though the distinction is usually credited to artist Gilbert Stuart. The model is also unknown, though Ann Willing Bingham has been suggested.</p>

<p>In October 1795, newly appointed Mint Director Elias Boudinot ordered that the legal fineness of .892 (89.2%) silver be used for the dollar rather than the unauthorized fineness of .900 (90%) silver that had been used since the denomination was first minted in 1794. Due largely to a decrease in the amount of silver deposited at the Philadelphia Mint, coinage of silver dollars declined throughout the latter years of the 18th century. In 1804, coinage of silver dollars was halted; the last date used during regular mint production was 1803.</p>

<p>In 1834, silver dollar production was temporarily restarted to supply a diplomatic mission to Asia with a special set of proof coins. Officials mistakenly believed that dollars had last been minted with the date 1804, prompting them to use that date rather than the date in which the coins were actually struck. A limited number of 1804 dollars were struck by the Mint in later years, and they remain rare and valuable.</p>", :coin_value_id => silver_dollar.id)


gobrecht_silver_dollar = Coin.create(:name => "Gobrecht", :start_year => 1836, :end_year => 1839, :description => "<p>The Gobrecht dollar, minted from 1836 to 1839, was the first silver dollar struck for circulation by the United States Mint since production of that denomination was officially halted in 1806. The coin was struck in small numbers to determine whether the reintroduced silver dollar would be well received by the public.</p>

<p>In 1835, Director of the United States Mint Samuel Moore resigned his post, and Robert M. Patterson assumed the position. Shortly after, Patterson began an attempt to redesign the nation's coinage. After Mint Chief Engraver William Kneass suffered a stroke later that year, Christian Gobrecht was hired as an engraver. On August 1, Patterson wrote a letter to Philadelphia artist Thomas Sully laying out his plans for the dollar coin. He also asked Titian Peale to create a design for the coin. Sully created an obverse design depicting a seated representation of Liberty and Peale a reverse depicting a soaring bald eagle, which were converted into coin designs by Gobrecht. After the designs were created and trials struck, production of the working dies began in September 1836.</p>

<p>After a small quantity was struck for circulation, the Mint received complaints regarding the prominent placement of Gobrecht's name on the dollar, and the design was modified to incorporate his name in a less conspicuous position. In January 1837, the legal standard for the percentage of precious metal in silver coins was changed from 89.2% to 90%, and the Gobrecht dollars struck after that point reflect this change. In total, 1,900 Gobrecht dollars were struck during the official production run. Production of the Seated Liberty dollar, which utilized the same obverse design as the Gobrecht dollar, began mintage in 1840. In the 1850s, Mint officials controversially re-struck the coins without authorization.</p>", :coin_value_id => silver_dollar.id)


liberty_seated_silver_dollar = Coin.create(:name => "Liberty Seated", :start_year => 1840, :end_year => 1873, :description => "<p>The Seated Liberty dollar was a one-dollar coin struck by the United States Mint from 1840 to 1873 and designed by its chief engraver, Christian Gobrecht. It was the last silver coin of that denomination to be struck before passage of the Coinage Act of 1873, which temporarily ended production of the silver dollar for American commerce. The coin's obverse is based on that of the Gobrecht dollar, which had been minted experimentally from 1836 to 1839. However, the soaring eagle used on the reverse of the Gobrecht dollar was not used; instead, the United States Mint (Mint) placed a heraldic eagle, based on a design by late Mint Chief Engraver John Reich first used on coins in 1807.</p>

<p>Seated Liberty dollars were initially struck only at the Philadelphia Mint; in 1846, production began at the New Orleans facility. In the late 1840s, the price of silver increased relative to gold because of an increase in supply of the latter caused by the California gold rush; this led to the hoarding, export, and melting of American silver coins. The Coinage Act of 1853 decreased the weight of all silver coins of five cents or higher, except for the dollar, but also required a supplemental payment from those wishing their bullion struck into dollar coins. As little silver was being presented to the Mint at the time, production remained low. In the final years of the series, there was more silver produced in the US, and mintages increased.</p>

<p>In 1866, \"In God We Trust\" was added to the dollar following its introduction to United States coinage earlier in the decade. Seated Liberty dollar production was halted by the Coinage Act of 1873, which authorized the Trade dollar for use in foreign commerce. Representatives of silver interests were unhappy when the metal's price dropped again in the mid-1870s; they advocated the resumption of the free coinage of silver into legal tender, and after the passage of the Bland-Allison Act in 1878, production resumed with the Morgan dollar.</p>", :coin_value_id => silver_dollar.id)


trade_dollar_silver_dollar = Coin.create(:name => "Trade Dollars", :start_year => 1873, :end_year => 1885, :description => "<p>The United States trade dollar is a silver (fineness of .900 or 90%) dollar coin that was issued by the United States Mint and minted in Philadelphia, Pennsylvania, Carson City, and San Francisco from 1873 to 1885. Trade dollars intended for circulation were last produced in 1878 and proof coin production continued until 1885. The coin weighs 420 grains (2.2 g), about 8 grains (520 mg) more than the domestic silver dollar (Seated Liberty Dollars and Morgan Dollars) of the time. It is 4 grains heavier than the Mexican peso; however, the peso is .903 silver.</p>

<p>The coin was designed by William Barber, the mint's chief engraver. More trade dollars were minted in San Francisco than Carson City and Philadelphia combined. San Francisco was closest both to the source of the silver as well as the ultimate destination of the coins, China. Many Trade dollars have what are called \"chop marks\" on them. Chinese merchants would stamp the coins, thus guaranteeing weight and fineness and, also, advertising their businesses.</p>

<p>The United States Congress authorized the U.S. Mint to create a trade dollar to improve trade with the Orient, China in particular. Prior to that, the Mexican peso had been the primary silver coin used in trading with China. In fact, the eagle on the trade dollar's reverse looks quite similar to the peso's.</p>

<p>Collectors are warned that recently a large number of U.S. Trade dollars have been forged in China made with base metal. Careful testing or purchasing from known dealers or buying sealed and certified coins may be necessary to avoid these fakes.</p>", :coin_value_id => silver_dollar.id)


morgan_silver_dollar = Coin.create(:name => "Morgan", :start_year => 1878, :end_year => 1921, :description => "<p>The Morgan dollar was a United States dollar coin minted from 1878 to 1904, and then again in 1921. It was the first standard silver dollar minted since production of the previous design, the Seated Liberty dollar, ceased due to the passage of the Coinage Act of 1873, which also ended the free coining of silver. The coin is named for its designer, United States Mint Assistant Engraver George T. Morgan. Morgan's initial M is found at the truncation of the neck, at the last tress. It also appears on the reverse on the left-hand loop of the ribbon. The obverse depicts a profile portrait representing Liberty, while the reverse depicts an eagle with wings outstretched.</p>

<p>The dollar was authorized by the Bland–Allison Act. Following the passage of the 1873 act, mining interests lobbied to restore free silver, which would require the Mint to accept all silver presented to it and return it, struck into coin. Instead, the Bland–Allison Act was passed, which required the Treasury to purchase between two and four million dollars worth of silver at market value to be coined into dollars each month. In 1890, the Bland–Allison Act was repealed by the Sherman Silver Purchase Act, which required the Treasury to purchase 4,500,000 troy ounces (140,000 kg) of silver each month, but only required further silver dollar production for one year. This act, in turn, was repealed in 1893.</p>

<p>In 1898, Congress approved a bill that required all remaining bullion purchased under the Sherman Silver Purchase Act to be coined into silver dollars. When in 1904, those silver reserves were depleted, the Mint ceased to strike the Morgan dollar. The Pittman Act, passed in 1918, authorized the melting and recoining of millions of silver dollars. Pursuant to the act, Morgan dollars resumed mintage for one year in 1921. The design was replaced by the Peace dollar later the same year.</p>

<p>In the early 1960s, a large quantity of uncirculated Morgan dollars was found to be available from Treasury vaults, including issues once thought rare. Individuals began purchasing large quantities of the pieces at face value, and eventually the Treasury ceased to exchange silver certificates for silver coin. Beginning in the 1970s, the Treasury conducted a sale of silver dollars minted at the Carson City Mint through the General Services Administration. In 2006, Morgan's reverse design was used on a silver dollar issued to commemorate the old San Francisco Mint building.</p>", :coin_value_id => silver_dollar.id)


peace_silver_dollar = Coin.create(:name => "Peace", :start_year => 1921, :end_year => 1935, :description => "<p>The Peace dollar is a United States dollar coin minted from 1921 to 1928, and again in 1934 and 1935. Designed by Anthony de Francisci, the coin was the result of a competition to find designs emblematic of peace. Its reverse depicts a Bald Eagle at rest clutching an olive branch, with the legend \"Peace\". Anthony de Francisci's monogram is located in the field of the coin under the neck of Liberty. It was the last United States dollar coin to be struck for circulation in silver.</p>

<p>With the passage of the Pittman Act in 1918, the United States Mint was required to strike millions of silver dollars, and began to do so in 1921, using the Morgan dollar design. Numismatists began to lobby the Mint to issue a coin that memorialized the peace following World War I; although they failed to get Congress to pass a bill requiring the redesign, they were able to persuade government officials to take action. The Peace dollar was approved by Treasury Secretary Andrew Mellon in December 1921, completing the redesign of United States coinage that had begun in 1907.</p>

<p>The public believed the announced design, which included a broken sword, was illustrative of defeat, and the Mint hastily acted to remove the sword. The Peace dollar was first struck on December 28, 1921; just over a million were coined bearing a 1921 date. When the Pittman Act requirements were met in 1928, the mint ceased to strike the coins, but more were struck in 1934 and 1935 as a result of other legislation. In 1965, the mint struck over 300,000 Peace dollars bearing a 1964 date, but these were never issued, and all are believed to have been melted.</p>", :coin_value_id => silver_dollar.id)


eisenhower_silver_dollar = Coin.create(:name => "Eisenhower", :start_year => 1971, :end_year => 1978, :description => "<p>Honoring both President Dwight D. Eisenhower and the first landing of man on the moon, this design is the work of Chief Engraver Frank Gasparro, whose initials are on the truncation and below the eagle. The reverse is an adaptation of the official Apollo 11 insignia.</p>", :coin_value_id => silver_dollar.id)


susan_b_anthony_dollar = Coin.create(:name => "Susan B. Anthony", :start_year => 1979, :end_year => 1999, :description => "<p>The Susan B. Anthony dollar is a United States coin minted from 1979 to 1981, and again in 1999. It depicts women's suffrage campaigner Susan B. Anthony on a dollar coin. It was the first circulating U.S. coin with the portrait of an actual woman rather than an allegorical female figure such as 'Liberty'. The reverse depicts an eagle flying above the moon (with the Earth in the background), a design adapted from the Apollo 11 mission insignia that was also present on the previously issued Eisenhower Dollar. It was one of the most unpopular coins in American history.</p>", :coin_value_id => silver_dollar.id)


sacagawea_dollar = Coin.create(:name => "Sacagawea", :start_year => 2000, :end_year => 2008, :description => "<p>The design of the coin was selected in a national competition from among 120 submissions that were considered by a panel appointed by Treasury Secretary Robert Rubin. The adopted motif depicts Sacagawea, a young Native American Shoshone, as rendered by artist Glenna Goodacre. On her back she carries Jean Baptiste, her infant son. The reverse shows an eagle in flight, designed by Mint engraver Thomas D. Rogers Sr.</p>

<p>The composition exemplifies the spirit of Liberty, Peace, and Freedom shown by Sacagawea in her conduct as interpreter and guide to explorers Meriwether Lewis and William Clark during their famed journey westward from the great northern plains to the Pacific.</p>

<p>These coins have a distinctive golden color and a plain edge to distinguish them from other denominations or coins of a similar size. The change in composition and appearance was mandated under the United States Dollar Coin Act of 1997.</p>

<p>Several distinctive finishes can be identified on the Sacagawea dollars as a result of the Mint attempting to adjust the dies, blanks, strikes, or finishing to produce coins with minimal spotting and a better surface color. One group of 5,000 pieces dated 2000 with a special finish were presented to sculptor Glenna Goodacre in payment for the obverse design. Unexplained error coins made from mismatched dies (a state quarter obverse combined with a Sacagawea dollar reverse) are extremely rare.</p>", :coin_value_id => silver_dollar.id)


presidential_dollar = Coin.create(:name => "Presidential", :start_year => 2007, :end_year => 2016, :description => "<p>Four different coins, each bearing the image of a former U.S. President, are issued each year in order that the presidents served. The size and composition of these coins is the same as that of the Sacagawea dollars that are also made each year. A companion series of $10 gold bullion coins honors the spouse of each president.</p>", :coin_value_id => silver_dollar.id)


### Half Dollar

flowing_hair_half_dollar = Coin.create(:name => "Flowing Hair", :start_year => 1794, :end_year => 1795, :description => "<p>The Flowing Hair Half Dollar was among the first of all silver coins to be struck at the Philadelphia Mint. The series was issued for only two years from 1794 to 1795 and survivors are scarce, particularly for the lower mintage first year of issue. The Flowing Hair design of the coin is shared by the contemporary silver dollars and half dimes, but the half dollar is considered by many to be the most affordable option to acquire an example of this historic design, which circulated in the young nation.</p>

<p>The coins were designed by Robert Scot. The obverse of the Flowing Hair Half Dollar features the head of Liberty, facing right. Her hair is flowing back, as if in a gentle breeze, with no ornamentation or decoration. The truncation of the neck is relatively high compared to later designs. Fifteen stars, representing the number of states in the Union at the time, appear are positioned with eight to the left and seven to the right. The word \"Liberty\" appears above and the date below.</p>

<p>The reverse of the coins carried a design that would be used on all of the silver coinage of the United States for a number of years. An American Bald Eagle is seen, perched on a cloud, with wings spread. The eagle is enclosed by a wreath, slightly open at the top and having two ribbons near the bottom. The words \"United States of America\" appear surrounding, starting to the left of the wreath near the bottom and ending on the opposite side.</p>

<p>As every die for the Flowing Hair Half Dollar was handmade, many different varieties exist. The placement of the obverse stars, date, eagle, and lettering are all taken for the purposes of identification. Alongside later half dollar designs, this type is often collected by die variety, with large premiums paid for the scarcest varieties.</p>", :coin_value_id => half_dollar.id)


draped_bust_half_dollar = Coin.create(:name => "Draped Bust", :start_year => 1796, :end_year => 1807, :description => "<p>The Draped Bust Half Dollar was struck between the years 1796 and 1807 with two different reverses. When considered separately, the first reverse issued from 1796 to 1797 featuring a small eagle is considered one of the most famous types in all of American numismatics due to its rarity. The second reverse issued from 1801 to 1807 featuring the heraldic eagle is more available due to higher mintages. Virtually all dates for the series are scarce to very rare in uncirculated condition.</p>

<p>The main objective of the early United States Mint in Philadelphia was not only to turn out an adequate supply of copper, silver, and gold coinage, but also to make them more or less similar in appearance. The design that was introduced on the various denominations in 1796 was created by Robert Scot, first Chief Engraver of the United States Mint, based on work by Gilbert Stuart. It is believed, although not proven, that the image used to design Liberty was based on a portrait of the Philadelphia woman Ann Willing Bingham. A Gilbert Stuart sketch of Bingham at age 21 is pictured below.</p>

<p>The obverse of the Draped Bust Half Dollar features the head of Liberty, facing right. The partially visible bust is draped, hence the name given to this design in the 19th century, which continues to be used today. The word LIBERTY appears above, and the date appears below. An arrangement of stars appear behind and in front of Liberty.</p>

<p>The half dollars issued in 1796 had either fifteen or sixteen stars. The additional star was added after Tennessee became the sixteenth state of the Union in June 1796. Interestingly, the 1797 half dollars once again featured only fifteen stars, followed by a gap in production. When the denomination resumed in 1801 only thirteen stars were used to represent the original thirteen states in the Union.</p>

<p>The initial reverse design for Draped Bust Half Dollars features a modified reverse based on earlier work by Scot, which had previously been used for half dimes, half dollars, and silver dollars from 1794 and 1795. An American Bald Eagle is pictured at center, encircled by a wreath with the top slightly open. The eagle is seen standing on clouds, just above a ribbon which holds together both sides of the wreath. Beneath the ribbon is the fraction \"1/2\" to indicate the value of the coin. The words UNITED STATES OF AMERICA surround at the rim. This is the so-called \"small eagle\" reverse used for coins dated 1796 and 1797.</p>

<p>The denomination was not produced again until 1801. During the hiatus, a new reverse design had been introduced the other silver denominations, which would be adopted for the half dollar as well. The reverse used from 1801 to 1807 is known as the \"heraldic eagle\" reverse. The eagle is viewed from the front with wings and claws spread. One of the eagle's talons grasp a bundle of arrows and an olive branch, while its beak hold a ribbon with the inscription E PLURIBUS UNUM. Thirteen stars and an arch of clouds appears above the eagle. The words UNITED STATES OF AMERICA encircle the image, with the denomination indicated on the edge of the coin.</p>", :coin_value_id => half_dollar.id)


capped_bust_lettered_edge_half_dollar = Coin.create(:name => "Capped Bust, Lettered Edge", :start_year => 1807, :end_year => 1836, :description => "<p>John Reich designed this capped-head concept of Liberty. Reich's design of Liberty facing left was used on all U.S. silver denominations for the next 30 years.</p>", :coin_value_id => half_dollar.id)

## Coin Thumbnails

### Double Eagle

Thumbnail.create(:coin_id => liberty_head_double_eagle.id, :file_name => 'UsCoin/Double Eagle/Liberty Head/1-obverse.jpeg', :caption => 'Obverse')
Thumbnail.create(:coin_id => liberty_head_double_eagle.id, :file_name => 'UsCoin/Double Eagle/Liberty Head/2-reverse.jpeg', :caption => 'Reverse')
Thumbnail.create(:coin_id => saint_gaudens_double_eagle.id, :file_name => 'UsCoin/Double Eagle/Saint-Gaudens/1-obverse.jpeg', :caption => 'Obverse')
Thumbnail.create(:coin_id => saint_gaudens_double_eagle.id, :file_name => 'UsCoin/Double Eagle/Saint-Gaudens/2-reverse.jpeg', :caption => 'Reverse')

### Eagle

Thumbnail.create(:coin_id => capped_bust_to_right_eagle.id, :file_name => 'UsCoin/Eagle/Capped Bust To Right/1-obverse.jpeg', :caption => 'Obverse')
Thumbnail.create(:coin_id => capped_bust_to_right_eagle.id, :file_name => 'UsCoin/Eagle/Capped Bust To Right/2-reverse.jpeg', :caption => 'Reverse')
Thumbnail.create(:coin_id => liberty_head_no_motto_above_eagle_eagle.id, :file_name => 'UsCoin/Eagle/Liberty Head, No Motto Above Eagle/1-obverse.jpeg', :caption => 'Obverse')
Thumbnail.create(:coin_id => liberty_head_no_motto_above_eagle_eagle.id, :file_name => 'UsCoin/Eagle/Liberty Head, No Motto Above Eagle/2-reverse.jpeg', :caption => 'Reverse')
Thumbnail.create(:coin_id => liberty_head_motto_above_eagle_eagle.id, :file_name => 'UsCoin/Eagle/Liberty Head, Motto Above Eagle/1-obverse.png', :caption => 'Obverse')
Thumbnail.create(:coin_id => liberty_head_motto_above_eagle_eagle.id, :file_name => 'UsCoin/Eagle/Liberty Head, Motto Above Eagle/2-reverse.png', :caption => 'Reverse')
Thumbnail.create(:coin_id => indian_head_eagle.id, :file_name => 'UsCoin/Eagle/Indian Head/1-obverse.jpeg', :caption => 'Obverse')
Thumbnail.create(:coin_id => indian_head_eagle.id, :file_name => 'UsCoin/Eagle/Indian Head/2-reverse.jpeg', :caption => 'Reverse')

### Half Eagle

Thumbnail.create(:coin_id => capped_bust_to_right_half_eagle.id, :file_name => 'UsCoin/Half Eagle/Capped Bust To Right/1-obverse.jpeg', :caption => 'Obverse')
Thumbnail.create(:coin_id => capped_bust_to_right_half_eagle.id, :file_name => 'UsCoin/Half Eagle/Capped Bust To Right/2-reverse.jpeg', :caption => 'Reverse')
Thumbnail.create(:coin_id => capped_bust_to_left_half_eagle.id, :file_name => 'UsCoin/Half Eagle/Capped Bust To Left/1-obverse.jpeg', :caption => 'Obverse')
Thumbnail.create(:coin_id => capped_bust_to_left_half_eagle.id, :file_name => 'UsCoin/Half Eagle/Capped Bust To Left/2-reverse.jpeg', :caption => 'Reverse')
Thumbnail.create(:coin_id => capped_head_to_left_half_eagle.id, :file_name => 'UsCoin/Half Eagle/Capped Head To Left/1-obverse.jpeg', :caption => 'Obverse')
Thumbnail.create(:coin_id => capped_head_to_left_half_eagle.id, :file_name => 'UsCoin/Half Eagle/Capped Head To Left/2-reverse.jpeg', :caption => 'Reverse')
Thumbnail.create(:coin_id => classic_head_half_eagle.id, :file_name => 'UsCoin/Half Eagle/Classic Head/1-obverse.jpeg', :caption => 'Obverse')
Thumbnail.create(:coin_id => classic_head_half_eagle.id, :file_name => 'UsCoin/Half Eagle/Classic Head/2-reverse.jpeg', :caption => 'Reverse')
Thumbnail.create(:coin_id => liberty_head_half_eagle.id, :file_name => 'UsCoin/Half Eagle/Liberty Head/1-obverse.jpeg', :caption => 'Obverse')
Thumbnail.create(:coin_id => liberty_head_half_eagle.id, :file_name => 'UsCoin/Half Eagle/Liberty Head/2-reverse.jpeg', :caption => 'Reverse')
Thumbnail.create(:coin_id => indian_head_half_eagle.id, :file_name => 'UsCoin/Half Eagle/Indian Head/1-obverse.jpeg', :caption => 'Obverse')
Thumbnail.create(:coin_id => indian_head_half_eagle.id, :file_name => 'UsCoin/Half Eagle/Indian Head/2-reverse.jpeg', :caption => 'Reverse')

### Four-Dollar Gold Piece

Thumbnail.create(:coin_id => stella_four_dollar_gold_piece.id, :file_name => 'UsCoin/Four-Dollar Gold Piece/Stella/1-obverse.jpeg', :caption => 'Obverse')
Thumbnail.create(:coin_id => stella_four_dollar_gold_piece.id, :file_name => 'UsCoin/Four-Dollar Gold Piece/Stella/2-reverse.jpeg', :caption => 'Reverse')

### Three-Dollar Gold Piece

Thumbnail.create(:coin_id => three_dollar_gold_piece_coin.id, :file_name => 'UsCoin/Three-Dollar Gold Piece/Three-Dollar Gold Piece/1-obverse.jpeg', :caption => 'Obverse')
Thumbnail.create(:coin_id => three_dollar_gold_piece_coin.id, :file_name => 'UsCoin/Three-Dollar Gold Piece/Three-Dollar Gold Piece/2-reverse.jpeg', :caption => 'Reverse')

### Quarter Eagle

Thumbnail.create(:coin_id => capped_bust_to_right_quarter_eagle.id, :file_name => 'UsCoin/Quarter Eagle/Capped Bust To Right/1-obverse.jpeg', :caption => 'Obverse')
Thumbnail.create(:coin_id => capped_bust_to_right_quarter_eagle.id, :file_name => 'UsCoin/Quarter Eagle/Capped Bust To Right/2-reverse.jpeg', :caption => 'Reverse')
Thumbnail.create(:coin_id => capped_bust_to_left_large_size_quarter_eagle.id, :file_name => 'UsCoin/Quarter Eagle/Capped Bust To Left - Large Size/1-obverse.jpeg', :caption => 'Obverse')
Thumbnail.create(:coin_id => capped_bust_to_left_large_size_quarter_eagle.id, :file_name => 'UsCoin/Quarter Eagle/Capped Bust To Left - Large Size/2-reverse.jpeg', :caption => 'Reverse')
Thumbnail.create(:coin_id => capped_bust_to_left_quarter_eagle.id, :file_name => 'UsCoin/Quarter Eagle/Capped Bust To Left/1-obverse.jpeg', :caption => 'Obverse')
Thumbnail.create(:coin_id => capped_bust_to_left_quarter_eagle.id, :file_name => 'UsCoin/Quarter Eagle/Capped Bust To Left/2-reverse.jpeg', :caption => 'Reverse')
Thumbnail.create(:coin_id => classic_head_no_motto_on_reverse_quarter_eagle.id, :file_name => 'UsCoin/Quarter Eagle/Classic Head - No Motto On Reverse/1-obverse.png', :caption => 'Obverse')
Thumbnail.create(:coin_id => classic_head_no_motto_on_reverse_quarter_eagle.id, :file_name => 'UsCoin/Quarter Eagle/Classic Head - No Motto On Reverse/2-reverse.png', :caption => 'Reverse')
Thumbnail.create(:coin_id => liberty_head_quarter_eagle.id, :file_name => 'UsCoin/Quarter Eagle/Liberty Head/1-obverse.jpeg', :caption => 'Obverse')
Thumbnail.create(:coin_id => liberty_head_quarter_eagle.id, :file_name => 'UsCoin/Quarter Eagle/Liberty Head/2-reverse.jpeg', :caption => 'Reverse')
Thumbnail.create(:coin_id => cal_gold_quarter_eagle.id, :file_name => 'UsCoin/Quarter Eagle/CAL. Gold Quarter Eagle/1-obverse.jpeg', :caption => 'Obverse')
Thumbnail.create(:coin_id => cal_gold_quarter_eagle.id, :file_name => 'UsCoin/Quarter Eagle/CAL. Gold Quarter Eagle/2-reverse.jpeg', :caption => 'Reverse')
Thumbnail.create(:coin_id => indian_head_quarter_eagle.id, :file_name => 'UsCoin/Quarter Eagle/Indian Head/1-obverse.jpeg', :caption => 'Obverse')
Thumbnail.create(:coin_id => indian_head_quarter_eagle.id, :file_name => 'UsCoin/Quarter Eagle/Indian Head/2-reverse.jpeg', :caption => 'Reverse')

### Gold Dollar

Thumbnail.create(:coin_id => liberty_head_gold_dollar.id, :file_name => 'UsCoin/Gold Dollar/Liberty Head/1-obverse.jpeg', :caption => 'Obverse')
Thumbnail.create(:coin_id => liberty_head_gold_dollar.id, :file_name => 'UsCoin/Gold Dollar/Liberty Head/2-reverse.jpeg', :caption => 'Reverse')
Thumbnail.create(:coin_id => indian_princess_head_small_head_gold_dollar.id, :file_name => 'UsCoin/Gold Dollar/Indian Princess Head, Small Head/1-obverse.jpeg', :caption => 'Obverse')
Thumbnail.create(:coin_id => indian_princess_head_small_head_gold_dollar.id, :file_name => 'UsCoin/Gold Dollar/Indian Princess Head, Small Head/2-reverse.jpeg', :caption => 'Reverse')
Thumbnail.create(:coin_id => indian_princess_head_large_head_gold_dollar.id, :file_name => 'UsCoin/Gold Dollar/Indian Princess Head, Large Head/1-obverse.jpeg', :caption => 'Obverse')
Thumbnail.create(:coin_id => indian_princess_head_small_head_gold_dollar.id, :file_name => 'UsCoin/Gold Dollar/Indian Princess Head, Large Head/2-reverse.jpeg', :caption => 'Reverse')

### Silver Dollar

Thumbnail.create(:coin_id => flowing_hair_silver_dollar.id, :file_name => 'UsCoin/Silver and Related Dollar/Flowing Hair/1-obverse.jpeg', :caption => 'Obverse')
Thumbnail.create(:coin_id => flowing_hair_silver_dollar.id, :file_name => 'UsCoin/Silver and Related Dollar/Flowing Hair/2-reverse.jpeg', :caption => 'Reverse')
Thumbnail.create(:coin_id => draped_bust_silver_dollar.id, :file_name => 'UsCoin/Silver and Related Dollar/Draped Bust/1-obverse.jpeg', :caption => 'Obverse')
Thumbnail.create(:coin_id => draped_bust_silver_dollar.id, :file_name => 'UsCoin/Silver and Related Dollar/Draped Bust/2-reverse.jpeg', :caption => 'Reverse')
Thumbnail.create(:coin_id => gobrecht_silver_dollar.id, :file_name => 'UsCoin/Silver and Related Dollar/Gobrecht/1-obverse.jpeg', :caption => 'Obverse')
Thumbnail.create(:coin_id => gobrecht_silver_dollar.id, :file_name => 'UsCoin/Silver and Related Dollar/Gobrecht/2-reverse.jpeg', :caption => 'Reverse')
Thumbnail.create(:coin_id => liberty_seated_silver_dollar.id, :file_name => 'UsCoin/Silver and Related Dollar/Liberty Seated/1-obverse.jpeg', :caption => 'Obverse')
Thumbnail.create(:coin_id => liberty_seated_silver_dollar.id, :file_name => 'UsCoin/Silver and Related Dollar/Liberty Seated/2-reverse.jpeg', :caption => 'Reverse')
Thumbnail.create(:coin_id => trade_dollar_silver_dollar.id, :file_name => 'UsCoin/Silver and Related Dollar/Trade Dollars/1-obverse.png', :caption => 'Obverse')
Thumbnail.create(:coin_id => trade_dollar_silver_dollar.id, :file_name => 'UsCoin/Silver and Related Dollar/Trade Dollars/2-reverse.png', :caption => 'Reverse')
Thumbnail.create(:coin_id => morgan_silver_dollar.id, :file_name => 'UsCoin/Silver and Related Dollar/Morgan/1-obverse.png', :caption => 'Obverse')
Thumbnail.create(:coin_id => morgan_silver_dollar.id, :file_name => 'UsCoin/Silver and Related Dollar/Morgan/2-reverse.png', :caption => 'Reverse')
Thumbnail.create(:coin_id => peace_silver_dollar.id, :file_name => 'UsCoin/Silver and Related Dollar/Peace/1-obverse.jpeg', :caption => 'Obverse')
Thumbnail.create(:coin_id => peace_silver_dollar.id, :file_name => 'UsCoin/Silver and Related Dollar/Peace/2-reverse.jpeg', :caption => 'Reverse')
Thumbnail.create(:coin_id => eisenhower_silver_dollar.id, :file_name => 'UsCoin/Silver and Related Dollar/Eisenhower/1-obverse.jpeg', :caption => 'Obverse')
Thumbnail.create(:coin_id => eisenhower_silver_dollar.id, :file_name => 'UsCoin/Silver and Related Dollar/Eisenhower/2-reverse.jpeg', :caption => 'Reverse')
Thumbnail.create(:coin_id => eisenhower_silver_dollar.id, :file_name => 'UsCoin/Silver and Related Dollar/Eisenhower/3-reverse.jpeg', :caption => 'Reverse')
Thumbnail.create(:coin_id => eisenhower_silver_dollar.id, :file_name => 'UsCoin/Silver and Related Dollar/Eisenhower/4-reverse.jpeg', :caption => 'Reverse')
Thumbnail.create(:coin_id => susan_b_anthony_dollar.id, :file_name => 'UsCoin/Silver and Related Dollar/Susan B. Anthony/1-obverse.png', :caption => 'Obverse')
Thumbnail.create(:coin_id => susan_b_anthony_dollar.id, :file_name => 'UsCoin/Silver and Related Dollar/Susan B. Anthony/2-reverse.png', :caption => 'Reverse')
Thumbnail.create(:coin_id => sacagawea_dollar.id, :file_name => 'UsCoin/Silver and Related Dollar/Sacagawea/1-obverse.png', :caption => 'Obverse')
Thumbnail.create(:coin_id => sacagawea_dollar.id, :file_name => 'UsCoin/Silver and Related Dollar/Sacagawea/2-reverse.png', :caption => 'Reverse')
Thumbnail.create(:coin_id => presidential_dollar.id, :file_name => 'UsCoin/Silver and Related Dollar/Presidential/01-obverse.jpg', :caption => 'Obverse')
Thumbnail.create(:coin_id => presidential_dollar.id, :file_name => 'UsCoin/Silver and Related Dollar/Presidential/02-reverse.jpg', :caption => 'Reverse')
Thumbnail.create(:coin_id => presidential_dollar.id, :file_name => 'UsCoin/Silver and Related Dollar/Presidential/03-obverse.jpg', :caption => 'Obverse')
Thumbnail.create(:coin_id => presidential_dollar.id, :file_name => 'UsCoin/Silver and Related Dollar/Presidential/04-obverse.jpg', :caption => 'Obverse')
Thumbnail.create(:coin_id => presidential_dollar.id, :file_name => 'UsCoin/Silver and Related Dollar/Presidential/05-obverse.jpg', :caption => 'Obverse')
Thumbnail.create(:coin_id => presidential_dollar.id, :file_name => 'UsCoin/Silver and Related Dollar/Presidential/06-obverse.jpg', :caption => 'Obverse')
Thumbnail.create(:coin_id => presidential_dollar.id, :file_name => 'UsCoin/Silver and Related Dollar/Presidential/07-obverse.jpg', :caption => 'Obverse')
Thumbnail.create(:coin_id => presidential_dollar.id, :file_name => 'UsCoin/Silver and Related Dollar/Presidential/08-obverse.jpg', :caption => 'Obverse')
Thumbnail.create(:coin_id => presidential_dollar.id, :file_name => 'UsCoin/Silver and Related Dollar/Presidential/09-obverse.jpg', :caption => 'Obverse')
Thumbnail.create(:coin_id => presidential_dollar.id, :file_name => 'UsCoin/Silver and Related Dollar/Presidential/10-obverse.jpg', :caption => 'Obverse')
Thumbnail.create(:coin_id => presidential_dollar.id, :file_name => 'UsCoin/Silver and Related Dollar/Presidential/11-obverse.jpg', :caption => 'Obverse')
Thumbnail.create(:coin_id => presidential_dollar.id, :file_name => 'UsCoin/Silver and Related Dollar/Presidential/12-obverse.jpg', :caption => 'Obverse')
Thumbnail.create(:coin_id => presidential_dollar.id, :file_name => 'UsCoin/Silver and Related Dollar/Presidential/13-obverse.jpg', :caption => 'Obverse')
Thumbnail.create(:coin_id => presidential_dollar.id, :file_name => 'UsCoin/Silver and Related Dollar/Presidential/14-obverse.jpg', :caption => 'Obverse')
Thumbnail.create(:coin_id => presidential_dollar.id, :file_name => 'UsCoin/Silver and Related Dollar/Presidential/15-obverse.jpg', :caption => 'Obverse')
Thumbnail.create(:coin_id => presidential_dollar.id, :file_name => 'UsCoin/Silver and Related Dollar/Presidential/16-obverse.jpg', :caption => 'Obverse')
Thumbnail.create(:coin_id => presidential_dollar.id, :file_name => 'UsCoin/Silver and Related Dollar/Presidential/18-obverse.jpg', :caption => 'Obverse')
Thumbnail.create(:coin_id => presidential_dollar.id, :file_name => 'UsCoin/Silver and Related Dollar/Presidential/19-obverse.jpg', :caption => 'Obverse')
Thumbnail.create(:coin_id => presidential_dollar.id, :file_name => 'UsCoin/Silver and Related Dollar/Presidential/20-obverse.jpg', :caption => 'Obverse')
Thumbnail.create(:coin_id => presidential_dollar.id, :file_name => 'UsCoin/Silver and Related Dollar/Presidential/21-obverse.jpg', :caption => 'Obverse')
Thumbnail.create(:coin_id => presidential_dollar.id, :file_name => 'UsCoin/Silver and Related Dollar/Presidential/22-obverse.jpg', :caption => 'Obverse')
Thumbnail.create(:coin_id => presidential_dollar.id, :file_name => 'UsCoin/Silver and Related Dollar/Presidential/23-obverse.jpg', :caption => 'Obverse')
Thumbnail.create(:coin_id => presidential_dollar.id, :file_name => 'UsCoin/Silver and Related Dollar/Presidential/24-obverse.jpg', :caption => 'Obverse')
Thumbnail.create(:coin_id => presidential_dollar.id, :file_name => 'UsCoin/Silver and Related Dollar/Presidential/25-obverse.jpg', :caption => 'Obverse')

### Half Dollar

Thumbnail.create(:coin_id => flowing_hair_half_dollar.id, :file_name => 'UsCoin/Half Dollar/Flowing Hair/1-obverse.jpeg', :caption => 'Obverse')
Thumbnail.create(:coin_id => flowing_hair_half_dollar.id, :file_name => 'UsCoin/Half Dollar/Flowing Hair/2-reverse.jpeg', :caption => 'Reverse')
Thumbnail.create(:coin_id => draped_bust_half_dollar.id, :file_name => 'UsCoin/Half Dollar/Draped Bust/1-obverse.jpeg', :caption => 'Obverse')
Thumbnail.create(:coin_id => draped_bust_half_dollar.id, :file_name => 'UsCoin/Half Dollar/Draped Bust/2-reverse.jpeg', :caption => 'Reverse')
Thumbnail.create(:coin_id => capped_bust_lettered_edge_half_dollar.id, :file_name => 'UsCoin/Half Dollar/Capped Bust, Lettered Edge/1-obverse.jpeg', :caption => 'Obverse')
Thumbnail.create(:coin_id => capped_bust_lettered_edge_half_dollar.id, :file_name => 'UsCoin/Half Dollar/Capped Bust, Lettered Edge/2-reverse.jpeg', :caption => 'Reverse')


## Coin Attributes

### Silver Dollar

CoinAttribute.create(:coin_id => flowing_hair_silver_dollar.id,   :attribute_type_id => ebay_group_attrib_type.id, :value => '11876')
CoinAttribute.create(:coin_id => draped_bust_silver_dollar.id, :attribute_type_id => ebay_group_attrib_type.id, :value => '11976')
CoinAttribute.create(:coin_id => gobrecht_silver_dollar.id, :attribute_type_id => ebay_group_attrib_type.id, :value => '176964')
CoinAttribute.create(:coin_id => liberty_seated_silver_dollar.id, :attribute_type_id => ebay_group_attrib_type.id, :value => '11977')
CoinAttribute.create(:coin_id => trade_dollar_silver_dollar.id, :attribute_type_id => ebay_group_attrib_type.id, :value => '11978')
CoinAttribute.create(:coin_id => morgan_silver_dollar.id, :attribute_type_id => ebay_group_attrib_type.id, :value => '39464')
CoinAttribute.create(:coin_id => peace_silver_dollar.id, :attribute_type_id => ebay_group_attrib_type.id, :value => '11980')
CoinAttribute.create(:coin_id => eisenhower_silver_dollar.id, :attribute_type_id => ebay_group_attrib_type.id, :value => '11981')
CoinAttribute.create(:coin_id => susan_b_anthony_dollar.id, :attribute_type_id => ebay_group_attrib_type.id, :value => '11982')
CoinAttribute.create(:coin_id => sacagawea_dollar.id, :attribute_type_id => ebay_group_attrib_type.id, :value => '11983')
CoinAttribute.create(:coin_id => presidential_dollar.id, :attribute_type_id => ebay_group_attrib_type.id, :value => '159713')


## Mint Coins

### Quarter Eagle

#### Indian Head

MintCoin.create(:year => 1908, :year_grouping => '', :mint_id => philadelphia_mint.id, :mint_grouping => '', :coin_id => indian_head_quarter_eagle.id, :number_minted => 564821, :number_proof_minted => 236, :is_gold => true, :is_silver => false)
MintCoin.create(:year => 1909, :year_grouping => '', :mint_id => philadelphia_mint.id, :mint_grouping => '', :coin_id => indian_head_quarter_eagle.id, :number_minted => 441760, :number_proof_minted => 139, :is_gold => true, :is_silver => false)
MintCoin.create(:year => 1910, :year_grouping => '', :mint_id => philadelphia_mint.id, :mint_grouping => '', :coin_id => indian_head_quarter_eagle.id, :number_minted => 492000, :number_proof_minted => 682, :is_gold => true, :is_silver => false)
MintCoin.create(:year => 1911, :year_grouping => '', :mint_id => philadelphia_mint.id, :mint_grouping => '', :coin_id => indian_head_quarter_eagle.id, :number_minted => 704000, :number_proof_minted => 191, :is_gold => true, :is_silver => false)
MintCoin.create(:year => 1911, :year_grouping => '', :mint_id => denver_mint.id, :mint_grouping => '', :coin_id => indian_head_quarter_eagle.id, :number_minted => 55680, :number_proof_minted => 0, :is_gold => true, :is_silver => false)
MintCoin.create(:year => 1912, :year_grouping => '', :mint_id => philadelphia_mint.id, :mint_grouping => '', :coin_id => indian_head_quarter_eagle.id, :number_minted => 616000, :number_proof_minted => 197, :is_gold => true, :is_silver => false)
MintCoin.create(:year => 1913, :year_grouping => '', :mint_id => philadelphia_mint.id, :mint_grouping => '', :coin_id => indian_head_quarter_eagle.id, :number_minted => 722000, :number_proof_minted => 165, :is_gold => true, :is_silver => false)
MintCoin.create(:year => 1914, :year_grouping => '', :mint_id => philadelphia_mint.id, :mint_grouping => '', :coin_id => indian_head_quarter_eagle.id, :number_minted => 240000, :number_proof_minted => 117, :is_gold => true, :is_silver => false)
MintCoin.create(:year => 1914, :year_grouping => '', :mint_id => denver_mint.id, :mint_grouping => '', :coin_id => indian_head_quarter_eagle.id, :number_minted => 448000, :number_proof_minted => 0, :is_gold => true, :is_silver => false)
MintCoin.create(:year => 1915, :year_grouping => '', :mint_id => philadelphia_mint.id, :mint_grouping => '', :coin_id => indian_head_quarter_eagle.id, :number_minted => 606000, :number_proof_minted => 100, :is_gold => true, :is_silver => false)
MintCoin.create(:year => 1925, :year_grouping => '', :mint_id => denver_mint.id, :mint_grouping => '', :coin_id => indian_head_quarter_eagle.id, :number_minted => 578000, :number_proof_minted => 0, :is_gold => true, :is_silver => false)
MintCoin.create(:year => 1926, :year_grouping => '', :mint_id => philadelphia_mint.id, :mint_grouping => '', :coin_id => indian_head_quarter_eagle.id, :number_minted => 446000, :number_proof_minted => 0, :is_gold => true, :is_silver => false)
MintCoin.create(:year => 1927, :year_grouping => '', :mint_id => philadelphia_mint.id, :mint_grouping => '', :coin_id => indian_head_quarter_eagle.id, :number_minted => 388000, :number_proof_minted => 0, :is_gold => true, :is_silver => false)
MintCoin.create(:year => 1928, :year_grouping => '', :mint_id => philadelphia_mint.id, :mint_grouping => '', :coin_id => indian_head_quarter_eagle.id, :number_minted => 416000, :number_proof_minted => 0, :is_gold => true, :is_silver => false)
MintCoin.create(:year => 1929, :year_grouping => '', :mint_id => philadelphia_mint.id, :mint_grouping => '', :coin_id => indian_head_quarter_eagle.id, :number_minted => 532000, :number_proof_minted => 0, :is_gold => true, :is_silver => false)



### Silver Dollar

#### Liberty Seated

MintCoin.create(:year => 1840, :year_grouping => 'Variety 1 - No Motto', :mint_id => philadelphia_mint.id, :mint_grouping => '', :coin_id => liberty_seated_silver_dollar.id, :number_minted => 61005, :number_proof_minted => 0, :is_gold => false, :is_silver => true)
MintCoin.create(:year => 1841, :year_grouping => 'Variety 1 - No Motto', :mint_id => philadelphia_mint.id, :mint_grouping => '', :coin_id => liberty_seated_silver_dollar.id, :number_minted => 173000, :number_proof_minted => 0, :is_gold => false, :is_silver => true)
MintCoin.create(:year => 1842, :year_grouping => 'Variety 1 - No Motto', :mint_id => philadelphia_mint.id, :mint_grouping => '', :coin_id => liberty_seated_silver_dollar.id, :number_minted => 184618, :number_proof_minted => 0, :is_gold => false, :is_silver => true)
MintCoin.create(:year => 1843, :year_grouping => 'Variety 1 - No Motto', :mint_id => philadelphia_mint.id, :mint_grouping => '', :coin_id => liberty_seated_silver_dollar.id, :number_minted => 165100, :number_proof_minted => 0, :is_gold => false, :is_silver => true)
MintCoin.create(:year => 1844, :year_grouping => 'Variety 1 - No Motto', :mint_id => philadelphia_mint.id, :mint_grouping => '', :coin_id => liberty_seated_silver_dollar.id, :number_minted => 20000, :number_proof_minted => 0, :is_gold => false, :is_silver => true)
MintCoin.create(:year => 1845, :year_grouping => 'Variety 1 - No Motto', :mint_id => philadelphia_mint.id, :mint_grouping => '', :coin_id => liberty_seated_silver_dollar.id, :number_minted => 24500, :number_proof_minted => 0, :is_gold => false, :is_silver => true)
MintCoin.create(:year => 1846, :year_grouping => 'Variety 1 - No Motto', :mint_id => philadelphia_mint.id, :mint_grouping => '', :coin_id => liberty_seated_silver_dollar.id, :number_minted => 110600, :number_proof_minted => 0, :is_gold => false, :is_silver => true)
MintCoin.create(:year => 1846, :year_grouping => 'Variety 1 - No Motto', :mint_id => new_orleans_mint.id, :mint_grouping => '', :coin_id => liberty_seated_silver_dollar.id, :number_minted => 59000, :number_proof_minted => 0, :is_gold => false, :is_silver => true)
MintCoin.create(:year => 1847, :year_grouping => 'Variety 1 - No Motto', :mint_id => philadelphia_mint.id, :mint_grouping => '', :coin_id => liberty_seated_silver_dollar.id, :number_minted => 140750, :number_proof_minted => 0, :is_gold => false, :is_silver => true)
MintCoin.create(:year => 1848, :year_grouping => 'Variety 1 - No Motto', :mint_id => philadelphia_mint.id, :mint_grouping => '', :coin_id => liberty_seated_silver_dollar.id, :number_minted => 15000, :number_proof_minted => 0, :is_gold => false, :is_silver => true)
MintCoin.create(:year => 1849, :year_grouping => 'Variety 1 - No Motto', :mint_id => philadelphia_mint.id, :mint_grouping => '', :coin_id => liberty_seated_silver_dollar.id, :number_minted => 62600, :number_proof_minted => 0, :is_gold => false, :is_silver => true)
MintCoin.create(:year => 1850, :year_grouping => 'Variety 1 - No Motto', :mint_id => philadelphia_mint.id, :mint_grouping => '', :coin_id => liberty_seated_silver_dollar.id, :number_minted => 7500, :number_proof_minted => 0, :is_gold => false, :is_silver => true)
MintCoin.create(:year => 1850, :year_grouping => 'Variety 1 - No Motto', :mint_id => new_orleans_mint.id, :mint_grouping => '', :coin_id => liberty_seated_silver_dollar.id, :number_minted => 40000, :number_proof_minted => 0, :is_gold => false, :is_silver => true)
MintCoin.create(:year => 1851, :year_grouping => 'Variety 1 - No Motto', :mint_id => philadelphia_mint.id, :mint_grouping => '', :coin_id => liberty_seated_silver_dollar.id, :number_minted => 1300, :number_proof_minted => 0, :is_gold => false, :is_silver => true)
MintCoin.create(:year => 1852, :year_grouping => 'Variety 1 - No Motto', :mint_id => philadelphia_mint.id, :mint_grouping => '', :coin_id => liberty_seated_silver_dollar.id, :number_minted => 1100, :number_proof_minted => 0, :is_gold => false, :is_silver => true)
MintCoin.create(:year => 1853, :year_grouping => 'Variety 1 - No Motto', :mint_id => philadelphia_mint.id, :mint_grouping => '', :coin_id => liberty_seated_silver_dollar.id, :number_minted => 46110, :number_proof_minted => 0, :is_gold => false, :is_silver => true)
MintCoin.create(:year => 1854, :year_grouping => 'Variety 1 - No Motto', :mint_id => philadelphia_mint.id, :mint_grouping => '', :coin_id => liberty_seated_silver_dollar.id, :number_minted => 33140, :number_proof_minted => 0, :is_gold => false, :is_silver => true)
MintCoin.create(:year => 1855, :year_grouping => 'Variety 1 - No Motto', :mint_id => philadelphia_mint.id, :mint_grouping => '', :coin_id => liberty_seated_silver_dollar.id, :number_minted => 26000, :number_proof_minted => 0, :is_gold => false, :is_silver => true)
MintCoin.create(:year => 1856, :year_grouping => 'Variety 1 - No Motto', :mint_id => philadelphia_mint.id, :mint_grouping => '', :coin_id => liberty_seated_silver_dollar.id, :number_minted => 63500, :number_proof_minted => 0, :is_gold => false, :is_silver => true)
MintCoin.create(:year => 1857, :year_grouping => 'Variety 1 - No Motto', :mint_id => philadelphia_mint.id, :mint_grouping => '', :coin_id => liberty_seated_silver_dollar.id, :number_minted => 94000, :number_proof_minted => 0, :is_gold => false, :is_silver => true)
MintCoin.create(:year => 1858, :year_grouping => 'Variety 1 - No Motto', :mint_id => philadelphia_mint.id, :mint_grouping => '', :coin_id => liberty_seated_silver_dollar.id, :number_minted => 0, :number_proof_minted => 300, :is_gold => false, :is_silver => true)
MintCoin.create(:year => 1859, :year_grouping => 'Variety 1 - No Motto', :mint_id => philadelphia_mint.id, :mint_grouping => '', :coin_id => liberty_seated_silver_dollar.id, :number_minted => 255700, :number_proof_minted => 800, :is_gold => false, :is_silver => true)
MintCoin.create(:year => 1859, :year_grouping => 'Variety 1 - No Motto', :mint_id => new_orleans_mint.id, :mint_grouping => '', :coin_id => liberty_seated_silver_dollar.id, :number_minted => 360000, :number_proof_minted => 0, :is_gold => false, :is_silver => true)
MintCoin.create(:year => 1859, :year_grouping => 'Variety 1 - No Motto', :mint_id => san_francisco_mint.id, :mint_grouping => '', :coin_id => liberty_seated_silver_dollar.id, :number_minted => 20000, :number_proof_minted => 0, :is_gold => false, :is_silver => true)
MintCoin.create(:year => 1860, :year_grouping => 'Variety 1 - No Motto', :mint_id => philadelphia_mint.id, :mint_grouping => '', :coin_id => liberty_seated_silver_dollar.id, :number_minted => 217600, :number_proof_minted => 1330, :is_gold => false, :is_silver => true)
MintCoin.create(:year => 1860, :year_grouping => 'Variety 1 - No Motto', :mint_id => new_orleans_mint.id, :mint_grouping => '', :coin_id => liberty_seated_silver_dollar.id, :number_minted => 515000, :number_proof_minted => 0, :is_gold => false, :is_silver => true)
MintCoin.create(:year => 1861, :year_grouping => 'Variety 1 - No Motto', :mint_id => philadelphia_mint.id, :mint_grouping => '', :coin_id => liberty_seated_silver_dollar.id, :number_minted => 77500, :number_proof_minted => 1000, :is_gold => false, :is_silver => true)
MintCoin.create(:year => 1862, :year_grouping => 'Variety 1 - No Motto', :mint_id => philadelphia_mint.id, :mint_grouping => '', :coin_id => liberty_seated_silver_dollar.id, :number_minted => 11540, :number_proof_minted => 550, :is_gold => false, :is_silver => true)
MintCoin.create(:year => 1863, :year_grouping => 'Variety 1 - No Motto', :mint_id => philadelphia_mint.id, :mint_grouping => '', :coin_id => liberty_seated_silver_dollar.id, :number_minted => 27200, :number_proof_minted => 460, :is_gold => false, :is_silver => true)
MintCoin.create(:year => 1864, :year_grouping => 'Variety 1 - No Motto', :mint_id => philadelphia_mint.id, :mint_grouping => '', :coin_id => liberty_seated_silver_dollar.id, :number_minted => 30700, :number_proof_minted => 470, :is_gold => false, :is_silver => true)
MintCoin.create(:year => 1865, :year_grouping => 'Variety 1 - No Motto', :mint_id => philadelphia_mint.id, :mint_grouping => '', :coin_id => liberty_seated_silver_dollar.id, :number_minted => 46500, :number_proof_minted => 500, :is_gold => false, :is_silver => true)
MintCoin.create(:year => 1866, :year_grouping => 'Variety 2 - With Motto IN GOD WE TRUST', :mint_id => philadelphia_mint.id, :mint_grouping => '', :coin_id => liberty_seated_silver_dollar.id, :number_minted => 48900, :number_proof_minted => 725, :is_gold => false, :is_silver => true)
MintCoin.create(:year => 1867, :year_grouping => 'Variety 2 - With Motto IN GOD WE TRUST', :mint_id => philadelphia_mint.id, :mint_grouping => '', :coin_id => liberty_seated_silver_dollar.id, :number_minted => 46900, :number_proof_minted => 625, :is_gold => false, :is_silver => true)
MintCoin.create(:year => 1868, :year_grouping => 'Variety 2 - With Motto IN GOD WE TRUST', :mint_id => philadelphia_mint.id, :mint_grouping => '', :coin_id => liberty_seated_silver_dollar.id, :number_minted => 162100, :number_proof_minted => 600, :is_gold => false, :is_silver => true)
MintCoin.create(:year => 1869, :year_grouping => 'Variety 2 - With Motto IN GOD WE TRUST', :mint_id => philadelphia_mint.id, :mint_grouping => '', :coin_id => liberty_seated_silver_dollar.id, :number_minted => 423700, :number_proof_minted => 600, :is_gold => false, :is_silver => true)
MintCoin.create(:year => 1870, :year_grouping => 'Variety 2 - With Motto IN GOD WE TRUST', :mint_id => philadelphia_mint.id, :mint_grouping => '', :coin_id => liberty_seated_silver_dollar.id, :number_minted => 415000, :number_proof_minted => 1000, :is_gold => false, :is_silver => true)
MintCoin.create(:year => 1870, :year_grouping => 'Variety 2 - With Motto IN GOD WE TRUST', :mint_id => carson_city_mint.id, :mint_grouping => '', :coin_id => liberty_seated_silver_dollar.id, :number_minted => 11758, :number_proof_minted => 0, :is_gold => false, :is_silver => true)
MintCoin.create(:year => 1870, :year_grouping => 'Variety 2 - With Motto IN GOD WE TRUST', :mint_id => san_francisco_mint.id, :mint_grouping => '', :coin_id => liberty_seated_silver_dollar.id, :number_minted => 0, :number_proof_minted => 0, :is_gold => false, :is_silver => true)
MintCoin.create(:year => 1871, :year_grouping => 'Variety 2 - With Motto IN GOD WE TRUST', :mint_id => philadelphia_mint.id, :mint_grouping => '', :coin_id => liberty_seated_silver_dollar.id, :number_minted => 1073800, :number_proof_minted => 960, :is_gold => false, :is_silver => true)
MintCoin.create(:year => 1871, :year_grouping => 'Variety 2 - With Motto IN GOD WE TRUST', :mint_id => carson_city_mint.id, :mint_grouping => '', :coin_id => liberty_seated_silver_dollar.id, :number_minted => 1376, :number_proof_minted => 0, :is_gold => false, :is_silver => true)
MintCoin.create(:year => 1872, :year_grouping => 'Variety 2 - With Motto IN GOD WE TRUST', :mint_id => philadelphia_mint.id, :mint_grouping => '', :coin_id => liberty_seated_silver_dollar.id, :number_minted => 1105500, :number_proof_minted => 950, :is_gold => false, :is_silver => true)
MintCoin.create(:year => 1872, :year_grouping => 'Variety 2 - With Motto IN GOD WE TRUST', :mint_id => carson_city_mint.id, :mint_grouping => '', :coin_id => liberty_seated_silver_dollar.id, :number_minted => 3150, :number_proof_minted => 0, :is_gold => false, :is_silver => true)
MintCoin.create(:year => 1872, :year_grouping => 'Variety 2 - With Motto IN GOD WE TRUST', :mint_id => san_francisco_mint.id, :mint_grouping => '', :coin_id => liberty_seated_silver_dollar.id, :number_minted => 9000, :number_proof_minted => 0, :is_gold => false, :is_silver => true)
MintCoin.create(:year => 1873, :year_grouping => 'Variety 2 - With Motto IN GOD WE TRUST', :mint_id => philadelphia_mint.id, :mint_grouping => '', :coin_id => liberty_seated_silver_dollar.id, :number_minted => 293000, :number_proof_minted => 600, :is_gold => false, :is_silver => true)
MintCoin.create(:year => 1873, :year_grouping => 'Variety 2 - With Motto IN GOD WE TRUST', :mint_id => carson_city_mint.id, :mint_grouping => '', :coin_id => liberty_seated_silver_dollar.id, :number_minted => 2300, :number_proof_minted => 0, :is_gold => false, :is_silver => true)


#### Morgan

MintCoin.create(:year => 1878, :year_grouping => '', :mint_id => philadelphia_mint.id, :mint_grouping => "8 Feathers", :coin_id => morgan_silver_dollar.id, :number_minted => 749500, :number_proof_minted => 500, :is_gold => false, :is_silver => true)
MintCoin.create(:year => 1878, :year_grouping => '', :mint_id => philadelphia_mint.id, :mint_grouping => "7 Feathers", :coin_id => morgan_silver_dollar.id, :number_minted => 9759300, :number_proof_minted => 250, :is_gold => false, :is_silver => true)
MintCoin.create(:year => 1878, :year_grouping => '', :mint_id => philadelphia_mint.id, :mint_grouping => "7/8 Clear Double Feathers", :coin_id => morgan_silver_dollar.id, :number_minted => 0, :number_proof_minted => 0, :is_gold => false, :is_silver => true)
MintCoin.create(:year => 1878, :year_grouping => '', :mint_id => carson_city_mint.id, :mint_grouping => "", :coin_id => morgan_silver_dollar.id, :number_minted => 2212000, :number_proof_minted => 0, :is_gold => false, :is_silver => true)
MintCoin.create(:year => 1878, :year_grouping => '', :mint_id => san_francisco_mint.id, :mint_grouping => "", :coin_id => morgan_silver_dollar.id, :number_minted => 9774000, :number_proof_minted => 0, :is_gold => false, :is_silver => true)
MintCoin.create(:year => 1879, :year_grouping => '', :mint_id => philadelphia_mint.id, :mint_grouping => "", :coin_id => morgan_silver_dollar.id, :number_minted => 14806000, :number_proof_minted => 1100, :is_gold => false, :is_silver => true)
MintCoin.create(:year => 1879, :year_grouping => '', :mint_id => carson_city_mint.id, :mint_grouping => "CC over CC", :coin_id => morgan_silver_dollar.id, :number_minted => 756000, :number_proof_minted => 0, :is_gold => false, :is_silver => true)
MintCoin.create(:year => 1879, :year_grouping => '', :mint_id => new_orleans_mint.id, :mint_grouping => "", :coin_id => morgan_silver_dollar.id, :number_minted => 2887000, :number_proof_minted => 0, :is_gold => false, :is_silver => true)
MintCoin.create(:year => 1879, :year_grouping => '', :mint_id => san_francisco_mint.id, :mint_grouping => "", :coin_id => morgan_silver_dollar.id, :number_minted => 9110000, :number_proof_minted => 0, :is_gold => false, :is_silver => true)
MintCoin.create(:year => 1880, :year_grouping => '', :mint_id => philadelphia_mint.id, :mint_grouping => "", :coin_id => morgan_silver_dollar.id, :number_minted => 12600000, :number_proof_minted => 1355, :is_gold => false, :is_silver => true)
MintCoin.create(:year => 1880, :year_grouping => '', :mint_id => carson_city_mint.id, :mint_grouping => "", :coin_id => morgan_silver_dollar.id, :number_minted => 591000, :number_proof_minted => 0, :is_gold => false, :is_silver => true)
MintCoin.create(:year => 1880, :year_grouping => '', :mint_id => new_orleans_mint.id, :mint_grouping => "", :coin_id => morgan_silver_dollar.id, :number_minted => 5305000, :number_proof_minted => 0, :is_gold => false, :is_silver => true)
MintCoin.create(:year => 1880, :year_grouping => '', :mint_id => san_francisco_mint.id, :mint_grouping => "", :coin_id => morgan_silver_dollar.id, :number_minted => 8900000, :number_proof_minted => 0, :is_gold => false, :is_silver => true)
MintCoin.create(:year => 1881, :year_grouping => '', :mint_id => philadelphia_mint.id, :mint_grouping => "", :coin_id => morgan_silver_dollar.id, :number_minted => 9163000, :number_proof_minted => 984, :is_gold => false, :is_silver => true)
MintCoin.create(:year => 1881, :year_grouping => '', :mint_id => carson_city_mint.id, :mint_grouping => "", :coin_id => morgan_silver_dollar.id, :number_minted => 296000, :number_proof_minted => 0, :is_gold => false, :is_silver => true)
MintCoin.create(:year => 1881, :year_grouping => '', :mint_id => new_orleans_mint.id, :mint_grouping => "", :coin_id => morgan_silver_dollar.id, :number_minted => 5708000, :number_proof_minted => 0, :is_gold => false, :is_silver => true)
MintCoin.create(:year => 1881, :year_grouping => '', :mint_id => san_francisco_mint.id, :mint_grouping => "", :coin_id => morgan_silver_dollar.id, :number_minted => 12760000, :number_proof_minted => 0, :is_gold => false, :is_silver => true)
MintCoin.create(:year => 1882, :year_grouping => '', :mint_id => philadelphia_mint.id, :mint_grouping => "", :coin_id => morgan_silver_dollar.id, :number_minted => 11100000, :number_proof_minted => 1100, :is_gold => false, :is_silver => true)
MintCoin.create(:year => 1882, :year_grouping => '', :mint_id => carson_city_mint.id, :mint_grouping => "", :coin_id => morgan_silver_dollar.id, :number_minted => 1133000, :number_proof_minted => 0, :is_gold => false, :is_silver => true)
MintCoin.create(:year => 1882, :year_grouping => '', :mint_id => new_orleans_mint.id, :mint_grouping => "", :coin_id => morgan_silver_dollar.id, :number_minted => 6090000, :number_proof_minted => 0, :is_gold => false, :is_silver => true)
MintCoin.create(:year => 1882, :year_grouping => '', :mint_id => san_francisco_mint.id, :mint_grouping => "", :coin_id => morgan_silver_dollar.id, :number_minted => 9250000, :number_proof_minted => 0, :is_gold => false, :is_silver => true)
MintCoin.create(:year => 1883, :year_grouping => '', :mint_id => philadelphia_mint.id, :mint_grouping => "", :coin_id => morgan_silver_dollar.id, :number_minted => 12290000, :number_proof_minted => 1039, :is_gold => false, :is_silver => true)
MintCoin.create(:year => 1883, :year_grouping => '', :mint_id => carson_city_mint.id, :mint_grouping => "", :coin_id => morgan_silver_dollar.id, :number_minted => 1204000, :number_proof_minted => 0, :is_gold => false, :is_silver => true)
MintCoin.create(:year => 1883, :year_grouping => '', :mint_id => new_orleans_mint.id, :mint_grouping => "", :coin_id => morgan_silver_dollar.id, :number_minted => 8725000, :number_proof_minted => 0, :is_gold => false, :is_silver => true)
MintCoin.create(:year => 1883, :year_grouping => '', :mint_id => san_francisco_mint.id, :mint_grouping => "", :coin_id => morgan_silver_dollar.id, :number_minted => 6250000, :number_proof_minted => 0, :is_gold => false, :is_silver => true)
MintCoin.create(:year => 1884, :year_grouping => '', :mint_id => philadelphia_mint.id, :mint_grouping => "", :coin_id => morgan_silver_dollar.id, :number_minted => 14070000, :number_proof_minted => 875, :is_gold => false, :is_silver => true)
MintCoin.create(:year => 1884, :year_grouping => '', :mint_id => carson_city_mint.id, :mint_grouping => "", :coin_id => morgan_silver_dollar.id, :number_minted => 1136000, :number_proof_minted => 0, :is_gold => false, :is_silver => true)
MintCoin.create(:year => 1884, :year_grouping => '', :mint_id => new_orleans_mint.id, :mint_grouping => "", :coin_id => morgan_silver_dollar.id, :number_minted => 9730000, :number_proof_minted => 0, :is_gold => false, :is_silver => true)
MintCoin.create(:year => 1884, :year_grouping => '', :mint_id => san_francisco_mint.id, :mint_grouping => "", :coin_id => morgan_silver_dollar.id, :number_minted => 3200000, :number_proof_minted => 0, :is_gold => false, :is_silver => true)
MintCoin.create(:year => 1885, :year_grouping => '', :mint_id => philadelphia_mint.id, :mint_grouping => "", :coin_id => morgan_silver_dollar.id, :number_minted => 17787000, :number_proof_minted => 930, :is_gold => false, :is_silver => true)
MintCoin.create(:year => 1885, :year_grouping => '', :mint_id => carson_city_mint.id, :mint_grouping => "", :coin_id => morgan_silver_dollar.id, :number_minted => 228000, :number_proof_minted => 0, :is_gold => false, :is_silver => true)
MintCoin.create(:year => 1885, :year_grouping => '', :mint_id => new_orleans_mint.id, :mint_grouping => "", :coin_id => morgan_silver_dollar.id, :number_minted => 9185000, :number_proof_minted => 0, :is_gold => false, :is_silver => true)
MintCoin.create(:year => 1885, :year_grouping => '', :mint_id => san_francisco_mint.id, :mint_grouping => "", :coin_id => morgan_silver_dollar.id, :number_minted => 1497000, :number_proof_minted => 0, :is_gold => false, :is_silver => true)
MintCoin.create(:year => 1886, :year_grouping => '', :mint_id => philadelphia_mint.id, :mint_grouping => "", :coin_id => morgan_silver_dollar.id, :number_minted => 19963000, :number_proof_minted => 886, :is_gold => false, :is_silver => true)
MintCoin.create(:year => 1886, :year_grouping => '', :mint_id => new_orleans_mint.id, :mint_grouping => "", :coin_id => morgan_silver_dollar.id, :number_minted => 10710000, :number_proof_minted => 0, :is_gold => false, :is_silver => true)
MintCoin.create(:year => 1886, :year_grouping => '', :mint_id => san_francisco_mint.id, :mint_grouping => "", :coin_id => morgan_silver_dollar.id, :number_minted => 750000, :number_proof_minted => 0, :is_gold => false, :is_silver => true)
MintCoin.create(:year => 1887, :year_grouping => '', :mint_id => philadelphia_mint.id, :mint_grouping => "", :coin_id => morgan_silver_dollar.id, :number_minted => 20290000, :number_proof_minted => 710, :is_gold => false, :is_silver => true)
MintCoin.create(:year => 1887, :year_grouping => '', :mint_id => new_orleans_mint.id, :mint_grouping => "", :coin_id => morgan_silver_dollar.id, :number_minted => 11550000, :number_proof_minted => 0, :is_gold => false, :is_silver => true)
MintCoin.create(:year => 1887, :year_grouping => '', :mint_id => san_francisco_mint.id, :mint_grouping => "", :coin_id => morgan_silver_dollar.id, :number_minted => 1771000, :number_proof_minted => 0, :is_gold => false, :is_silver => true)
MintCoin.create(:year => 1888, :year_grouping => '', :mint_id => philadelphia_mint.id, :mint_grouping => "", :coin_id => morgan_silver_dollar.id, :number_minted => 19183000, :number_proof_minted => 833, :is_gold => false, :is_silver => true)
MintCoin.create(:year => 1888, :year_grouping => '', :mint_id => new_orleans_mint.id, :mint_grouping => "", :coin_id => morgan_silver_dollar.id, :number_minted => 12150000, :number_proof_minted => 0, :is_gold => false, :is_silver => true)
MintCoin.create(:year => 1888, :year_grouping => '', :mint_id => san_francisco_mint.id, :mint_grouping => "", :coin_id => morgan_silver_dollar.id, :number_minted => 657000, :number_proof_minted => 0, :is_gold => false, :is_silver => true)
MintCoin.create(:year => 1889, :year_grouping => '', :mint_id => philadelphia_mint.id, :mint_grouping => "", :coin_id => morgan_silver_dollar.id, :number_minted => 21726000, :number_proof_minted => 811, :is_gold => false, :is_silver => true)
MintCoin.create(:year => 1889, :year_grouping => '', :mint_id => carson_city_mint.id, :mint_grouping => "", :coin_id => morgan_silver_dollar.id, :number_minted => 350000, :number_proof_minted => 0, :is_gold => false, :is_silver => true)
MintCoin.create(:year => 1889, :year_grouping => '', :mint_id => new_orleans_mint.id, :mint_grouping => "", :coin_id => morgan_silver_dollar.id, :number_minted => 11875000, :number_proof_minted => 0, :is_gold => false, :is_silver => true)
MintCoin.create(:year => 1889, :year_grouping => '', :mint_id => san_francisco_mint.id, :mint_grouping => "", :coin_id => morgan_silver_dollar.id, :number_minted => 700000, :number_proof_minted => 0, :is_gold => false, :is_silver => true)
MintCoin.create(:year => 1890, :year_grouping => '', :mint_id => philadelphia_mint.id, :mint_grouping => "", :coin_id => morgan_silver_dollar.id, :number_minted => 16802000, :number_proof_minted => 590, :is_gold => false, :is_silver => true)
MintCoin.create(:year => 1890, :year_grouping => '', :mint_id => carson_city_mint.id, :mint_grouping => "", :coin_id => morgan_silver_dollar.id, :number_minted => 2309041, :number_proof_minted => 0, :is_gold => false, :is_silver => true)
MintCoin.create(:year => 1890, :year_grouping => '', :mint_id => new_orleans_mint.id, :mint_grouping => "", :coin_id => morgan_silver_dollar.id, :number_minted => 10701000, :number_proof_minted => 0, :is_gold => false, :is_silver => true)
MintCoin.create(:year => 1890, :year_grouping => '', :mint_id => san_francisco_mint.id, :mint_grouping => "", :coin_id => morgan_silver_dollar.id, :number_minted => 8230373, :number_proof_minted => 0, :is_gold => false, :is_silver => true)
MintCoin.create(:year => 1891, :year_grouping => '', :mint_id => philadelphia_mint.id, :mint_grouping => "", :coin_id => morgan_silver_dollar.id, :number_minted => 8693556, :number_proof_minted => 650, :is_gold => false, :is_silver => true)
MintCoin.create(:year => 1891, :year_grouping => '', :mint_id => carson_city_mint.id, :mint_grouping => "", :coin_id => morgan_silver_dollar.id, :number_minted => 1618000, :number_proof_minted => 0, :is_gold => false, :is_silver => true)
MintCoin.create(:year => 1891, :year_grouping => '', :mint_id => new_orleans_mint.id, :mint_grouping => "", :coin_id => morgan_silver_dollar.id, :number_minted => 7954529, :number_proof_minted => 0, :is_gold => false, :is_silver => true)
MintCoin.create(:year => 1891, :year_grouping => '', :mint_id => san_francisco_mint.id, :mint_grouping => "", :coin_id => morgan_silver_dollar.id, :number_minted => 5296000, :number_proof_minted => 0, :is_gold => false, :is_silver => true)
MintCoin.create(:year => 1892, :year_grouping => '', :mint_id => philadelphia_mint.id, :mint_grouping => "", :coin_id => morgan_silver_dollar.id, :number_minted => 1036000, :number_proof_minted => 1245, :is_gold => false, :is_silver => true)
MintCoin.create(:year => 1892, :year_grouping => '', :mint_id => carson_city_mint.id, :mint_grouping => "", :coin_id => morgan_silver_dollar.id, :number_minted => 1352000, :number_proof_minted => 0, :is_gold => false, :is_silver => true)
MintCoin.create(:year => 1892, :year_grouping => '', :mint_id => new_orleans_mint.id, :mint_grouping => "", :coin_id => morgan_silver_dollar.id, :number_minted => 2744000, :number_proof_minted => 0, :is_gold => false, :is_silver => true)
MintCoin.create(:year => 1892, :year_grouping => '', :mint_id => san_francisco_mint.id, :mint_grouping => "", :coin_id => morgan_silver_dollar.id, :number_minted => 1200000, :number_proof_minted => 0, :is_gold => false, :is_silver => true)
MintCoin.create(:year => 1893, :year_grouping => '', :mint_id => philadelphia_mint.id, :mint_grouping => "", :coin_id => morgan_silver_dollar.id, :number_minted => 378000, :number_proof_minted => 792, :is_gold => false, :is_silver => true)
MintCoin.create(:year => 1893, :year_grouping => '', :mint_id => carson_city_mint.id, :mint_grouping => "", :coin_id => morgan_silver_dollar.id, :number_minted => 677000, :number_proof_minted => 0, :is_gold => false, :is_silver => true)
MintCoin.create(:year => 1893, :year_grouping => '', :mint_id => new_orleans_mint.id, :mint_grouping => "", :coin_id => morgan_silver_dollar.id, :number_minted => 300000, :number_proof_minted => 0, :is_gold => false, :is_silver => true)
MintCoin.create(:year => 1893, :year_grouping => '', :mint_id => san_francisco_mint.id, :mint_grouping => "", :coin_id => morgan_silver_dollar.id, :number_minted => 100000, :number_proof_minted => 0, :is_gold => false, :is_silver => true)
MintCoin.create(:year => 1894, :year_grouping => '', :mint_id => philadelphia_mint.id, :mint_grouping => "", :coin_id => morgan_silver_dollar.id, :number_minted => 110000, :number_proof_minted => 972, :is_gold => false, :is_silver => true)
MintCoin.create(:year => 1894, :year_grouping => '', :mint_id => new_orleans_mint.id, :mint_grouping => "", :coin_id => morgan_silver_dollar.id, :number_minted => 1723000, :number_proof_minted => 0, :is_gold => false, :is_silver => true)
MintCoin.create(:year => 1894, :year_grouping => '', :mint_id => san_francisco_mint.id, :mint_grouping => "", :coin_id => morgan_silver_dollar.id, :number_minted => 1260000, :number_proof_minted => 0, :is_gold => false, :is_silver => true)
MintCoin.create(:year => 1895, :year_grouping => '', :mint_id => philadelphia_mint.id, :mint_grouping => "", :coin_id => morgan_silver_dollar.id, :number_minted => 0, :number_proof_minted => 880, :is_gold => false, :is_silver => true)
MintCoin.create(:year => 1895, :year_grouping => '', :mint_id => new_orleans_mint.id, :mint_grouping => "", :coin_id => morgan_silver_dollar.id, :number_minted => 450000, :number_proof_minted => 0, :is_gold => false, :is_silver => true)
MintCoin.create(:year => 1895, :year_grouping => '', :mint_id => san_francisco_mint.id, :mint_grouping => "", :coin_id => morgan_silver_dollar.id, :number_minted => 400000, :number_proof_minted => 0, :is_gold => false, :is_silver => true)
MintCoin.create(:year => 1896, :year_grouping => '', :mint_id => philadelphia_mint.id, :mint_grouping => "", :coin_id => morgan_silver_dollar.id, :number_minted => 9976000, :number_proof_minted => 762, :is_gold => false, :is_silver => true)
MintCoin.create(:year => 1896, :year_grouping => '', :mint_id => new_orleans_mint.id, :mint_grouping => "", :coin_id => morgan_silver_dollar.id, :number_minted => 4900000, :number_proof_minted => 0, :is_gold => false, :is_silver => true)
MintCoin.create(:year => 1896, :year_grouping => '', :mint_id => san_francisco_mint.id, :mint_grouping => "", :coin_id => morgan_silver_dollar.id, :number_minted => 5000000, :number_proof_minted => 0, :is_gold => false, :is_silver => true)
MintCoin.create(:year => 1897, :year_grouping => '', :mint_id => philadelphia_mint.id, :mint_grouping => "", :coin_id => morgan_silver_dollar.id, :number_minted => 2822000, :number_proof_minted => 731, :is_gold => false, :is_silver => true)
MintCoin.create(:year => 1897, :year_grouping => '', :mint_id => new_orleans_mint.id, :mint_grouping => "", :coin_id => morgan_silver_dollar.id, :number_minted => 4004000, :number_proof_minted => 0, :is_gold => false, :is_silver => true)
MintCoin.create(:year => 1897, :year_grouping => '', :mint_id => san_francisco_mint.id, :mint_grouping => "", :coin_id => morgan_silver_dollar.id, :number_minted => 5825000, :number_proof_minted => 0, :is_gold => false, :is_silver => true)
MintCoin.create(:year => 1898, :year_grouping => '', :mint_id => philadelphia_mint.id, :mint_grouping => "", :coin_id => morgan_silver_dollar.id, :number_minted => 5884000, :number_proof_minted => 735, :is_gold => false, :is_silver => true)
MintCoin.create(:year => 1898, :year_grouping => '', :mint_id => new_orleans_mint.id, :mint_grouping => "", :coin_id => morgan_silver_dollar.id, :number_minted => 4440000, :number_proof_minted => 0, :is_gold => false, :is_silver => true)
MintCoin.create(:year => 1898, :year_grouping => '', :mint_id => san_francisco_mint.id, :mint_grouping => "", :coin_id => morgan_silver_dollar.id, :number_minted => 4102000, :number_proof_minted => 0, :is_gold => false, :is_silver => true)
MintCoin.create(:year => 1899, :year_grouping => '', :mint_id => philadelphia_mint.id, :mint_grouping => "", :coin_id => morgan_silver_dollar.id, :number_minted => 330000, :number_proof_minted => 846, :is_gold => false, :is_silver => true)
MintCoin.create(:year => 1899, :year_grouping => '', :mint_id => new_orleans_mint.id, :mint_grouping => "", :coin_id => morgan_silver_dollar.id, :number_minted => 12290000, :number_proof_minted => 0, :is_gold => false, :is_silver => true)
MintCoin.create(:year => 1899, :year_grouping => '', :mint_id => san_francisco_mint.id, :mint_grouping => "", :coin_id => morgan_silver_dollar.id, :number_minted => 2562000, :number_proof_minted => 0, :is_gold => false, :is_silver => true)
MintCoin.create(:year => 1900, :year_grouping => '', :mint_id => philadelphia_mint.id, :mint_grouping => "", :coin_id => morgan_silver_dollar.id, :number_minted => 8830000, :number_proof_minted => 912, :is_gold => false, :is_silver => true)
MintCoin.create(:year => 1900, :year_grouping => '', :mint_id => new_orleans_mint.id, :mint_grouping => "", :coin_id => morgan_silver_dollar.id, :number_minted => 12590000, :number_proof_minted => 0, :is_gold => false, :is_silver => true)
MintCoin.create(:year => 1900, :year_grouping => '', :mint_id => san_francisco_mint.id, :mint_grouping => "", :coin_id => morgan_silver_dollar.id, :number_minted => 3540000, :number_proof_minted => 0, :is_gold => false, :is_silver => true)
MintCoin.create(:year => 1901, :year_grouping => '', :mint_id => philadelphia_mint.id, :mint_grouping => "", :coin_id => morgan_silver_dollar.id, :number_minted => 6962000, :number_proof_minted => 813, :is_gold => false, :is_silver => true)
MintCoin.create(:year => 1901, :year_grouping => '', :mint_id => new_orleans_mint.id, :mint_grouping => "", :coin_id => morgan_silver_dollar.id, :number_minted => 13320000, :number_proof_minted => 0, :is_gold => false, :is_silver => true)
MintCoin.create(:year => 1901, :year_grouping => '', :mint_id => san_francisco_mint.id, :mint_grouping => "", :coin_id => morgan_silver_dollar.id, :number_minted => 2284000, :number_proof_minted => 0, :is_gold => false, :is_silver => true)
MintCoin.create(:year => 1902, :year_grouping => '', :mint_id => philadelphia_mint.id, :mint_grouping => "", :coin_id => morgan_silver_dollar.id, :number_minted => 7994000, :number_proof_minted => 777, :is_gold => false, :is_silver => true)
MintCoin.create(:year => 1902, :year_grouping => '', :mint_id => new_orleans_mint.id, :mint_grouping => "", :coin_id => morgan_silver_dollar.id, :number_minted => 8636000, :number_proof_minted => 0, :is_gold => false, :is_silver => true)
MintCoin.create(:year => 1902, :year_grouping => '', :mint_id => san_francisco_mint.id, :mint_grouping => "", :coin_id => morgan_silver_dollar.id, :number_minted => 1530000, :number_proof_minted => 0, :is_gold => false, :is_silver => true)
MintCoin.create(:year => 1903, :year_grouping => '', :mint_id => philadelphia_mint.id, :mint_grouping => "", :coin_id => morgan_silver_dollar.id, :number_minted => 4652000, :number_proof_minted => 755, :is_gold => false, :is_silver => true)
MintCoin.create(:year => 1903, :year_grouping => '', :mint_id => new_orleans_mint.id, :mint_grouping => "", :coin_id => morgan_silver_dollar.id, :number_minted => 4450000, :number_proof_minted => 0, :is_gold => false, :is_silver => true)
MintCoin.create(:year => 1903, :year_grouping => '', :mint_id => san_francisco_mint.id, :mint_grouping => "", :coin_id => morgan_silver_dollar.id, :number_minted => 1241000, :number_proof_minted => 0, :is_gold => false, :is_silver => true)
MintCoin.create(:year => 1904, :year_grouping => '', :mint_id => philadelphia_mint.id, :mint_grouping => "", :coin_id => morgan_silver_dollar.id, :number_minted => 2788000, :number_proof_minted => 650, :is_gold => false, :is_silver => true)
MintCoin.create(:year => 1904, :year_grouping => '', :mint_id => new_orleans_mint.id, :mint_grouping => "", :coin_id => morgan_silver_dollar.id, :number_minted => 3720000, :number_proof_minted => 0, :is_gold => false, :is_silver => true)
MintCoin.create(:year => 1904, :year_grouping => '', :mint_id => san_francisco_mint.id, :mint_grouping => "", :coin_id => morgan_silver_dollar.id, :number_minted => 2304000, :number_proof_minted => 0, :is_gold => false, :is_silver => true)
MintCoin.create(:year => 1921, :year_grouping => '', :mint_id => philadelphia_mint.id, :mint_grouping => "", :coin_id => morgan_silver_dollar.id, :number_minted => 44690000, :number_proof_minted => 0, :is_gold => false, :is_silver => true)
MintCoin.create(:year => 1921, :year_grouping => '', :mint_id => denver_mint.id, :mint_grouping => "", :coin_id => morgan_silver_dollar.id, :number_minted => 20345000, :number_proof_minted => 0, :is_gold => false, :is_silver => true)
MintCoin.create(:year => 1921, :year_grouping => '', :mint_id => san_francisco_mint.id, :mint_grouping => "", :coin_id => morgan_silver_dollar.id, :number_minted => 21695000, :number_proof_minted => 0, :is_gold => false, :is_silver => true)
           

#### Peace

MintCoin.create(:year => 1921, :year_grouping => '', :mint_id => philadelphia_mint.id, :mint_grouping => '', :coin_id => peace_silver_dollar.id, :number_minted => 1006473, :number_proof_minted => 0, :is_gold => false, :is_silver => true)
MintCoin.create(:year => 1922, :year_grouping => '', :mint_id => philadelphia_mint.id, :mint_grouping => '', :coin_id => peace_silver_dollar.id, :number_minted => 51737000, :number_proof_minted => 0, :is_gold => false, :is_silver => true)
MintCoin.create(:year => 1922, :year_grouping => '', :mint_id => denver_mint.id, :mint_grouping => '', :coin_id => peace_silver_dollar.id, :number_minted => 15063000, :number_proof_minted => 0, :is_gold => false, :is_silver => true)
MintCoin.create(:year => 1922, :year_grouping => '', :mint_id => san_francisco_mint.id, :mint_grouping => '', :coin_id => peace_silver_dollar.id, :number_minted => 17475000, :number_proof_minted => 0, :is_gold => false, :is_silver => true)
MintCoin.create(:year => 1923, :year_grouping => '', :mint_id => philadelphia_mint.id, :mint_grouping => '', :coin_id => peace_silver_dollar.id, :number_minted => 30800000, :number_proof_minted => 0, :is_gold => false, :is_silver => true)
MintCoin.create(:year => 1923, :year_grouping => '', :mint_id => denver_mint.id, :mint_grouping => '', :coin_id => peace_silver_dollar.id, :number_minted => 6811000, :number_proof_minted => 0, :is_gold => false, :is_silver => true)
MintCoin.create(:year => 1923, :year_grouping => '', :mint_id => san_francisco_mint.id, :mint_grouping => '', :coin_id => peace_silver_dollar.id, :number_minted => 19020000, :number_proof_minted => 0, :is_gold => false, :is_silver => true)
MintCoin.create(:year => 1924, :year_grouping => '', :mint_id => philadelphia_mint.id, :mint_grouping => '', :coin_id => peace_silver_dollar.id, :number_minted => 11911000, :number_proof_minted => 0, :is_gold => false, :is_silver => true)
MintCoin.create(:year => 1924, :year_grouping => '', :mint_id => san_francisco_mint.id, :mint_grouping => '', :coin_id => peace_silver_dollar.id, :number_minted => 1728000, :number_proof_minted => 0, :is_gold => false, :is_silver => true)
MintCoin.create(:year => 1925, :year_grouping => '', :mint_id => philadelphia_mint.id, :mint_grouping => '', :coin_id => peace_silver_dollar.id, :number_minted => 10198000, :number_proof_minted => 0, :is_gold => false, :is_silver => true)
MintCoin.create(:year => 1925, :year_grouping => '', :mint_id => san_francisco_mint.id, :mint_grouping => '', :coin_id => peace_silver_dollar.id, :number_minted => 1610000, :number_proof_minted => 0, :is_gold => false, :is_silver => true)
MintCoin.create(:year => 1926, :year_grouping => '', :mint_id => philadelphia_mint.id, :mint_grouping => '', :coin_id => peace_silver_dollar.id, :number_minted => 1939000, :number_proof_minted => 0, :is_gold => false, :is_silver => true)
MintCoin.create(:year => 1926, :year_grouping => '', :mint_id => denver_mint.id, :mint_grouping => '', :coin_id => peace_silver_dollar.id, :number_minted => 2348700, :number_proof_minted => 0, :is_gold => false, :is_silver => true)
MintCoin.create(:year => 1926, :year_grouping => '', :mint_id => san_francisco_mint.id, :mint_grouping => '', :coin_id => peace_silver_dollar.id, :number_minted => 6980000, :number_proof_minted => 0, :is_gold => false, :is_silver => true)
MintCoin.create(:year => 1927, :year_grouping => '', :mint_id => philadelphia_mint.id, :mint_grouping => '', :coin_id => peace_silver_dollar.id, :number_minted => 848000, :number_proof_minted => 0, :is_gold => false, :is_silver => true)
MintCoin.create(:year => 1927, :year_grouping => '', :mint_id => denver_mint.id, :mint_grouping => '', :coin_id => peace_silver_dollar.id, :number_minted => 1268900, :number_proof_minted => 0, :is_gold => false, :is_silver => true)
MintCoin.create(:year => 1927, :year_grouping => '', :mint_id => san_francisco_mint.id, :mint_grouping => '', :coin_id => peace_silver_dollar.id, :number_minted => 866000, :number_proof_minted => 0, :is_gold => false, :is_silver => true)
MintCoin.create(:year => 1928, :year_grouping => '', :mint_id => philadelphia_mint.id, :mint_grouping => '', :coin_id => peace_silver_dollar.id, :number_minted => 360649, :number_proof_minted => 0, :is_gold => false, :is_silver => true)
MintCoin.create(:year => 1928, :year_grouping => '', :mint_id => san_francisco_mint.id, :mint_grouping => '', :coin_id => peace_silver_dollar.id, :number_minted => 1632000, :number_proof_minted => 0, :is_gold => false, :is_silver => true)
MintCoin.create(:year => 1934, :year_grouping => '', :mint_id => philadelphia_mint.id, :mint_grouping => '', :coin_id => peace_silver_dollar.id, :number_minted => 954057, :number_proof_minted => 0, :is_gold => false, :is_silver => true)
MintCoin.create(:year => 1934, :year_grouping => '', :mint_id => denver_mint.id, :mint_grouping => '', :coin_id => peace_silver_dollar.id, :number_minted => 1569500, :number_proof_minted => 0, :is_gold => false, :is_silver => true)
MintCoin.create(:year => 1934, :year_grouping => '', :mint_id => san_francisco_mint.id, :mint_grouping => '', :coin_id => peace_silver_dollar.id, :number_minted => 1011000, :number_proof_minted => 0, :is_gold => false, :is_silver => true)
MintCoin.create(:year => 1935, :year_grouping => '', :mint_id => philadelphia_mint.id, :mint_grouping => '', :coin_id => peace_silver_dollar.id, :number_minted => 1576000, :number_proof_minted => 0, :is_gold => false, :is_silver => true)
MintCoin.create(:year => 1935, :year_grouping => '', :mint_id => san_francisco_mint.id, :mint_grouping => '', :coin_id => peace_silver_dollar.id, :number_minted => 1964000, :number_proof_minted => 0, :is_gold => false, :is_silver => true)