//
//  ContentView.swift
//  Discovery
//
//  Created by Abdulla Haseeb on 20/08/2023.
//

import SwiftUI


extension Color {
    static let appBackgroundColor = Color(.init(white: 0.95, alpha: 1))
}


struct HomeView: View {
    
    init() {
        UINavigationBar.appearance().largeTitleTextAttributes = [
            .foregroundColor: UIColor.white
        ]
    }
    
    
    var body: some View {
        NavigationView {
            
            ZStack  {
                
                LinearGradient(colors: [Color.yellow, Color.orange], startPoint: .top, endPoint: .center)
                    .ignoresSafeArea()
                
                Color.appBackgroundColor
                    .offset(y: 400)
                
                
                ScrollView {
                    
                    HStack {
                        Image(systemName: "magnifyingglass")
                        Text("Where you want to go?")
                        Spacer()
                    }
                    .font(.system(size: 14, weight: .semibold))
                    .foregroundColor(Color.white)
                    .padding(12)
                    .background(Color(.init(gray: 0.95, alpha: 0.4)))
                    .cornerRadius(10)
                    .padding(16)
                
                        VStack {
                            
                            DiscoveryCategoriesView()
                            
                            VStack {
                                
                                PopularDestinationView()
                                
                                RestaurantView()
                                
                                TrendingCreatersView()
                                
                            }
                            .background(Color.appBackgroundColor)
                            .cornerRadius(16)
                            .padding(.top, 16)
                            
                    }
                    
                }
            }
            .navigationTitle("Discovery")
            
        }
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
