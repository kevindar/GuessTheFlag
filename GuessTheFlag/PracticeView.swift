//
//  ContentView.swift
//  GuessTheFlag
//
//  Created by Kevin Darmawan on 17/12/24.
//

import SwiftUI

struct ContentView: View {
    @State private var showingAlert = false
    
    var countries = ["Estonia", "France", "Germany", "Ireland", "Italy", "Nigeria", "Poland", "Spain", "UK", "Ukraine", "US"]
    var correctAnswer = Int.random(in: 0...2)
    
    func executeDelete() {
        print("Now deleting....")
    }
    
    var body: some View {
        ZStack {
            LinearGradient(stops: [
                .init(color: .black, location: 0.25),
                .init(color: .white, location: 0.85),
            ], startPoint: .top, endPoint: .bottom)
            
        }.ignoresSafeArea()
        
        HStack{
            RadialGradient(colors: [.blue, .black], center: .center, startRadius: 20, endRadius: 200)
            AngularGradient(colors: [.red, .yellow, .green, .blue, .purple, .red], center: .center)
        }
        
        VStack(alignment: .trailing) {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello World")
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .foregroundStyle(.white)
                .background(.red.gradient)
        }
        .padding()
        
        HStack(spacing: 20) {
            Text("First")
            Text("Second")
            Text("Third")
        }.background(.red)
        ZStack(alignment: .top) {
            Color.blue
                .frame(minWidth: 200, maxWidth: .infinity, maxHeight: 200)
            Text("This in front")
            Text("This in the back")
        }
        HStack(alignment: .top){
            Button("Button 1", role: .destructive, action: executeDelete)
                .buttonStyle(.bordered)
            VStack {
                Button("Button 2", role: .destructive) {
                    print("Button 2 was tapped")
                        
                }.buttonStyle(.bordered); label: do {
                    Text("Tap me!")
                        .padding()
                        .foregroundStyle(.white)
                        .background(.red)
                }
            }
            VStack {
                Button("Button 3") {
                    print("Edit button was tapped")
                } .buttonStyle(.borderedProminent); label: do {
                    Image(systemName: "pencil")
                        .padding()
                        .foregroundStyle(.white)
                        .background(.red)
                }
            }
                
            Button("Show Alert", role: .destructive) {
                showingAlert.toggle()
            }
            .alert("Important message!", isPresented: $showingAlert ){
                Button("Delete", role: .destructive) { }
                Button("Cancel", role: .cancel) { }
            }
                .buttonStyle(.borderedProminent)
                .tint(.mint)
        }

        ZStack {
            VStack(spacing: 0) {
                Color.red
                Color.blue
            }

            Text("Your content")
                .foregroundStyle(.secondary)
                .padding(50)
                .background(.ultraThinMaterial)
        }
        .ignoresSafeArea()
    }
}

#Preview {
    ContentView()
}
