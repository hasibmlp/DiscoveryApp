//
//  PopularDestinationView.swift
//  Discovery
//
//  Created by Abdulla Haseeb on 22/08/2023.
//

import SwiftUI

struct PopularDestinationView: View {
    
    let places : [Place] = [
        .init(city: "Abudhabi", country: "Uae", imageName: "abudhabi"),
        .init(city: "Kerala", country: "India", imageName: "india"),
        .init(city: "Tokyo", country: "Japan", imageName: "japan"),
        .init(city: "Paris", country: "France", imageName: "france"),
    ]
    
    var body: some View {
        VStack {
            HStack {
                Text("Popular Destination")
                    .font(.system(size: 14, weight: .semibold))
                Spacer()
                Text("view all")
                    .font(.system(size: 12, weight: .semibold))
            }
            .padding(.horizontal)
            .padding(.top)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack (spacing: 16) {
                    ForEach(places, id: \.self) { place in
                        VStack (alignment: .leading) {
                            
                            Image(place.imageName)
                                .resizable()
                                .scaledToFill()
                                .frame(width: 150, height: 200)
                            
                            
                            
                            Text(place.city)
                                .font(.system(size: 14 , weight: .semibold))
                                .padding(.horizontal, 8)
                            Text(place.country)
                                .font(.system(size: 14 , weight: .semibold))
                                .foregroundColor(Color.gray)
                                .padding(.horizontal, 8)
                                .padding(.bottom, 8)
                        }
                        .asTile()
                        .padding(.bottom)
                    }
                }
                .padding(.horizontal)
            }
            
        }
        .padding(.top)
        
        
    }
}



struct PopularDestinationView_Previews: PreviewProvider {
    static var previews: some View {
        PopularDestinationView()
    }
}
