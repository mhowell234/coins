
file = open('mint_coin_values_output.psv', 'r')

data = []

cols = ['coin', 'denomination', 'year', 'year_grouping', 'mint', 'symbol', 'mint_grouping', 'rating', 'value']


for line in file:
  line = line.replace('\n','')

  tokens = line.split('|')

  coin = {}

  i = 0
  for token in tokens:
    coin[cols[i]] = token
    i = i + 1

  data.append(coin)

file.close()

vals = {}

mappingValue = {'PO-1':'po1',
'FR-2':'fr2',
'AG-3':'ag3',
'G-4':'g4',
'G-6':'g6',
'VG-8':'vg8',
'VG-10':'vg10', 
'F-12':'f12', 
'F-15':'f15', 
'VF-20':'vf20', 
'VF-25':'vf25', 
'VF-30':'vf30', 
'VF-35':'vf35', 
'EF-40':'ef40', 
'EF-45':'ef45', 
'EF-45+':'ef451', 
'AU-50':'au50', 
'AU-50+':'au501', 
'AU-53':'au53', 
'AU-53+':'au531', 
'AU-55':'au55', 
'AU-55+':'au551', 
'AU-58':'au58', 
'AU-58+':'au581', 
'MS-60':'ms60', 
'MS-61':'ms61', 
'MS-62':'ms62', 
'MS-62+':'ms621', 
'MS-63':'ms63', 
'MS-63+':'ms631', 
'MS-64':'ms64', 
'MS-64+':'ms641', 
'MS-65':'ms65', 
'MS-65+':'ms651', 
'MS-66':'ms66', 
'MS-66+':'ms661', 
'MS-67':'ms67', 
'MS-67+':'ms671', 
'MS-68':'ms68', 
'MS-68+':'ms681', 
'MS-69':'ms69', 
'MS-70':'ms70', 
'PF-60':'pf60', 
'PF-61':'pf61', 
'PF-62':'pf62', 
'PF-62+':'pf621', 
'PF-63':'pf63', 
'PF-63+':'pf631', 
'PF-64':'pf64', 
'PF-64+':'pf641', 
'PF-65':'pf65', 
'PF-65+':'pf651', 
'PF-66':'pf66', 
'PF-66+':'pf661', 
'PF-67':'pf67', 
'PF-67+':'pf671', 
'PF-68':'pf68', 
'PF-68+':'pf681', 
'PF-69':'pf69', 
'PF-70':'pf70', 
}


newFile = open('mint_coin_values.rb', 'w')

for coin in data:
  c = coin['coin'].lower().replace(' ', '_').replace('-', '_').replace('.','').replace('(','_').replace(')','_').replace("'", '').replace(',','')
  cv = coin['denomination'].lower().replace(' ', '_').replace('-', '_').replace('.','')
  y = coin['year']
  yg = coin['year_grouping'].lower().replace(' ', '_').replace('-','_').replace('(','_').replace(')','_').replace("'",'').replace('"','').replace('.','').replace(',','')
  if yg != '': show_yg = '__'
  else: show_yg = ''

  m = coin['symbol'].upper()
  mg = coin['mint_grouping'].lower().replace(' ','_').replace('-','_').replace('(','_').replace(')','_').replace("'",'').replace('"','').replace('.','').replace('*','').replace('/','_')
  if mg != '': show_mg = '__'
  else: show_mg = ''

  mint_name = coin['mint'].lower().replace(" ",'_')

  rating = coin['rating']
  rating_value = coin['value']

  rating_opt = mappingValue[rating]

  line = 'Valuation.create(:mint_coin_id => %s_%s_%s%s%s%s%s%s.id, :year => 2013, :rating_agency => blue_book.id, :sheldon_rating_scale_id => %s.id, :value => %s)' % (c, cv, y, m, show_yg, yg, show_mg, mg, rating_opt, rating_value)

  for l in line:
    vals[l] = '' 
  newFile.write('%s\n' % line) 
 

newFile.close()

k = vals.keys()
k.sort()
for a in k:
  print a
