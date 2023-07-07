//
//  calculateBMI.swift
//  Healthier
//
//  Created by Joel on 30/06/2023.
//

import SwiftUI
import UIKit

struct calculateBMI: View {
    @State var weight = ""
    @State var height = ""
    @State private var bmiResult = 0.0
    
    @State private var bmiDescription: String = ""
    @State private var colorCode = ""
    
    let minValue: Double = 18
    let maxValue: Double = 40
    let value: Double = 20
    
    /*func validateInputs() throws { //exception thrown - line 23- line 39
        guard let heightValue = Double(height), let weightValue = Double(weight) else {
            throw NSError(domain: "Invalid input", code: 0, userInfo: [NSLocalizedDescriptionKey: "Please enter valid numeric values for height and weight."])
        }
        
        guard heightValue > 0 && heightValue <= 5 else {
            throw NSError(domain: "Invalid input", code: 0, userInfo: [NSLocalizedDescriptionKey: "Please enter a height value between 0 and 5 meters."])
        }
        
        // Add any additional validation rules for weight if needed
        
        // If all validations pass, calculate BMI
        bmiResult = calculateBMI(weight: weightValue, height: heightValue)
        let bmiDescriptionResult = getBMIDescription(bmi: bmiResult)
        bmiDescription = bmiDescriptionResult.text
        colorCode = bmiDescriptionResult.colorCode
    }*/
    
    var body: some View {
        NavigationView{
            VStack(spacing: 10){
                VStack(spacing: 20){
          TextField("Height (in meters)", text: $height)
                .foregroundColor(.black)
            .keyboardType(.numbersAndPunctuation)
                .padding()
                .background(Color(.systemGray6))
                .cornerRadius(15)
                .shadow(radius: 20)
           TextField("Weight (in kilograms)", text: $weight)
            .foregroundColor(.black)
            .keyboardType(.numbersAndPunctuation)
               .padding()
               .background(Color(.systemGray6))
               .cornerRadius(15)
               .shadow(radius: 20)
        }.padding(.vertical)
                
           
                Button(action: {
                    bmiResult = calculateBMI(weight: Double(weight)!, height: Double(height)!)
                    let bmiDescriptionResult = getBMIDescription(bmi: bmiResult)
                    
                    bmiDescription = bmiDescriptionResult.text
                    colorCode = bmiDescriptionResult.colorCode
                    
                }, label: {
                    HStack{
                        Text("Calculate")
                    }.padding(10)
                    .background(Color(.systemGray4))
                    .cornerRadius(10)
                })
                .disabled(weight.isEmpty || height.isEmpty)
              
                HStack{
                    Text("BMI Result: \(bmiResult)")
                        .bold()
                        .font(.title3)
                        .foregroundColor(.white)
                }.padding(10)
                .background(colorFromHex(colorCode))
                .cornerRadius(10)
                
                Text("\(bmiDescription)").foregroundColor(colorFromHex(colorCode))

Spacer()
                            }.padding()
            
            .navigationBarTitle(Text("Body Mass Index"),displayMode: .large)
        }
    }
    func calculateBMI(weight: Double, height: Double) -> Double {
        let bmi = weight / (height * height)
        return bmi
       
    }
    func getBMIDescription(bmi: Double) -> (text: String, colorCode: String) {
        var description = ""
        var colorCode = ""

        if bmi < 25 {
            description = "Normal weight"
            colorCode = "#00FF00" // green
        } else if bmi < 30 {
            description = "Overweight"
            colorCode = "#FFA500" // orange
        } else if bmi < 35 {
            description = "Class I obesity"
            colorCode = "#FF4500" // red-orange
        } else if bmi < 40 {
            description = "Class II obesity"
            colorCode = "#FF0000" // red
        } else {
            description = "Class III obesity (morbid obesity)"
            colorCode = "#8B0000" // dark red
        }

        return (description, colorCode)
    }
    func colorFromHex(_ hex: String) -> Color {
        var cString: String = hex.trimmingCharacters(in: .whitespacesAndNewlines).uppercased()

        if cString.hasPrefix("#") {
            cString.remove(at: cString.startIndex)
        }

        if cString.count != 6 {
            return Color.gray // Return gray color for invalid hex strings
        }

        var rgbValue: UInt64 = 0
        Scanner(string: cString).scanHexInt64(&rgbValue)

        let red = Double((rgbValue & 0xFF0000) >> 16) / 255.0
        let green = Double((rgbValue & 0x00FF00) >> 8) / 255.0
        let blue = Double(rgbValue & 0x0000FF) / 255.0

        return Color(red: red, green: green, blue: blue)
    }
}

struct calculateBMI_Previews: PreviewProvider {
    static var previews: some View {
        calculateBMI()
    }
}

