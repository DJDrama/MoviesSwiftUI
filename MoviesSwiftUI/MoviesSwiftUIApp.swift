//
//  MoviesSwiftUIApp.swift
//  MoviesSwiftUI
//
//  Created by Dongjun Lee on 11/19/24.
//

import SwiftUI

@main
struct MoviesSwiftUIApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationStack{
                ContentView(httpClient: HTTPClient())
            }
        }
    }
}
