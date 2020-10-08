//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Winnie Fong on 9/12/20.
//  Copyright © 2020 Winnie Fong. All rights reserved.
//

import SwiftUI

class EmojiMemoryGame: ObservableObject {
    @Published private var model: MemoryGame<String> = EmojiMemoryGame.createMemoryGame()
    
    static func createMemoryGame() -> MemoryGame<String> {
        let emojis = ["👻","🎃", "🕷", "💀", "🕸"]
        let randomNumber = Int.random(in: 2..<6)
        return MemoryGame<String>(numberOfPairsOfCards: randomNumber) { pairIndex in return emojis[pairIndex] }
    }
        
    // MARK: - Access to the Model
    var cards: Array<MemoryGame<String>.Card> {
        model.cards
    }
    
    // MARK: - Intent(s)
    func choose(card: MemoryGame<String>.Card) {
        model.choose(card: card)
    }
}
