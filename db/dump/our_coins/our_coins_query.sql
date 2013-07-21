select c.name as coin, cv.name as denomination, cy.year, m.name as mint, cy.additionalInfo as yearGrouping, mc.additionalInfo as mintGrouping, oc.pricePaid, co.name, oc.originDate, oc.isGold, oc.isSilver, oc.isProof 
from OurCoinDB.OurCoin oc, MintCoin mc, Mint m, CoinYear cy, Coin c, CoinValue cv, CommonDB.CoinOrigin co
where oc.mcid=mc.mcid and mc.mid=m.mid and mc.cyid=cy.cyid and cy.cid=c.cid and c.cvid=cv.cvid and co.coid=oc.origin
order by cv.value desc, c.cid asc, cy.year asc, m.alwaysPresent asc, m.symbol asc;
