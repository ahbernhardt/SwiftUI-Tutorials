//
//  ContentView.swift
//  Landmarks
//
//  Created by ANH BERNHARDT on 2/2/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            //Map
            MapView()
                .ignoresSafeArea(edges: .top)
                .frame(height: 300)
            
            //Image
            CircleImage()
                .offset(y: -130)
                .padding(.bottom, -130)
            
            // Text Stack
            VStack(alignment: .leading) {
                
                //Top Text (Title)
                Text("Turtle Rock")
                    .font(.title)
                //Subtitle
                HStack {
                    Text("Joshua Tree National Park")
                    Spacer()
                    Text("California")
                }
                .font(.subheadline)
                .foregroundColor(.secondary)
                //end of Subtitle
                
                Divider()
                
                //Bottom Text (Information)
                Text("About Turtle Rock")
                    .font(.title2)
                Text("Descriptive text goes here.")
            }
            .padding()
            Spacer()
            //end of Text Stack
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
