//
//  LandmarkDetail.swift
//  ListAndNavigation
//
//  Created by ANH BERNHARDT on 2/3/22.
//

import SwiftUI

struct LandmarkDetail: View {
    
    var landmark: Landmark
    
    var body: some View {
        ScrollView {
            //Map
            MapView(coordinate: landmark.locationCoordinate)
                .ignoresSafeArea(edges: .top)
                .frame(height: 300)
            
            //Image
            CircleImageView(image: landmark.image)
                .offset(y: -130)
                .padding(.bottom, -130)
            
            // Text Stack
            VStack(alignment: .leading) {
                
                //Top Text (Title)
                Text(landmark.name)
                    .font(.title)
                //Subtitle
                HStack {
                    Text(landmark.park)
                    Spacer()
                    Text(landmark.state)
                }
                .font(.subheadline)
                .foregroundColor(.secondary)
                //end of Subtitle
                
                Divider()
                
                //Bottom Text (Information)
                Text("About \(landmark.name)")
                    .font(.title2)
                Text(landmark.description)
            }
            .padding()
            //end of Text Stack
        }
        .navigationTitle(landmark.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct LandmarkDetail_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkDetail(landmark: landmarks[0])
    }
}
