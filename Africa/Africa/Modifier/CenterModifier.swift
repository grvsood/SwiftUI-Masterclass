//
//  CenterModifier.swift
//  Africa
//
//  Created by Sood, Gaurav on 02/05/21.
//

import SwiftUI

struct CenterModifier: ViewModifier {
    func body(content: Content) -> some View {
        HStack {
            Spacer()
            content
            Spacer()
        }
    }
}
