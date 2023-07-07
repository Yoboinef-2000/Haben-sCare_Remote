//
//  splashView.swift
//  Healthier
//
//  Created by Joel on 04/07/2023.
//

import SwiftUI

struct splashView: View {
    @State var isActive = false
    var body: some View {
        VStack{
        if isActive{
            ContentView()
        }else{
        ZStack{
            VStack{
            Image("splash")
                .resizable()
                .scaledToFit()
                Text("Haben's Care").bold().font(.largeTitle)
            }
        }
        }
        }.onAppear{
            DispatchQueue.main.asyncAfter(deadline: .now() + 2.5){
                withAnimation{
                    self.isActive =  true
                   
                }
            }
        }
    }
}

struct splashView_Previews: PreviewProvider {
    static var previews: some View {
        splashView()
    }
}
