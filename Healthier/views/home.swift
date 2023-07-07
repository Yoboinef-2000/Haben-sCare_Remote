//
//  home.swift
//  Healthier
//
//  Created by Joel on 28/06/2023.
//

import SwiftUI

struct home: View {
    @State var selected = 0
    @State var catsImage: [String] = ["istockphoto-heart1",
                                      "istockphoto-diabites1",
                                      "istockphoto-cardioVescular1",
                                      "istockphoto-cancer2",
                                      "Obesity 123"]//Obesity was newly added

    var body: some View {
        ZStack{
     
          ScrollView(.init()){
             TabView(selection: $selected){
            ZStack{
                Image("istockphoto-heart1")
                    .resizable()
                    .scaledToFill()
                    .frame(width: UIScreen.main.bounds.width)
                textOne
                    
            }.tag(0)
                
                ZStack{
                    Image("istockphoto-diabites1")
                        .resizable()
                        .scaledToFill()
                        .frame(width: UIScreen.main.bounds.width)
                    textTwo
                        
                }.tag(1)
//
//                ZStack{
////                    Image("istockphoto-cardioVescular1")
////                        .resizable()
////                        .scaledToFill()
////                        .frame(width: UIScreen.main.bounds.width)
//                    textThree
//
//                }.tag(2)
//
//                ZStack{
//                    Image("istockphoto-cancer2")
//                        .resizable()
//                        .scaledToFill()
//                        .frame(width: UIScreen.main.bounds.width)
//                    textFour
//
//                }.tag(3)
               
            }.tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
//             .onAppear {
//                             startTimer()
//                         }
        }

        }
    }
    func startTimer() {
          Timer.scheduledTimer(withTimeInterval: 50, repeats: true) { timer in
              withAnimation {
                  selected = (selected + 1) % catsImage.count
              }
          }
      }
   
}

struct home_Previews: PreviewProvider {
    static var previews: some View {
        home()
    }
}

extension home{
    
    var textOne: some View{
        ZStack{
            Color.black.opacity(0.5)
            VStack(spacing: 10){
                Text("Introduction to NCDs")
                    .bold()
                    .font(.title)
                    .foregroundColor(.white)
                Text("Noncommunicable diseases (NCDs), also known as chronic diseases, tend to be of long duration and are the result of a combination of genetic, physiological, environmental and behavioural factors.") .foregroundColor(.white).bold().font(.title3)
                Text("The main types of NCD are cardiovascular diseases (such as heart attacks and stroke), cancers, chronic respiratory diseases (such as chronic obstructive pulmonary disease and asthma) and diabetes.") .foregroundColor(.white).bold().font(.title3)
                Text("NCDs disproportionately affect people in low- and middle-income countries, where more than three quarters of global NCD deaths (31.4 million) occur.")
                    .foregroundColor(.white).bold().font(.title3)
            }.padding()
        }
    }
}

extension home{
    
    var textTwo: some View{
        ZStack{
            Color.black.opacity(0.5)
            VStack(spacing: 10){
                Text("Key facts")
                    .bold()
                    .font(.title)
                    .foregroundColor(.white)
                VStack(alignment: .leading,spacing: 10){
                    Text("Noncommunicable diseases (NCDs) kill 41 million people each year, equivalent to 74% of all deaths globally.").foregroundColor(.white).bold().font(.headline)
                Text("Each year, 17 million people die from a NCD before age 70; 86% of these premature deaths occur in low- and middle-income countries.")
                    .foregroundColor(.white).bold()
                Text("Of all NCD deaths, 77% are in low- and middle-income countries.")
                    .foregroundColor(.white).bold()
                Text("Cardiovascular diseases account for most NCD deaths, or 17.9 million people annually, followed by cancers (9.3 million), chronic respiratory diseases (4.1 million), and diabetes (2.0 million including kidney disease deaths caused by diabetes).")
                    .foregroundColor(.white).bold()
                Text("These four groups of diseases account for over 80% of all premature NCD deaths.")
                    .foregroundColor(.white).bold()
                Text("Tobacco use, physical inactivity, the harmful use of alcohol and unhealthy diets all increase the risk of dying from an NCD.")
                    .foregroundColor(.white).bold()
                Text("Detection, screening and treatment of NCDs, as well as palliative care, are key components of the response to NCDs.")
                    .foregroundColor(.white).bold()
                }
            }.padding()
        }
    }
}

extension home{
    
    var textThree: some View{
        ZStack{
            Color.black.opacity(0.5)
            VStack(spacing: 10){
                Text("Stats")
                    .bold()
                    .font(.title)
                    .foregroundColor(.white)
                Image("ncd")
                    .resizable()
                    .scaledToFit()
                
            }.padding()
        }
    }
}

extension home{
    
    var textFour: some View{
        ZStack{
            Color.black.opacity(0.5)
            VStack(spacing: 10){
                Text("CardioVascular diseases")
                    .bold()
                    .font(.title)
                    .foregroundColor(.white)
                Text("CardioVascular Contrary to popular belief, Lorem Ipsum is not simplySections 1.10.32 and 1.10.33 from de Finibus Bonorum et Malorum by Cicero are also reproduced in tef, Lorem Ipsum is not simply random text It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McCl")
                    .foregroundColor(.white)
            }.padding()
        }
    }
}
