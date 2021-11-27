//
//  TestProfile.swift
//  Profile
//
//  Created by Samsul Hadi on 23/11/21.
//

import SwiftUI

struct AboutView: View {
    var body: some View {
        Text("About")
        .navigationBarTitle("About", displayMode: .inline)
    }
}

struct TestProfile_Previews: PreviewProvider {
    static var previews: some View {
        AboutView()
    }
}
