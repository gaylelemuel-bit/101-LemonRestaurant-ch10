//
//  AboutView.swift
//  LemonRestuarantCh10
//
//  Created by Lemuel Gayle on 6/5/26.
//

import SwiftUI

struct AboutView: View {
    var body: some View {
        VStack{
            Text("About Lemon Lemon")
                .font(.title)
                .bold()
                .foregroundStyle(.green)
            
            Text("this will be paragraph section, but for now, just some icons. Now with more text,one of my favorite scriptures: Hosea 4:6 my people are destroyed for lack of knowledge. ")
                .multilineTextAlignment(.center)
                .padding()
            HStack{
                Image(systemName: "fork.knife")
                    .imageScale(.large)
                    .foregroundStyle(.yellow)
                Image(systemName: "leaf")
                    .imageScale(.large)
                    .foregroundColor(.green)
                Image(systemName: "map")
                    .imageScale(.large)
                    .foregroundColor(.blue)
            }
        }
        .padding()
    }
}

#Preview {
    AboutView()
}
