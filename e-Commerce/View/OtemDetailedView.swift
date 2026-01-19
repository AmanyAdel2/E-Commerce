//
//  OtemDetailedView.swift
//  e-Commerce
//
//  Created by Macos on 19/01/2026.
//

import SwiftUI

struct OtemDetailedView: View {
    @EnvironmentObject var vm : ChairViewModel
    @State var quantity : Int = 0
    var body: some View {
        VStack(alignment: .leading,spacing: 0) {
            Image(vm.Chairs.first!.image).resizable()
                .scaledToFill()
                .frame(height: UIScreen.main.bounds.height/3.5,alignment: .center)
            Text(vm.Chairs.first!.brand).font(.system(size: 35,weight: .semibold,design: .serif))
                .padding(.top,40)
                .padding(.leading,20)
            Text("$"+String(vm.Chairs.first!.Price))
                .font(.system(size: 30,weight: .bold,design: .monospaced))
                .padding(.top,30)
                .padding(.leading,20)
                .foregroundColor(.blue)
            
            
            
            HStack{
                Text("COLOR : ")
                    .font(.system(size: 30,weight: .bold,design: .serif))
                Spacer()
                
                Text("Quantity : ")
                    .font(.system(size: 30,weight: .bold,design: .serif)).padding(.trailing,5)
            }.padding(.top,30)
                .padding(.leading,20)
            
            
            HStack(spacing: 20){
                Circle().fill(.gray)
                    .frame(width: 30,height: 30,alignment: .center)
                Circle().fill(.red)
                    .frame(width: 30,height: 30,alignment: .center)
            
                Circle().fill(.blue)
                    .frame(width: 30,height: 30,alignment: .center)
                Circle().fill(.black)
                    .frame(width: 30,height: 30,alignment: .center)
               Spacer()
                Button {
                    quantity=quantity-1
                } label: {
                    Text("-").font(.system(size: 40,weight: .semibold,design: .default))
                        .frame(width: 50,height: 50,alignment: .center)
                        .background(.gray.opacity(0.5))
                        .cornerRadius(20)
                        .foregroundColor(.black)
                }
                Text(String(quantity))
                    .font(.system(size: 25,weight: .semibold,design: .default))
                    .frame(width: 30,height:30,alignment: .center)
                
                
                
                Button {
                    quantity=quantity+1
                } label: {
                    Text("+").font(.system(size: 40,weight: .semibold,design: .default))
                        .frame(width: 50,height: 50,alignment: .center)
                        .background(.gray.opacity(0.5))
                        .cornerRadius(20)
                        .foregroundColor(.black)
                }
                
            }.padding(.top,30)
            
            Text(String(vm.Chairs.first!.description)).font(.system(size: 18,weight: .medium,design: .serif))
                .padding()
                .padding(.top,10)
            
            Spacer()
            
            
            Button {
                
            } label: {
                Text("Add To Cart")
                    .font(.system(size: 35,weight: .medium,design: .serif))
                    .frame(width: UIScreen.main.bounds.width,height:70,alignment: .center)
                    .background(.blue)
                    .cornerRadius(20)
                    .foregroundColor(.white)
            }.padding(.bottom,10)

                
                
            
            
            
            
            
        }.edgesIgnoringSafeArea(.bottom)
        
    }
}

struct OtemDetailedView_Previews: PreviewProvider {
    static var previews: some View {
        OtemDetailedView().environmentObject(ChairViewModel())
    }
}
