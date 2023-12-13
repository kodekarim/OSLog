//
//  ContentView.swift
//  OSLogExample
//
//  Created by abdul karim on 07/12/23.
//

import SwiftUI
import OSLog


struct ContentView: View {
    
    @State var users: [Users] = []
    
    var body: some View {
        NavigationView {
            List(users) { user in
                NavigationLink(destination: DetailView(userModel: user), label: {
                    UserCell(user: user)
                })
            }
            .navigationTitle("Robots")
        }
        .task {
            do {
                users = try await fetchUsers()
            } catch {
                print("error")
            }
        }
        .onAppear {
            Logger.viewCycle.notice("ContentView Appeared")
        }
        .onDisappear {
            Logger.viewCycle.notice("ContentView Disappear")
        }
    }
}

extension ContentView {
    func fetchUsers() async throws -> [Users] {
        Logger.api.debug("/users: calling")
        let url = URL(string: "https://dummyjson.com/users")!
        let (data, response) = try await URLSession.shared.data(from: url)
        if let dataString = String(data: data, encoding: .utf8) {
            Logger.api.info("\(dataString)")
        }

        guard let httpResponse = response as? HTTPURLResponse, httpResponse.statusCode == 200 else {
            throw URLError(.badServerResponse)
        }
        Logger.api.debug("/user: calling Success - \(httpResponse.statusCode)")
        let decoder = JSONDecoder()
        let users = try decoder.decode(UserModel.self, from: data)
        Logger.api.debug("\(httpResponse.description)")
        return users.users ?? []
     }
}

#Preview {
    ContentView()
}
