//
//  CreditsView.swift
//  Africa
//
//  Created by Sood, Gaurav on 02/05/21.
//

import SwiftUI

struct CreditsView: View {
    var body: some View {
        VStack {
            Image("compass").resizable().scaledToFit().frame(width: 128, height: 128, alignment: .center)
            Text("""
    Copyright @Gaurav
    All right reserved
    Better Apps ❤️ less code
    """)
                .font(.footnote)
                .multilineTextAlignment(.center)
        }//: VStack
        .padding()
        .opacity(0.6)
    }
    
}

struct CreditsView_Previews: PreviewProvider {
    static var previews: some View {
        CreditsView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
