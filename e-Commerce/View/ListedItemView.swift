//
//  ListedItemView.swift
//  e-Commerce
//
//  Created by Macos on 08/12/2025.
//

import SwiftUI

struct ListedItemView: View {
    var body: some View {
        ZStack{
            HStack{
                
                Color("secondBackground").frame(width: UIScreen.main.bounds.width/3.5,alignment: .center)
                Color("firstBackground")
            }
            ScrollView(.vertical,showsIndicators: false){
                
            }
        }.ignoresSafeArea(.all)
    }
}

struct ListedItemView_Previews: PreviewProvider {
    static var previews: some View {
        ListedItemView()
    }
}
