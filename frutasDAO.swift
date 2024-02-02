//
//  frutasDAO.swift
//  hackatruckAPI
//
//  Created by Turma01-23 on 26/01/24.
//

import Foundation

struct Frutas : Decodable, Identifiable{
var name: String
var id: Int
    var nutritions : nutritions
}


struct nutritions: Decodable{
    var calories: Int
    var sugar: Double
    var fat: Double
    var protein: Double
    
}
