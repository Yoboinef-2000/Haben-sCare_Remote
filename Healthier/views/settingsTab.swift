//
//  settingsTab.swift
//  Healthier
//
//  Created by Joel on 29/06/2023.
//

import SwiftUI
import UIKit

struct settingsTab: View {
    @State var NSFW = true
    @State var inAppBrowser = false
    @State var blurNSFW = true
    var languageOptions = ["English","Amharic","Oromigna","Tigrigna"]
    @State var previewIndex = 0
    @State var bodyMeasure = false
    @State var activity = false
    @State var sleep = false
    
    @State var help = false
    @State var openSource = false
    @Environment(\.presentationMode) var presentationMode
    @State var openWeb = false
    @State var link = ""
    var body: some View {
        ZStack{
            
            Form{
                Section(header: headerView(type: "Settings")) {
                    
                        Button(action: {
                            bodyMeasure.toggle()
                        }, label: {
                            HStack{
                                Image(systemName: "ruler")
                                Text("Body measurments")
                                    Spacer()
                            }
                        })
                        .sheet(isPresented: $bodyMeasure, content: {
                            calculateBMI()
                        })
                    
                    Button(action: {
                        
                    }, label: {
                        HStack{
                           Image(systemName: "pencil.circle.fill")
                           Text("Write down your information")
                           
                       }
                    })
                    
                        Button(action: {
                          //  activity.toggle()
                        }, label: {
                            HStack{
                                Image(systemName: "person.circle")
                                Text("Activity")
                                    Spacer()
                            }
                        })
                        .sheet(isPresented: $activity, content: {
                           trackAcitvity()
                        })
                    
                    Button(action: {
                      //  sleep.toggle()
                    }, label: {
                        HStack{
                            Image(systemName: "bed.double")
                            Text("Sleep")
                                Spacer()
                        }
                    })
                    .sheet(isPresented: $activity, content: {
                       trackSleep()
                    })
                      
                     Picker(selection: $previewIndex, label: Text("Language")){
                            ForEach(languageOptions.indices){
                                Text(self.languageOptions[$0])
                            }
                        }
                    
                  
                }
                Section(header: headerView(type: "Help")) {
                    Button(action: {
                       // help.toggle()
                    }, label: {
                        HStack{
                            Image(systemName: "questionmark.circle")
                            Text("Help Center")
                                Spacer()
                        }
                    })
                    .sheet(isPresented: $help, content: {
                       helpCenter()
                    })
                    
                    Button(action: {
                      //  openSource.toggle()
                    }, label: {
                        HStack{
                            Image(systemName: "mail")
                            Text("Open Sources")
                                Spacer()
                        }
                    })
                    .sheet(isPresented: $openSource, content: {
                       openSources()
                    })
                    
                    
                    
                                    
                }
                Section(header: Text("")){
                    HStack{
                        Image(systemName: "mail")
                        Text("Report an issue")
                            .onTapGesture {
                                if let url = URL(string: "https://report.kuakua.io") {
                                    UIApplication.shared.open(url)
                                }
                            }
                    }
                    Button(action: {
                        
                    }, label: {
                        HStack{
                            Image(systemName: "trash")
                            Text("Clear data")
                        }
                      
                        
                    })
                  
                }
            }
           
        }
    }
    func headerView(type: String) -> some View{
        return
            Text(type).bold()
       }
}

struct settingsTab_Previews: PreviewProvider {
    static var previews: some View {
        settingsTab()
    }
}

