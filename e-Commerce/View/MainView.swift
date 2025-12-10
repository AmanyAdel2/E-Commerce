//
//  MainView.swift
//  e-Commerce
//
//  Created by Macos on 08/12/2025.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView{
            ListedItemView()
                .tabItem{
                    Image(systemName: "house.circle.fill")
            }
            CartItemView().tabItem(){
                Image(systemName: "cart.circle.fill")
            }
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
