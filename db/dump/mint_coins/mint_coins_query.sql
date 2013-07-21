select c.name, cv.name, cy.year, cy.additionalInfo, m.name, m.symbol, mc.additionalInfo, mc.numberMinted, mc.proofMinted, cy.isGold, cy.isSilver from CoinValue cv, Coin c, CoinYear cy, MintCoin mc, Mint m where cv.cvid=c.cvid and cy.cid=c.cid and mc.cyid=cy.cyid and mc.mid=m.mid order by cv.value desc, c.cid asc, cy.year asc;

