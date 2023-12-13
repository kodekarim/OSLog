//
//  ImageView.swift
//  OSLogExample
//
//  Created by abdul karim on 13/12/23.
//

import SwiftUI

struct ImageView: View {
    @State var urlString:String?
    let placeHolderURL = URL.init(string: "https://robohash.org/hicveldicta.png")
    
    var body: some View {
        AsyncImage(url: URL(string: urlString ?? "") ?? placeHolderURL) { image in
                image
                    .resizable()
                    .scaledToFill()
            } placeholder: {
                ProgressView()
            }
    }
}

#Preview {
    ImageView()
}
