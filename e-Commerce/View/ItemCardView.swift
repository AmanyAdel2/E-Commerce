//
//  ItemCardView.swift
//  e-Commerce
//
//  Created by Macos on 18/01/2026.
//

import SwiftUI

struct ItemCardView: View {
    @EnvironmentObject var vm : ChairViewModel
    let chair : chairModel
    var body: some View {
        VStack(spacing: 0) {
            Image(chair.image).resizable()
                .scaledToFill().frame(width: 120,height: 100,alignment: .center)
            Text(chair.brand).font(.title3)
                .fontWeight(.semibold)
            Text(chair.stateOnMarket).font(.headline)
                .padding(.top,5)
                
            
            Text("$"+String(chair.Price))
                .font(.title2)
                .fontWeight(.bold)
                .foregroundColor(.blue)
                .padding(.vertical)
        }.frame(width: 200,height: 300,alignment: .center)
            .background(Color.white.cornerRadius(20).shadow(color: .blue.opacity(0.5),radius: 15,x: 0,y: 0))
    }
}

//struct ItemCardView_Previews: PreviewProvider {
//    static var previews: some View {
//        ItemCardView().environmentObject(ChairViewModel())
//    }
//}
