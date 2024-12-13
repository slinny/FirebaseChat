//
//  Message.swift
//  FirebaseChat
//
//  Created by Siran Li on 12/13/24.
//

import Foundation

struct Message: Identifiable, Codable {
    var id: String
    var text: String
    var received: Bool
    var timeStamp: Date
}
