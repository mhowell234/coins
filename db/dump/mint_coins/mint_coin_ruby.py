
file = open('mint_coins_output.psv', 'r')

data = []

cols = ['coin', 'denomination', 'year', 'year_grouping', 'mint', 'symbol', 'mint_grouping', 'number_minted', 'number_proof_minted', 'is_gold', 'is_silver']


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

newFile = open('mint_coins.rb', 'w')

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

  nm = coin['number_minted']
  if nm == 'NULL': nm = 0

  npm = coin['number_proof_minted']
  if npm == 'NULL': npm = 0

  gold = coin['is_gold']
  if str(gold) == '0': gold = 'true'
  else: gold = 'false'
  

  silver = coin['is_silver']
  if str(silver) == '0': silver = 'true'
  else: silver = 'false'
 
  line = '%s_%s_%s%s%s%s%s%s = MintCoin.create(:year => %s, :year_grouping => "%s", :mint_id => %s_mint.id, :mint_grouping => "%s", :coin_id => %s_%s.id, :number_minted => %s, :number_proof_minted => %s, :is_gold => %s, :is_silver => %s)' % (c,cv,y,m,show_yg,yg,show_mg,mg, coin['year'], coin['year_grouping'], mint_name, coin['mint_grouping'], c, cv, nm, npm, gold, silver)

  for l in line:
    vals[l] = '' 
  newFile.write('%s\n' % line) 
 

newFile.close()

k = vals.keys()
k.sort()
for a in k:
  print a
