//
//  demoApp.swift
//  demo
//
//  Created by Sorin Visan on 17/08/2020.
//

import SwiftUI
import Firebase

@main
struct demoApp: App {
    
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
