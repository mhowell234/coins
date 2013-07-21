select c.name as coin, cv.name as denomination, cy.year, m.name as mint, cy.additionalInfo as yearGrouping, mc.additionalInfo as mintGrouping, pm.name as metal, cmc.percentage 
from CoinMetalComposition cmc, MintCoinAttribute mca, MintCoin mc, Mint m, CoinYear cy, Coin c, CoinValue cv, CommonDB.PreciousMetal pm
where cmc.mcaid=mca.mcaid and mca.mcid=mc.mcid and mc.mid=m.mid and mc.cyid=cy.cyid and cy.cid=c.cid and c.cvid=cv.cvid and cmc.pmid=pm.pmid
order by cv.value desc, c.startYear asc, cy.year, m.alwaysPresent, m.symbol;
