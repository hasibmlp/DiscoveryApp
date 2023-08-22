//
//  TrendingCreatersView.swift
//  Discovery
//
//  Created by Abdulla Haseeb on 22/08/2023.
//

import SwiftUI

struct TrendingCreatersView : View {
    
    let users: [User] = [
        .init(name: "Sam", imageName: "sam"),
        .init(name: "Alfred Bateman", imageName: "alfredbateman"),
        .init(name: "Haris Muhammed", imageName: "harismuhammed"),
    ]
    
    var body: some View {
        VStack {
            HStack {
                Text("Trending Creaters")
                    .font(.system(size: 14, weight: .semibold))
                Spacer()
                Text("view all")
                    .font(.system(size: 12, weight: .semibold))
            }
            .padding(.horizontal)
            .padding(.top)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack (spacing: 18) {
                    ForEach(users, id: \.self) { user in
                        VStack {
                            Image(user.imageName)
                                .resizable()
                                .scaledToFill()
                                .frame(width: 64, height: 64)
                                .cornerRadius(.infinity)
                                .shadow(color: .gray, radius: 4, x: 0.0, y: 2)
                            
                            Text(user.name)
                                .font(.system(size: 12, weight: .semibold))
                                .multilineTextAlignment(.center)
                        }
                        .frame(width: 60)
                        .padding(.bottom)
                    }
                }
                .padding(.horizontal)
            }
            
        }
        
    }
}

struct TrendingCreatersView_Previews: PreviewProvider {
    static var previews: some View {
        TrendingCreatersView()
    }
}
