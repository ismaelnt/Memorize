import SwiftUI

class MemorizeViewModel {
    private var model: MemorizeModel<String> = MemorizeViewModel.createMemoryGame()
    
    static func createMemoryGame() -> MemorizeModel<String> {
        let emojis = ["👻", "🎃", "🕷️"]
        return MemorizeModel<String>(numberOfPairsOfCards: emojis.count) {pairIndex in
            emojis[pairIndex]
        }
    }
    
    var cards: Array<MemorizeModel<String>.Card> {
        model.cards
    }
    
    func choose(card: MemorizeModel<String>.Card) {
        model.choose(card: card)
    }
}
