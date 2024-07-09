//
//  AccountH.swift
//  JustSwiftUIReview
//
//  Created by Samandar on 06/06/24.
//

import Foundation

class AccoutnH: Codable {
    
    var holderName: String
    var cardName: String
    var accountBalance: String
    var spendingLimit: String
    
    init(holderName: String, cardName: String, accountBalance: String, spendingLimit: String) {
        self.holderName = holderName
        self.cardName = cardName
        self.accountBalance = accountBalance
        self.spendingLimit = spendingLimit
    }
    
}
