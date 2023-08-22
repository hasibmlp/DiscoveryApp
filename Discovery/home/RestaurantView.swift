//
//  RestaurantView.swift
//  Discovery
//
//  Created by Abdulla Haseeb on 22/08/2023.
//

import SwiftUI

struct RestaurantView: View {
    
    let restaurants : [Restaurant] = [
        .init(name: "Japan's finest Tapas", imageName: "shushi"),
        .init(name: "Arabic restaurant", imageName: "arabicfood")
    ]
    
    var body: some View {
        VStack {
            HStack {
                Text("Places to eat")
                    .font(.system(size: 14, weight: .semibold))
                Spacer()
                Text("view all")
                    .font(.system(size: 12, weight: .semibold))
            }
            .padding(.horizontal)
            .padding(.top)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack (spacing: 16) {
                    ForEach(restaurants, id: \.self) { restaurant in
                        
                        HStack (spacing: 8) {
                            Image(restaurant.imageName)
                                .resizable()
                                .scaledToFill()
                                .frame(width: 64, height: 80)
                                .clipped()
                                .background(Color.gray)
//                                .padding(.vertical, 8)
//                                .padding(.leading, 8)
        
                            VStack(alignment: .leading, spacing: 8) {
                                
                                HStack {
                                    Text(restaurant.name)
                                        
                                    Spacer()
                                    Button(action: {}, label: {
                                        Image(systemName: "ellipsis")
                                    })
                                    .foregroundColor(Color.gray)
                                }
                                .padding(.trailing, 4)
                
                                HStack {
                                    Image(systemName: "star.fill")
                                        .font(.system(size: 12))
                                    Text("4.7 • sushi • $$")
                                    
                                }
                                
                                Text("Tokyo, Japan")
                            }
                        }
        
                        .font(.system(size: 12, weight: .semibold))
                        .frame(width: 250)
                        .asTile()
                        .padding(.bottom)
                    }
                }
                .padding(.horizontal)
            }
            
        }
//        .padding(.bottom)
    }
}

struct RestaurantView_Previews: PreviewProvider {
    static var previews: some View {
        RestaurantView()
        HomeView()
    }
}
