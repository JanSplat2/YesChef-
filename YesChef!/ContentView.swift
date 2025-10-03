//
//  ContentView.swift
//  YesChef!
//
//  Created by Dittrich, Jan - Student on 10/1/25.
//

import SwiftUI

struct ContentView: View {
    
    @State var SelectedTabs = 0
    
    var body: some View {
        TabView (selection: $SelectedTabs){
            VStack{
                Text("How to Make:")
                    .fontWeight(.black)
                    .font(.system(size: 40))
                Image("Recipe")
                    .imageScale(.large)
            }
                        .tabItem {
                            Image(systemName: "house")
                            Text("Intro")
                        }
                    .tag(0)
                Ingredients()
                    .tabItem {
                        Image(systemName: "scribble.variable")
                        Text("Ingredients")
                    }
                    .tag(1)
            
                Instructions()
                    .tabItem {
                        Image(systemName: "text.document.fill")
                        Text("Instructions")
                    }
                    .tag(2)
            }
        }
    }


#Preview {
    ContentView()
}
