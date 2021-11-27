//
//  bottomView.swift
//  Profile
//
//  Created by Samsul Hadi on 24/11/21.
//

import SwiftUI
//import FirebaseFirestoreSwift

struct TierView: View {
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        NavigationView {
            VStack(alignment: .leading){

                Text("Tier 1")
                    .font(.system(size: 20))
                
                Divider()
                    .background(Color.gray)
            
                Text("Explanation")
                    .padding(.bottom, 40)
                
                Text("Tier 2")
                    .font(.system(size: 20))
                
                Divider()
                    .background(Color.gray)
                
                Text("Explanation")
                
                Spacer()
                
            }
            .padding()
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarItems(trailing: Button(action: {
                dismiss()
            }) {
                Text("Close").bold()
            })
        }
        
    }
}

struct TierView_Previews: PreviewProvider {
    static var previews: some View {
        TierView()
    }
}
