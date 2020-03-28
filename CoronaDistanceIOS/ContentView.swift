//
//  ContentView.swift
//  CoronaDistanceIOS
//
//  Created by Jarrod Ragsdale on 3/28/20.
//  Copyright © 2020 Group. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var selection = 0
    @State private var searching = false
 
    var body: some View {
        TabView(selection: $selection){
            VStack {
            
                Text("It's Corona Time")
                    .font(.title)
                    .padding(.top)
                
                Spacer()
                
                Button(action: {
                    self.searching.toggle()
                    }) {
                        if !searching {
                            HStack {
                                Text("Start Searching")
                                Image(systemName: "dot.radiowaves.left.and.right")
                            }
                            .font(.title)
                            .foregroundColor(Color.black)
                            .padding(.all, 30)
                            .padding(.vertical, 100)
                            .background(Color.green)
                            .cornerRadius(150)
                        } else {
                            HStack {
                                Text("Stop Searching")
                                Image(systemName: "dot.radiowaves.left.and.right")
                            }
                            .font(.title)
                            .foregroundColor(Color.black)
                            .padding(.all, 30)
                            .padding(.vertical, 100)
                            .background(Color.red)
                            .cornerRadius(150)
                        }
                }
                
                Spacer()
                
                
                
                
            }
                
                .tabItem {
                    VStack {
                        Image(systemName: "person.3.fill")
                        Text("Home")
                    }
                }
                .tag(0)
            Text("Second Views")
                .font(.title)
                
                
                
                
                .tabItem {
                    VStack {
                        Image(systemName: "staroflife")
                        Text("News")
                    }
                }
                .tag(1)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
