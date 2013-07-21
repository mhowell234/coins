select c.name as coin, cv.name as denomination, cy.year, m.name as mint, cy.additionalInfo as yearGrouping, mc.additionalInfo as mintGrouping, 
oct.fileName, oct.caption
from OurCoinDB.OurCoinThumbnail oct, OurCoinDB.OurCoin oc, MintCoin mc, Mint m, CoinYear cy, Coin c, CoinValue cv
where oc.mcid=mc.mcid and mc.mid=m.mid and mc.cyid=cy.cyid and cy.cid=c.cid and c.cvid=cv.cvid and oct.ocid=oc.ocid
order by cv.value desc, c.cid asc, cy.year asc, m.alwaysPresent asc, m.symbol asc;
