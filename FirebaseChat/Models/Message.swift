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

extension Message {
    static var mockData: [Message] {
        return [
            Message(id: "1", text: "Hello!", received: true, timeStamp: Date(timeIntervalSinceNow: -3600)),
            Message(id: "2", text: "How are you?", received: false, timeStamp: Date(timeIntervalSinceNow: -1800)),
            Message(id: "3", text: "I'm good, thanks!", received: true, timeStamp: Date(timeIntervalSinceNow: -900)),
            Message(id: "4", text: "What's up?", received: false, timeStamp: Date(timeIntervalSinceNow: -300)),
            Message(id: "5", text: "Not much!", received: true, timeStamp: Date()),
            Message(id: "5", text: "Not much!", received: true, timeStamp: Date()),
            Message(id: "5", text: "Not much!", received: true, timeStamp: Date()),
            Message(id: "5", text: "Not much!", received: true, timeStamp: Date()),
            Message(id: "5", text: "Not much!", received: true, timeStamp: Date()),
            Message(id: "5", text: "Not much!", received: true, timeStamp: Date()),
            Message(id: "5", text: "Not much!", received: true, timeStamp: Date()),
            Message(id: "5", text: "Not much!", received: true, timeStamp: Date()),
            Message(id: "5", text: "Not much!", received: true, timeStamp: Date()),
            Message(id: "5", text: "Not much!", received: true, timeStamp: Date())
        ]
    }
}
