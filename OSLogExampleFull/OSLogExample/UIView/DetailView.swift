//
//  DetailView.swift
//  OSLogExample
//
//  Created by abdul karim on 13/12/23.
//

import SwiftUI
import OSLog

struct DetailView: View {
    
    @State var userModel:Users?
    
    var body: some View {
        VStack {
            ImageView(urlString: userModel?.image)
                .frame(width: 100, height: 100)
            
            Text("First Name : \(userModel?.firstName ?? "")")
            Text("Last Name : \(userModel?.lastName ?? "")")
            Text("DOB : \(userModel?.birthDate ?? "")")
            Text("Email : \(userModel?.email ?? "")")
            Text("Blood Group : \(userModel?.bloodGroup ?? "")")

            
            Spacer()
        }
        .task {
            do {
                let _  = try await callFailedAPI()
            } catch {
                print("error")
            }
        }
        .onAppear {
            Logger.statistics.log("\(userModel?.firstName ?? "") - \(userModel?.id ?? 00)")
            Logger.viewCycle.notice("DetailView Appeared")
        }
        .onDisappear {
            Logger.viewCycle.notice("DetailView Disappear")
        }
    }
}

extension DetailView {
    func callFailedAPI() async throws -> [Users] {
        Logger.api.debug("/xyz")
        let url = URL(string: "https://dummyjson.com/xyz")!
        let (data, response) = try await URLSession.shared.data(from: url)
        
        guard let httpResponse = response as? HTTPURLResponse, httpResponse.statusCode == 200 else {
            Logger.api.fault("api /xyz failed \(URLError(.badServerResponse))")
            throw URLError(.badServerResponse)
        }
        
        let decoder = JSONDecoder()
        let users = try decoder.decode(UserModel.self, from: data)
        return users.users ?? []
    }
}

#Preview {
    DetailView()
}
