//
//  ContentView.swift
//  TestEnv
//
//  Created by Nikunj Mewada on 05/02/25.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    @State private var environment: String = ""

    var body: some View {
        VStack {
            Text(environment)
        }.onAppear {
            let value = Bundle.main.object(forInfoDictionaryKey: "API_KEY") as? String
            environment = value ?? "Error"
        }
    }
}

#Preview {
    ContentView()
}
