//
//  CodableBundleExtension.swift
//  Africa
//
//  Created by Sood, Gaurav on 25/04/21.
//

import SwiftUI


//Use of swift generics to json to any datatype
extension Bundle {
    func decode<T: Codable>(_ file: String) -> T{
        // 1. Locaote the json file
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("Failed to localte \(file) in bundle")
        }
        
        // 2. Create a property for data
        guard let data  = try? Data(contentsOf: url) else {
            fatalError("Failed to load \(file) from bundle.")
        }
        
        // 3. Create a decoder
        let decoder = JSONDecoder()
        
        // 4. Create a property for decoded data
        guard let loaded = try? decoder.decode(T.self, from: data) else {
            fatalError("failed to decode \(file) from bundle.")
        }
        
        // 5. Return the ready to use data
        return loaded
    }
}
