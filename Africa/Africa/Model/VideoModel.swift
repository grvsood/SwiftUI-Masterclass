//
//  VideoModel.swift
//  Africa
//
//  Created by Sood, Gaurav on 25/04/21.
//

import SwiftUI

struct Video: Codable,Identifiable {
    let id: String
    let name: String
    let headline: String
    
    // Computed Property
    var thumbnail: String {
        "video-\(id)"
    }
}
