//
//  ContentView.swift
//  SwiftUI_Dataflow
//
//  Created by Ashish Langhe on 10/11/23.
//

import SwiftUI
import Observation

@Observable
class ViewModel {
    init(){}
    
    var count = 16500
    var name = "Avengers"
    
    var dateCreated = Date()
}

struct ContentView: View {
    
    var viewModel = ViewModel()
    
    var body: some View {
        VStack {
            Text("\(viewModel.count)")
                .font(.system(.title))
            Text("\(viewModel.name)")
                .font(.system(.largeTitle))
                .padding()
            Text("Subscribers")
                .font(.system(.title))
                .padding()
            Button("Add Subscriber") {
                viewModel.count += 1
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
