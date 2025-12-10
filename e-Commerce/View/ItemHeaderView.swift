//
//  ItemHeaderView.swift
//  e-Commerce
//
//  Created by Macos on 10/12/2025.
//

import SwiftUI

struct ItemHeaderView: View {
    @EnvironmentObject var vm : ChairViewModel
    
    var body: some View {
        HStack{
            VStack(alignment: .leading, spacing: 0){
                Text("New Arrival").font(.system(size: 33,weight: .bold,design: .serif)
                    
                                         
                ).foregroundColor(Color.cyan)
                    .padding(.leading)
                
                Text(vm.Chairs.first!.description).font(.system(size: 16,weight: .light,design: .default))
                    .padding(.leading)
                    .padding(.top,5)
                Text("Best Selling").font(.system(size: 18,weight: .bold,design: .serif)
                    
                                         
                ).foregroundColor(Color.mint)
                    .padding(.leading)
                    .padding(.top,5)
                                                        
            }
            Image(vm.Chairs.first!.image).resizable()
                .frame(width: 150,height: 150,alignment: .center)
                .scaledToFit()
        }.padding(.vertical).frame(width: UIScreen.main.bounds.width/1.1,alignment: .center).background(Color.white.cornerRadius(12).shadow(color:.blue,radius: 20,x: 0,y: 0))
    }
}

struct ItemHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        ItemHeaderView().environmentObject(ChairViewModel())
    }
}
