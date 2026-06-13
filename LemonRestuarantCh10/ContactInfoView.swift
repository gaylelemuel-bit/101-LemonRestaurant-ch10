//
//  ContactInfoView.swift
//  LemonRestuarantCh10
//
//  Created by Lemuel Gayle on 6/13/26.
//

import SwiftUI

struct ContactInfoView: View {
    var workingDays = [ "Tuesday", "Wednesday", "Thursday", "Friday", "Staurday"]
    var chefRecommendation = ["Triple-Decker Burger", "Lemon Herb Pasta with Salmon", "Steak with Asparagus", ]
    var body: some View {
        Text("Working Days")
            .font(.title)
            .padding(5)
        
        ForEach(workingDays, id: \.self) { day in
            Text(day)
        }
        Text("Chef Recommendations")
            .font(.title)
            .padding(10)
        ForEach(chefRecommendation, id: \.self) { recommendation in
            HStack(spacing: 8){
                Image(systemName: "star.fill")
                    .font(.body)
                    .padding(3)
                    .background(.yellow)
                    .cornerRadius(15)
                Text(recommendation)
                
            }
        }
        
    }
}

#Preview {
    ContactInfoView()
}
