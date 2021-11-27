
//
//  ContentView.swift
//  AppNameView
//
//  Created by Samsul Hadi on 09/08/21.
//

import SwiftUI

struct ContentView: View {
  var body: some View {
    NavigationView {
      List {
        VStack(alignment: .leading) {
           HStack{
             Image("profile-no-pic")
                .resizable()
                .frame(width: 75, height: 75)
                .clipShape(Circle())
            VStack(alignment: .leading) {
              Text("User name")
                .font(.system(size: 30))
              
            NavigationLink(
              destination: TierView(),
                label: { Text("Tier 1")
                        .font(.system(size: 25))
                })
            }
        }
    }
            NavigationLink(
              destination: AccountSettingView(),
                label: {
                  Text("Account setting")
        })
          
            NavigationLink(
              destination: ContactUsView(),
                label: {
                  Text("Contact us")
        })
            NavigationLink(
              destination: AboutView(),
                 label: {
                  Text("About")
        })
          
        Spacer(minLength: 200)
        Button(action: {}) {
            Text("Logout")
                .foregroundColor(.white)
                .font(.system(size: 25, weight: .medium))
        }.frame(maxWidth: .infinity)
        .padding(.vertical, 15)
        .background(Color.red.opacity(2.0))
        .cornerRadius(10)
        .padding(.horizontal, 0)
 
      }
      .ignoresSafeArea()
        .padding()
          .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
                 .font(.system(size: 24))
                   .navigationBarTitleDisplayMode(.inline)
                      .toolbar {
                       ToolbarItem(placement: .principal) {
                        VStack {
                         Text("Profile").font(.headline)
                    }
                }
            }
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
