//
//  HomeViewModel.swift
//  Combin
//
//  Created by Özenç Yeni on 17.08.2023.
//

import Foundation

class Details: ObservableObject, Identifiable{
    @Published var ratings = [Int.random(in: 5...500), Int.random(in: 5...500), Int.random(in: 5...500), Int.random(in: 5...500), Int.random(in: 5...500), Int.random(in: 5...500), Int.random(in: 5...500), Int.random(in: 5...500), Int.random(in: 5...500)]
    @Published var names = ["Deniz"]
    
}
