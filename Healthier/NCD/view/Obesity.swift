//
//  Obesity.swift
//  Healthier
//
//  Created by Neftalem Mussie on 07/07/2023.
//



import SwiftUI

struct Obesity: View {
    @State private var selectedTab = 0
    @State var txt : [String] = ["Explained","How to"]
    var body: some View {
       
        VStack{
            ZStack{
               // Color.init(red: 0/255, green: 0/255, blue: 128/255)
            Color(.systemGray4)
            .frame(height: UIScreen.main.bounds.height / 10)
            
            Picker(selection: $selectedTab, label: Text("Select Gift")) {
              
                ForEach(txt.indices){ index in
                    Text(txt[index]).id(index)
                }
                
            }.pickerStyle(SegmentedPickerStyle())
            .padding()
            }
            if selectedTab == 0{
                VStack{
                textC
                }
            } else if selectedTab == 1{
                ScrollView{
                    howTo
                }
            }
            Spacer()
            
        }
        }
   
}

struct Obesity_Previews: PreviewProvider {
    static var previews: some View {
        Obesity()
    }
}
extension Obesity{
    var textC : some View{
        ScrollView{
                    Text("Obesity").font(.largeTitle).bold().multilineTextAlignment(.center)
                    Text("Obesity is a condition characterized by an abundance of body fat, which heightens the chances of health complications. It commonly arises from consuming more calories than are expended through physical activity and daily routines. Obesity is diagnosed when an individual's body mass index exceeds 30, with the primary indicator being an excessive amount of body fat, leading to a higher susceptibility to severe health issues. The primary approach to managing obesity entails adopting lifestyle modifications such as adjustments to diet and engaging in regular exercise.").bold().font(.title3)
        
                }.padding()
    }
}

extension Obesity{
    var howTo : some View{
        VStack(spacing: 10){
            Text("1. You should choose healthier nutrient-rich foods like whole grains, fruits, and vegetables that provide essential vitamins, minerals, and dietary fiber. Additionally, incorporating healthy fats (such as avocados and nuts) and lean protein sources (like fish and poultry) can help support satiety and overall well-being.").bold().font(.title3)
            
            Text("2. You should try to avoid or reduce the intake of refined grains, sweets, sugary drinks, and processed meats is important. These foods are often high in calories, added sugars, unhealthy fats, and sodium, which can contribute to weight gain and increase the risk of various health problems. Instead, choose alternatives like lean meats, whole grains, and unsweetened beverages.").bold().font(.title3)
            
            Text("3. You should increase your physical activity. Engaging in regular physical activity not only helps burn calories but also improves cardiovascular health, builds muscle strength, and enhances overall fitness. Aim for a combination of aerobic exercises (like brisk walking, running, or cycling) and strength training exercises (such as weightlifting or bodyweight exercises) for optimal benefits.").bold().font(.title3)
            
            Text("4. You should try to limit television time, screen time, and other sit time: Prolonged sedentary behaviors, such as sitting for extended periods while watching TV or using electronic devices, can contribute to weight gain and obesity. It's essential to break up long periods of sitting by incorporating movement throughout the day. Take short active breaks, stretch, or engage in light exercises.").bold().font(.title3)
            
            Text("5. Try reducing your stress levels. Chronic stress can contribute to emotional eating and unhealthy coping mechanisms, which may lead to weight gain. Finding healthy ways to manage stress, such as practicing relaxation techniques (like deep breathing or meditation), engaging in physical activity, pursuing hobbies, or seeking support from loved ones, can help maintain a balanced and healthy lifestyle.").bold().font(.title3)
            
        }.padding()
    }
}

