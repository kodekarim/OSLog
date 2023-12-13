//
//  UserCell.swift
//  OSLogExample
//
//  Created by abdul karim on 07/12/23.
//

import SwiftUI

struct UserCell: View {
    
    @State var user:Users?

    var body: some View {
        HStack(spacing:10) {
            ImageView(urlString: user?.image)
                .frame(width: 50, height: 50)
            
            
            VStack(alignment:.leading) {
                Text(user?.firstName ?? "Karim")
                    .font(.headline)
                Text("\(user?.age ?? 10) / \(user?.gender ?? "male")")
                    .font(.subheadline)
            }
            Spacer()
        }
    }
}

#Preview {
    UserCell()
}
