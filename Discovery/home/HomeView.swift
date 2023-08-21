//
//  ContentView.swift
//  Discovery
//
//  Created by Abdulla Haseeb on 20/08/2023.
//

import SwiftUI

struct ContentView: View {
    
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
                
                Color(.init(white: 0.95, alpha: 1))
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
                                
                                RestorentsView()
                                
                                TrendingCreatersView()
                                
                            }
                            .background(Color(.init(white: 0.95, alpha: 1)))
                            .cornerRadius(16)
                            .padding(.top, 16)
                            
                    }
                    
                }
            }
            .navigationTitle("Discovery")
            
        }
    }
}

struct Category : Hashable {
    let name, imageName : String
}

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
                            .font(.system(size: 12, weight: .semibold))
                            .multilineTextAlignment(.center)
                    }
                    
                }
                
            }
            .padding(.horizontal)
        }
    }
}

struct Place : Hashable {
    let city, country, imageName : String
}

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
                            
                            Spacer()
                            HStack {
                                Spacer()
                            }
                            
                            Text(place.city)
                                .font(.system(size: 14 , weight: .semibold))
                                .padding(.horizontal, 8)
                            Text(place.country)
                                .font(.system(size: 14 , weight: .semibold))
                                .foregroundColor(Color.gray)
                                .padding(.horizontal, 8)
                                .padding(.bottom, 8)
                        }
//                            .frame(width: 200, height: 250)
                        .background(Color.white)
                            .cornerRadius(5)
                            .shadow(color: Color(.init(gray: 0.85, alpha: 1)), radius: 4, x: 0.0, y: 2)
                            .padding(.bottom)
                    }
                }
                .padding(.horizontal)
            }
            
        }
        .padding(.top)
        
        
    }
}


struct Restaurant : Hashable {
    let name, imageName : String
}


struct RestorentsView: View {
    
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
                        .background(Color.white)
                        .cornerRadius(5)
                        .shadow(color: Color(.init(gray: 0.85, alpha: 1)), radius: 4, x: 0.0, y: 2)
                        .padding(.bottom)
                    }
                }
                .padding(.horizontal)
            }
            
        }
//        .padding(.bottom)
    }
}


struct User : Hashable {
    let name, imageName : String
}


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



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
