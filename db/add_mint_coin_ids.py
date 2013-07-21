

file = open('seeds_test.rb', 'r')

newFile = 'seeds_test2.rb'

startLine = '# Mint Coins'
endLine = '# Mint Coin Attributes'
inStart = None
shouldBeDone = None


def createName(coin, mint, mintGrouping, year, yearGrouping):
    
	name = '%s%s__%s%s__%s' % (coin, mint, mintGrouping, year, yearGrouping)
	
	return name


def tokenize(line):
  line = line.replace('MintCoin.create(','')
  line = line[:-1]

  tokens = line.split(' :')
  dict = {}
  
  for token in tokens:
    if token.startswith('year_grouping =>'):
      token = token.replace('year_grouping =>', '')
      token = token.strip()
      dict['year_grouping'] = token[1:-2]
    
  return dict
	

def getMint(line):
  return None

def getMintGrouping(line):
  return None

def getYear(line):
  return None

def getYearGrouping(line):
  return None
  
def getCoin(line):
  return None
  
  
data = []

for line in file:
  if shouldBeDone:
    break
    
  line = line.replace('\n','')
  
  noSpacesLine = line.strip(' ')
  
  if not inStart:
    if not noSpacesLine == startLine:
      continue
    
    inStart = True
    continue
    
  if noSpacesLine == endLine:
    inStart = False
    shouldBeDone = True
    continue

  if noSpacesLine == '#': 
    data.append(line)
    continue
  if noSpacesLine == '':
    data.append('')
    continue
            
  tokens = tokenize(line)
  data.append('%s' % (tokens))
  continue
  
  mint = getMint(noSpacesLine)
  mintGrouping = getMintGrouping(noSpacesLine)
  coin = getCoin(noSpacesLine)
  year = getYear(noSpacesLine)
  yearGrouping = getYearGrouping(noSpacesLine)
  newName = createName(coin, mint, minGrouping, year, yearGrouping)    
  
  data.append('%s = %s' % (newName, noSpacesLine))
  
  
file.close()

allData = '\n'.join(data)
nFile = open(newFile,'w')
nFile.write(allData)
nFile.close()