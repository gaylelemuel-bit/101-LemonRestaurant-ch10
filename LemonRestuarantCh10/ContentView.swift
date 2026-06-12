//
//  ContentView.swift
//  LemonRestuarantCh10
//
//  Created by Lemuel Gayle on 6/5/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "graduationcap.fill")//view
                .imageScale(.large)
                .foregroundStyle(.red)
            Text("Cohort 10")//view
            Text("Welcome")
                .font(.largeTitle)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
