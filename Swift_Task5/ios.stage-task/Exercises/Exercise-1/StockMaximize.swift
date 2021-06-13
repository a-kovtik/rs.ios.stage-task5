import Foundation

class StockMaximize {

    func countProfit(prices: [Int]) -> Int {
        var profit = 0
                
        for (index, currentPrice) in prices.enumerated() {
            if let bestDayPrice = prices.dropFirst(index + 1).max() {
                if currentPrice < bestDayPrice {
                    profit += bestDayPrice - currentPrice
                }
            }
        }
        return profit
    }
}
