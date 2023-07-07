//
//  chronic.swift
//  Healthier
//
//  Created by Joel on 02/07/2023.
//

import SwiftUI

struct chronic: View {
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

struct chronic_Previews: PreviewProvider {
    static var previews: some View {
        chronic()
    }
}


extension chronic{
    var textC : some View{
                ScrollView{
                    Text("Chronic respiratory diseases").bold().font(.largeTitle).multilineTextAlignment(.center)
                    Text("Chronic respiratory diseases encompass a group of conditions that affect the lungs and airways, leading to long-term breathing difficulties. Some common examples include chronic obstructive pulmonary disease (COPD), asthma, and pulmonary fibrosis. These diseases are usually caused by prolonged exposure to respiratory irritants such as tobacco smoke, air pollution, occupational hazards, or genetic factors.").bold().font(.title3)
        
                }.padding()
    }
}

extension chronic{
    var howTo : some View{
        VStack(spacing: 10){
                    Text("1. Avoid smoking and secondhand smoke: Smoking is a leading cause of chronic respiratory diseases. Quitting smoking is the most effective way to reduce your risk. Additionally, avoid exposure to secondhand smoke, as it can also contribute to respiratory problems.").bold().font(.title3)
                    
                    Text("2. Reduce exposure to air pollution: Air pollution from industrial emissions, vehicle exhaust, and indoor pollutants can worsen respiratory symptoms and increase the risk of developing chronic respiratory diseases. Minimize outdoor activities on days with poor air quality, use air purifiers indoors, and ensure proper ventilation in your home.").bold().font(.title3)
                    
                    Text("3. Protect against occupational hazards: Certain jobs expose workers to harmful substances like dust, chemicals, and fumes, which can contribute to respiratory diseases. Follow safety guidelines, wear appropriate protective equipment, and take necessary precautions to prevent inhalation of hazardous substances.").bold().font(.title3)
                    
                    Text("4. Maintain a clean living environment: Keep your living space clean and free from allergens such as dust mites, mold, and pet dander. Regularly vacuum, dust, and maintain good ventilation to minimize potential triggers for respiratory symptoms.").bold().font(.title3)
                    
                    Text("5. Practice good hygiene: Follow good hygiene practices, including regular handwashing with soap and water, to reduce the risk of respiratory infections such as colds and flu. Proper hand hygiene helps prevent the spread of viruses and bacteria that can trigger or exacerbate respiratory symptoms.").bold().font(.title3)
                    
                    Text("6. Stay active and maintain a healthy weight: Engaging in regular physical activity helps improve lung function, strengthens respiratory muscles, and enhances overall fitness. Additionally, maintaining a healthy weight reduces the strain on your respiratory system.").bold().font(.title3)
        
                }.padding()
    }
}
