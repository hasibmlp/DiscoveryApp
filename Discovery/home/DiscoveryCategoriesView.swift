//
//  DiscoveryCategoriesView.swift
//  Discovery
//
//  Created by Abdulla Haseeb on 21/08/2023.
//

import SwiftUI

struct DiscoveryCategoriesView: View {
    
    let categories: [Category] = [
        .init(name: "Art", imageName: "paintpalette.fill"),
        .init(name: "Sport", imageName: "sportscourt.fill"),
        .init(name: "Live Events", imageName: "music.mic"),
        .init(name: "Food", imageName: "fork.knife"),
        .init(name: "History", imageName: "books.vertical.fill"),
        .init(name: "Wildlife", imageName: "tree.fill"),

    ]
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 16) {
                ForEach(categories, id: \.self) { category in
                    
                    NavigationLink {
                        CategoryDetailsView()
                    } label: {
                        VStack (spacing: 4) {
    //                        Spacer()
                            Image(systemName: category.imageName)
                                .foregroundColor(Color.yellow)
                                .font(.system(size: 22))
                                .frame(width: 60, height: 60)
                                .background(Color.white)
                                .cornerRadius(.infinity)
    //                            .shadow(color: .gray, radius: 4, x: 0.0, y: 2)
    //                            .padding(.top)
                            
                            Text(category.name)
                                .foregroundColor(Color.white)
                                .font(.system(size: 12, weight: .semibold))
                                .multilineTextAlignment(.center)
                        }
                    }

                    
                }
                
            }
            .padding(.horizontal)
        }
    }
}


struct CategoryDetailsView: View {
    var body: some View {
        ScrollView {
            ForEach(1..<5, id: \.self) {num in
                
                VStack(alignment: .leading, spacing: 0) {
                
                    Image("art")
                        .resizable()
                        .scaledToFill()
                    Text("Abudhabi")
                        .font(.system(size: 14, weight: .semibold))
                        .padding(.leading)
                        .padding(.vertical)
                }
                .asTile()
                .padding()
                
            }
            .navigationBarTitle("Category", displayMode: .inline)
        }
    }
}


struct DiscoveryCategoriesView_Previews: PreviewProvider {
    static var previews: some View {
//        NavigationView {
//          CategoryDetailsView()
//        }
        
        ZStack {
            Color.orange
            DiscoveryCategoriesView()
        }
        HomeView()
    }
}
