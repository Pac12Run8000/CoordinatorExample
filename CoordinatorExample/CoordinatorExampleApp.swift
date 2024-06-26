//
//  CoordinatorExampleApp.swift
//  CoordinatorExample
//
//  Created by Norbert Grover on 6/26/24.
//

import SwiftUI

@main
struct CoordinatorExampleApp: App {
    @StateObject private var appCoordinator = AppCoordinator()
       
       var body: some Scene {
           WindowGroup {
               if let currentView = appCoordinator.currentView {
                   currentView
                       .environmentObject(appCoordinator)
               }
           }
       }
}
