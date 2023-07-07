//
//  diabities.swift
//  Healthier
//
//  Created by Joel on 02/07/2023.
//

import SwiftUI

struct diabities: View {
    @State private var selectedTab = 0
    @State var txt : [String] = ["Explained","How to"]
    var body: some View {
       
        VStack{
            ZStack{
              //  Color.init(red: 0/255, green: 0/255, blue: 128/255)
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
struct diabities_Previews: PreviewProvider {
    static var previews: some View {
        diabities()
    }
}

extension diabities{
    var textC : some View{
        ScrollView{
                    Text("Diabetes").bold().font(.largeTitle)
                    Text("Diabetes is a chronic health condition that affects how your body processes glucose, a type of sugar used as a primary source of energy. There are two main types of diabetes: type 1 and type 2. In type 1 diabetes, the immune system mistakenly attacks and destroys insulin-producing cells in the pancreas, leading to a lack of insulin production. Type 2 diabetes occurs when the body becomes resistant to insulin or doesn't produce enough insulin. Both types result in high levels of glucose in the blood, which can lead to various complications if not properly managed.").bold().font(.title3)
        
                }.padding()
    }
}

extension diabities{
    var howTo : some View{
        VStack(spacing: 10){
                    Text("1. Maintain a balanced diet: Focus on consuming a variety of nutrient-rich foods, including fruits, vegetables, whole grains, lean proteins, and healthy fats. Limit your intake of sugary drinks, processed foods, and high-calorie snacks.").bold().font(.title3)
                    
                    Text("2. Engage in regular physical activity: Aim for at least 150 minutes of moderate-intensity aerobic exercise per week, such as brisk walking, cycling, or swimming. Additionally, include strength training exercises to build muscle mass and improve insulin sensitivity.").bold().font(.title3)
                    
                    Text("3. Achieve and maintain a healthy weight: Excess body weight, especially around the waistline, increases the risk of developing type 2 diabetes. If overweight, strive for gradual weight loss through a combination of healthy eating and physical activity.").bold().font(.title3)
                    
                    Text("4. Limit alcohol consumption: Excessive alcohol intake can disrupt blood sugar levels and contribute to weight gain. If you choose to drink alcohol, do so in moderation (up to one drink per day for women and up to two drinks per day for men).").bold().font(.title3)
                    
                    Text("5. Avoid smoking: Smoking is associated with an increased risk of type 2 diabetes, along with numerous other health issues. Quitting smoking can significantly reduce your risk of developing diabetes and improve overall health.").bold().font(.title3)
                    
                    Text("6. Get regular check-ups: Regular medical check-ups can help detect early signs of diabetes or prediabetes. It's essential to monitor your blood sugar levels, blood pressure, and cholesterol levels regularly.").bold().font(.title3)
        
                }.padding()
    }
}
