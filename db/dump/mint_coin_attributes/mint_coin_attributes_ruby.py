
file = open('mint_coin_attributes_output.psv', 'r')

data = []

cols = ['coin', 'denomination', 'year', 'mint', 'year_grouping', 'mint_grouping', 'weight']

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

mint_mapping = {'philadelphia':'P', 'denver':'D', 'dahlonega':'D', 'carson city':'CC', 'new orleans':'O', 'west point':'W', 'charlotte':'C', 'san francisco':'S'}

newFile = open('mint_coin_attributes.rb', 'w')

for coin in data:
  c = coin['coin'].lower().replace(' ', '_').replace('-', '_').replace('.','').replace('(','_').replace(')','_').replace("'", '').replace(',','')
  cv = coin['denomination'].lower().replace(' ', '_').replace('-', '_').replace('.','')
  y = coin['year']
  yg = coin['year_grouping'].lower().replace(' ', '_').replace('-','_').replace('(','_').replace(')','_').replace("'",'').replace('"','').replace('.','').replace(',','')
  if yg != '': show_yg = '__'
  else: show_yg = ''

  m = mint_mapping[coin['mint'].lower()]
  mg = coin['mint_grouping'].lower().replace(' ','_').replace('-','_').replace('(','_').replace(')','_').replace("'",'').replace('"','').replace('.','').replace('*','').replace('/','_')
  if mg != '': show_mg = '__'
  else: show_mg = ''

  mint_name = coin['mint'].lower().replace(" ",'_')

  weight = coin['weight']

  line = 'MintCoinAttribute.create(:mint_coin_id => %s_%s_%s%s%s%s%s%s.id, :attribute_type_id => weight_attrib_type.id, :value => %s)' % (c, cv, y, m, show_yg, yg, show_mg, mg, weight)


  for l in line:
    vals[l] = '' 
  newFile.write('%s\n' % line) 
 

newFile.close()

k = vals.keys()
k.sort()
for a in k:
  print a
