//
//  cancer.swift
//  Healthier
//
//  Created by Joel on 02/07/2023.
//

import SwiftUI

struct cancer: View {
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

struct cancer_Previews: PreviewProvider {
    static var previews: some View {
        cancer()
    }
}
extension cancer{
    var textC : some View{
        ScrollView{
                    Text("Cancer").bold().font(.largeTitle)
                    Text("Cancer is a complex and widespread disease characterized by the uncontrolled growth and spread of abnormal cells in the body. These cells can form tumors or invade nearby tissues and organs, disrupting their normal functions. There are many different types of cancer, such as lung cancer, breast cancer, prostate cancer, and skin cancer, each with its own specific characteristics and treatment options. Cancer can be caused by a variety of factors, including genetic mutations, exposure to carcinogens (such as tobacco smoke or certain chemicals), unhealthy lifestyle choices (such as poor diet and lack of exercise), and certain infections.").bold().font(.title3)
        
                }.padding()
    }
}

extension cancer{
    var howTo : some View{
        VStack(spacing: 10){
            Text("1. Healthy Lifestyle: Adopting a healthy lifestyle can significantly reduce the risk of cancer. This includes maintaining a balanced diet rich in fruits, vegetables, whole grains, and lean proteins, while limiting the consumption of processed foods, sugary drinks, and red meat. Regular physical activity and avoiding sedentary behaviors are also important in preventing cancer.").bold().font(.title3)
            
            Text("2. Tobacco Control: One of the most significant causes of cancer is tobacco use. Quitting smoking and avoiding secondhand smoke can greatly reduce the risk of developing various types of cancer, including lung, throat, and mouth cancer. It's essential to stay away from other tobacco products, such as chewing tobacco and snuff.").bold().font(.title3)
            
            Text("3. Sun Protection: Exposure to ultraviolet (UV) radiation from the sun is a major risk factor for skin cancer. To protect yourself, it's important to wear sunscreen with a high sun protection factor (SPF), seek shade when the sun is strongest, and wear protective clothing, including wide-brimmed hats and sunglasses.").bold().font(.title3)
            
            Text("4. Vaccinations: Certain infections can increase the risk of developing specific types of cancer. Vaccinations can help prevent some of these infections. For example, the human papillomavirus (HPV) vaccine reduces the risk of cervical, anal, and other cancers caused by HPV. The hepatitis B vaccine can protect against liver cancer, which is often caused by chronic infection with the hepatitis B virus.").bold().font(.title3)
            
            Text("5. Regular Screening: Early detection plays a vital role in successful cancer treatment. Regular screenings, such as mammograms for breast cancer or colonoscopies for colorectal cancer, can help detect cancer at its earliest stages when it's most treatable. Consult with your healthcare provider to determine the appropriate screening schedule for your age, gender, and family history.").bold().font(.title3)
            
            Text("6. Limit Alcohol Consumption: Excessive alcohol consumption has been linked to an increased risk of several types of cancer, including breast, liver, and colorectal cancer. It is advisable to limit alcohol intake or avoid it altogether.").bold().font(.title3)

        
                }.padding()
    }
}
