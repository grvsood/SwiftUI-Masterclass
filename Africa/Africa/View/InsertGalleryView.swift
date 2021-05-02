//
//  InsertGalleryView.swift
//  Africa
//
//  Created by Sood, Gaurav on 25/04/21.
//

import SwiftUI

struct InsertGalleryView: View {
    // MARK: - Properties
    let animal: Animal
    
    // MARK: - Body
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false){
            HStack(alignment:.center, spacing: 15) {
                ForEach(animal.gallery, id:\.self) { item in
                    Image(item)
                        .resizable().scaledToFit()
                        .frame(height:200)
                        .cornerRadius(12)
                }
            } //: HSTACK
        }
    }
}

// MARK: preview
struct InsertGalleryView_Previews: PreviewProvider {
    static let animals: [Animal] = Bundle.main.decode("animal.json")
    
    static var previews: some View {
        InsertGalleryView(animal: animals[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
