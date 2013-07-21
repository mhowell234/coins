select c.name, cv.name, cy.year, cy.additionalInfo, m.name, m.symbol, mc.additionalInfo, srs.title, mcv.value from CoinValue cv, Coin c, CoinYear cy, MintCoin mc, Mint m, MintCoinValue mcv, CommonDB.SheldonRatingScale srs  where cv.cvid=c.cvid and cy.cid=c.cid and mc.cyid=cy.cyid and mc.mid=m.mid and mcv.mcid=mc.mcid and mcv.srsid=srs.srsid order by cv.value desc, c.cid asc, cy.year asc, m.symbol asc, mc.additionalInfo asc, srs.value asc;
