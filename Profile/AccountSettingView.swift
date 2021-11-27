//
//  AcountSettingView.swift
//  Profile
//
//  Created by Samsul Hadi on 23/11/21.
//

import SwiftUI

struct AccountSettingView: View {
    
    @ObservedObject private var authState = AuthModel()

    var body: some View {
            List{
                HStack{
                    Text("Tier 1")
                        .font(.system(size: 15))
                        .foregroundColor(.gray)
                    Circle()
                        .fill(Color.green)
                            .frame(width: 15, height: 15)
                }
                HStack(spacing: 95){
                    Text("Email")
                        .font(.system(size: 15, weight: .bold))
                    Text(authState.userEmail)
                        .font(.system(size: 15, weight: .bold))
                }
            
                padding()

                HStack {
                     Text("Tier 2")
                       .font(.system(size: 15))
                       .foregroundColor(.gray)
                    Circle()
                       .fill(Color.red)
                       .frame(width: 15, height: 15)
                }
            
                NavigationLink (destination: Text("Destination"),
                                label: {Text("ID")}
                )
                
                NavigationLink (destination: Text("Destination"),
                                label: {Text("Phone number")}
                )
                
                NavigationLink (destination: Text("Destination"),
                                label: {Text("Bank account verification ")}
                )
            }
            .navigationBarTitle("Account Setting", displayMode: .inline)
        }
    }

struct AcountSettingView_Previews: PreviewProvider {
    static var previews: some View {
        AccountSettingView()
    }
}
