//
//  FirebaseChatApp.swift
//  FirebaseChat
//
//  Created by Siran Li on 12/10/24.
//

import SwiftUI
import Firebase

@main
struct FirebaseChatApp: App {
    
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
