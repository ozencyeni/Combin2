//
//  HomeView.swift
//  Combin
//
//  Created by Özenç Yeni on 7.06.2023.
//

import SwiftUI

struct HomeView: View {
    
    @ObservedObject var ratings = Details()
    
    let bounds = UIScreen.main.bounds
    @State var search: String = ""
    
    var body: some View {
        VStack {
            SearchBarView(search: search)
                
                //Search bar view
            ScrollView{
                VStack {
                    HStack {
                        Text("Vitrin")
                            .font(.system(size: 20))
                            .padding(.horizontal)
                        Spacer()
                        NavigationLink {
                            ShowcaseView()
                        } label: {
                            HepsiniGörView()
                        }

                    }
                } // Vitrin and Hepsini Gör
                VStack {
                    HStack {
                        ScrollView(.horizontal, showsIndicators: false){
                            HStack {
                                ForEach(0..<9) { data in
                                    ZStack {
                                        AsyncImage(url: URL(string: "https://random.imagecdn.app/160/280")) { image in
                                            image
                                                .cornerRadius(15)
                                        } placeholder: {
                                            ProgressView().frame(width: 160, height: 280)
                                        }

                                       
                                        VStack {
                                            Spacer()
                                            HStack {
                                                Image(systemName: "play")
                                                    .font(.system(size: 25))
                                                    .foregroundColor(.white)
                                                Text("\(ratings.ratings[data])K")
                                                    .foregroundColor(.white)
                                                    .bold()
                                            }.padding(.vertical)
                                        }
                                    }
                                }
                            }.padding(.horizontal)
                        }                    } // Rounded rectangles
                } // Rounded rectangles
                VStack {
                    HStack {
                        Text("Kombinler")
                            .font(.system(size: 20))
                            .padding()
                        Spacer()
                        NavigationLink {
                            CombineView()
                        } label: {
                            HepsiniGörView()
                        }
                    }
                } // Kombin and Hepsini Gör
                HStack {
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack{
                            ForEach(1..<9) { data in
                                VStack {
                                    BottomRoundedRectangleViews().padding(.vertical)
                                    BottomRoundedRectangleViews()
                                }
                            }
                        }.padding(.horizontal)
                    }
                }
            }
            Spacer()
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

struct HepsiniGörView: View{
    var body: some View{
        Text("Hepsini Gör")
            .foregroundColor(.gray)
            .padding(.horizontal)
    }
}
struct BottomRoundedRectangleViews: View{
    let bounds = UIScreen.main.bounds
    var body: some View{
        HStack {
            ZStack {
                AsyncImage(url: URL(string: "https://random.imagecdn.app/180/100")) { image in
                    image
                        .cornerRadius(15)
                } placeholder: {
                    ProgressView().frame(width: 180, height: 100)
                }

                
                VStack {
                    Spacer()
                    Spacer()
                    HStack {
                        Image("ellipse1")
                        Text("Duygu Karataş")
                            .font(.system(size: 15))
                            .foregroundColor(.white)
                    }
                    Text("Tarafından Düzenlendi")
                        .font(.system(size: 10))
                        .foregroundColor(.white)
                    Spacer()
                }
            }
        }
    }
}
