//
//  e_CommerceApp.swift
//  e-Commerce
//
//  Created by Macos on 08/12/2025.
//

import SwiftUI

@main
struct e_CommerceApp: App {
    @StateObject var vm = ChairViewModel()
    var body: some Scene {
        WindowGroup {
            MainView().environmentObject(vm)
        }
    }
}
