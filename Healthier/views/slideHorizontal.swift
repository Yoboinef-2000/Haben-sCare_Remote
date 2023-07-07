//
//  slideHorizontal.swift
//  Healthier
//
//  Created by Joel on 28/06/2023.
//

import SwiftUI

struct slideHorizontal: View {
    @State var img : [String] = ["Cat1","Cat3","Cat5"]
    var body: some View {
        NavigationView{
        ZStack{
            ScrollView(.horizontal, showsIndicators: false){
            
            HStack(spacing: 100) {
            ForEach(0...4, id: \.self){ index in //The four was changed from three
            imageCrusel(index: index)
            }
         }.padding(30)
       }
     }
        .navigationBarTitle(Text("NCDs"),displayMode: .large)
        }
    }
}

struct slideHorizontal_Previews: PreviewProvider {
    static var previews: some View {
        slideHorizontal()
    }
}
struct imageCrusel : View{
    private func getScale(proxy: GeometryProxy) -> CGFloat {
        var scale: CGFloat = 1

        let x = proxy.frame(in: .global).minX

        let diff = abs(x - 32)
        if diff < 100 {
            scale = 1 + (100 - diff) / 500
        }

        return scale
    }

    @State var catsImage: [String] = ["istockphoto-heart2",
                                      "istockphoto-diabites",
                                      "istockphoto-cardioVescular",
                                      "istockphoto-cancer1",
                                      "Obesity 123" //newly added
    ]
    
    @State var texts: [String] = ["Cardiovascular diseases",
                                  "Diabetes",
                                  "Chronic Respiratory diseases",
                                  "Cancer",
                                  "Obesity"]//Obesity is newly added
    var index: Int
@State var showFull = false
    var body: some View{
        Button(action: {
            showFull.toggle()

        }, label: {

            GeometryReader { proxy in
                let scale = getScale(proxy: proxy)
                ZStack{
                Image(catsImage[index])
                .resizable()
                .scaledToFill()
                .frame(width: UIScreen.main.bounds.width / 1.8)
                .cornerRadius(15)
                .overlay(
                    RoundedRectangle(cornerRadius: 5).stroke(lineWidth: 0.5)
                )
                .clipped()
                .cornerRadius(5)
                .shadow(radius: 5)
                .scaleEffect(CGSize(width: scale, height: scale))
                .animation(.easeOut(duration: 0.5))
                    VStack{
                        Spacer()
                        HStack{
                        Text(texts[index]).bold()
                    .foregroundColor(.white)
                    .font(.title2)
                        }
                        .padding(10)
                        .background(Color.black.opacity(0.5))
                        .cornerRadius(5)
                        
                    }
                }

            }.frame(width: UIScreen.main.bounds.width / 2.5 , height: UIScreen.main.bounds.height / 1.8)
            
        }).sheet(isPresented: $showFull, content: {
            if index == 0{
                cardioVascular()
            } else if index == 1{
                diabities()
            } else if index == 2{
                chronic()
            } else if index == 3{
                cancer()
            } else if index == 4{ //new
                Obesity() //new
            }
        })
    }
}
