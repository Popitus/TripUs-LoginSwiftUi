//
//  CustomTextField.swift
//  LoginView
//
//  Created by MacAmd on 2/4/23.
//

import SwiftUI

struct CustomTextFieldUser: View {
    
    // Properties
    @State var username: String
    
    var body: some View {
        TextField("Username", text: $username)
            .frame(height: 50)
            .padding(.leading, 40)
            .foregroundColor(Color.gray)
            .background(Color.white)
            .cornerRadius(22)
            .overlay(
                HStack {
                    Image(systemName: "person.fill")
                        .foregroundColor(.gray)
                        .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                        .padding(.leading, 8)
                }
            )
            .padding(.horizontal, 24)
    }
}

struct CustomTextField_Previews: PreviewProvider {
    static var previews: some View {
        CustomTextFieldUser(username: "Username")
            .previewLayout(.fixed(width: 200, height: 200))
    }
}
