//
//  RestaurantInfoView.swift
//  LemonRestuarantCh10
//
//  Created by Lemuel Gayle on 6/16/26.
//

import SwiftUI

struct RestaurantInfoView: View {
    let socialMedia = [
        "Facebook": "facebook.com/lemon",
        "TikTok": "@restaurant.lemon",
        "Instagram": "@lemon"
        ]
    let staff = [
        "CEO": "Jeff Some",
        "Marketing": "John Blank",
        "Influencer": "Mary LuLu",
        "Content creator": "Elizabeth Keen",
        "Software Engineer": "Lemuel Gayle ",
        "Deisgner": "Phillip Lee"
        
    ]
    var body: some View {
        NavigationStack {
            List {
                Section("Social Media" ) {
                    ForEach(Array(socialMedia), id: \.key) { (key, value) in
                        HStack{
                            HStack{Image(systemName: "camera")
                                    .foregroundStyle(Color.secondary)
                                Text(key)
                                    .font(Font.body.bold())
                            }
                                 Spacer()
                            Text(value)
                                .foregroundColor(.secondary)

                        }
                                            }
                }
                Section("Staff") {
                    ForEach(Array(staff), id: \.key) { (key, value) in
                        HStack{
                            Text(key)
                                .font(Font.body.bold())
                            Spacer()
                            Text(value)
                                .foregroundColor(.secondary)
                            
                        }
                    }
                }
            }
        }
    }
            
}

#Preview {
    RestaurantInfoView()
}
