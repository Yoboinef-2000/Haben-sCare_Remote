//
//  ContentView.swift
//  Healthier
//
//  Created by Joel on 28/06/2023.
//

import SwiftUI

struct ContentView: View {
    enum Tab {
           case home, search, add, notifications, profile
       }
       
       @State private var selectedTab: Tab = .home
       @State var counter = 0
     
       
       var body: some View {
        
           VStack {
               TabView(selection: $selectedTab) {
                   home()
                       
                       .tabItem {
                           Image(systemName: "house.fill")
                               .foregroundColor(selectedTab == .home ? .blue : .gray)
                           Text("Home")
                               .foregroundColor(selectedTab == .home ? .blue : .gray)
                       }
                       .tag(Tab.home)
                   
                  slideHorizontal()
                       .tabItem {
                           Image(systemName: "magnifyingglass")
                               .foregroundColor(selectedTab == .search ? .blue : .gray)
                           Text("See more")
                               .foregroundColor(selectedTab == .search ? .blue : .gray)
                       }
                       .tag(Tab.search)
                settingsTab()
                    .tabItem{
                        Image(systemName: "person")
                            .foregroundColor(selectedTab == .add ? .blue : .gray)
                            Text("Me")
                                .foregroundColor(selectedTab == .add ? .blue : .gray)
                    }
                   
                 
               }
               .accentColor(.blue)
           }
         
       }
   }
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
