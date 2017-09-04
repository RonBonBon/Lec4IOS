//
//  BlackJackDeck.swift
//  Lec4
//
//  Created by hackeru on 9 Elul 5777.
//  Copyright © 5777 arichafamily.com. All rights reserved.
//

import Foundation

struct BlackJackDeck {
    var cards:[BlackJackCard] = []
    
    init() {
        for s in 0...3{
            for r in 0...13{
                let suit = Suit(rawValue: s)!
                let rank = Rank(rawValue: r)!
                let card = BlackJackCard(rank: rank, suit: suit)
                cards.append(card)
                //cards.append(BlackJackCard(rank: Rank(rawValue: r)!, suit: Suit(rawValue: s)!))
            }
        }
    }
    
    mutating func dealCard() -> BlackJackCard{
        return cards.removeFirst()
    }
    
    mutating func shuffle(){
        let max = cards.count
        let r = arc4random_uniform(max)
    }
}
