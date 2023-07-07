//
//  cardioVascular.swift
//  Healthier
//
//  Created by Joel on 02/07/2023.
//

import SwiftUI

struct cardioVascular: View {
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

struct cardioVascular_Previews: PreviewProvider {
    static var previews: some View {
        cardioVascular()
    }
}
extension cardioVascular{
    var textC : some View{
        ScrollView{
                    Text("Cardiovascular disease").font(.largeTitle).bold().multilineTextAlignment(.center)
                    Text("Cardiovascular disease refers to a group of disorders that affect the heart and blood vessels, including conditions such as coronary artery disease, heart failure, and stroke. These diseases are primarily caused by a buildup of fatty deposits known as plaque in the arteries, which restricts blood flow and oxygen supply to the heart and other vital organs. Other risk factors contributing to cardiovascular disease include high blood pressure, high cholesterol levels, smoking, obesity, diabetes, and a sedentary lifestyle. Cardiovascular diseases are a leading cause of death worldwide, highlighting the importance of prevention and management strategies.").bold().font(.title3)
        
                }.padding()
    }
}

extension cardioVascular{
    var howTo : some View{
        VStack(spacing: 10){
            Text("1. Maintain a healthy diet: Choose a well-balanced diet rich in fruits, vegetables, whole grains, lean proteins, and healthy fats. Avoid excessive consumption of saturated and trans fats, sodium, and added sugars.").bold().font(.title3)
            
            Text("2. Engage in regular physical activity: Aim for at least 150 minutes of moderate-intensity aerobic exercise or 75 minutes of vigorous activity each week. Incorporate activities like walking, jogging, cycling, swimming, or dancing into your routine.").bold().font(.title3)
            
            Text("3. Quit smoking: Smoking damages blood vessels and increases the risk of developing heart disease. Seek professional help, such as counseling or nicotine replacement therapy, to quit smoking successfully.").bold().font(.title3)
            
            Text("4. Control blood pressure: Monitor blood pressure regularly and work with healthcare professionals to manage it within a healthy range. Lifestyle modifications, such as maintaining a healthy weight, reducing sodium intake, limiting alcohol consumption, and managing stress, can help achieve this.").bold().font(.title3)
            
            Text("5. Manage cholesterol levels: Reduce saturated and trans fats in the diet and opt for healthier fats like omega-3 fatty acids found in fish and nuts. Regular exercise and medications if prescribed can also help control cholesterol levels.").bold().font(.title3)
            
            Text("6. Maintain a healthy weight: Strive for a body mass index (BMI) within the normal range. Balanced nutrition, portion control, and regular physical activity contribute to achieving and maintaining a healthy weight.").bold().font(.title3)
            
                   
                }.padding()
    }
}
