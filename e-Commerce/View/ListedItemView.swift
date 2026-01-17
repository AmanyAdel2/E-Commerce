//
//  ListedItemView.swift
//  e-Commerce
//
//  Created by Macos on 08/12/2025.
//

import SwiftUI

struct ListedItemView: View {
    @State var indexer : Int = 0
    @EnvironmentObject var vm : ChairViewModel
    @State var timer = Timer.TimerPublisher(interval: 2, runLoop: .main, mode: .common).autoconnect()
    var body: some View {
        ZStack{
            HStack{
                
                Color("secondBackground").frame(width: UIScreen.main.bounds.width/3.5,alignment: .center)
                Color("firstBackground")
            }
            ScrollView(.vertical,showsIndicators: false){
                headerView
                Text("Trending").font(.system(size: 26,weight: .bold,design: .serif)).frame(maxWidth: .infinity,alignment: .leading).padding(.leading)
                trendingItem
                Text("Comming Soon").font(.system(size: 26,weight: .bold,design: .serif)).frame(maxWidth: .infinity,alignment: .leading).padding(.leading)
                ComingSoonItem
                
                
                
                    
                
                
            }
        }.ignoresSafeArea(.all)
    }
}

struct ListedItemView_Previews: PreviewProvider {
    static var previews: some View {
        ListedItemView().environmentObject(ChairViewModel())
    }
}
extension ListedItemView {
    var headerView : some View {
        TabView(selection: $indexer) {
            ItemHeaderView( chair: vm.Chairs[indexer]).tag(0)
            ItemHeaderView(chair: vm.Chairs[indexer]).tag(1)
            ItemHeaderView(chair: vm.Chairs[indexer]).tag(2)
            ItemHeaderView(chair: vm.Chairs[indexer]).tag(3)
            ItemHeaderView(chair: vm.Chairs[indexer]).tag(4)
            ItemHeaderView(chair: vm.Chairs[indexer]).tag(5)
        }.tabViewStyle(PageTabViewStyle()).frame(height: UIScreen.main.bounds.height/2.7,alignment: .center).onReceive(timer) { timerCount in
            withAnimation(.easeInOut(duration: 1)) {
                if indexer == 5 {
                    indexer = 0
                }else{
                    indexer = indexer + 1
                    
                }
                
            }
        }
    }
}
extension ListedItemView {
    var trendingItem : some View {
        ScrollView(.horizontal,showsIndicators: true){
            HStack{
                ForEach(vm.Chairs) { chair in
                    if chair.stateOnMarket == "trending"{
                        ItemCardView(chair: chair).padding()
                    }
                    
                }
            }
        }
    }
}
extension ListedItemView {
    var ComingSoonItem : some View {
        ScrollView(.horizontal,showsIndicators: true){
            HStack{
                ForEach(vm.Chairs) { chair in
                    if chair.stateOnMarket == "comming soon"{
                        ItemCardView(chair: chair).padding()
                    }
                    
                }
            }
        }
    }
}
