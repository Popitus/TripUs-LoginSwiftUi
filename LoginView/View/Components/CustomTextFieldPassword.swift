//
//  CustomTextFieldPassword.swift
//  LoginView
//
//  Created by MacAmd on 2/4/23.
//

import SwiftUI

struct CustomTextFieldPassword: View {
    // Properties
    @State var password: String
    
    var body: some View {
    
        TextField("Password", text: $password)
            .frame(height: 50)
            .padding(.leading, 40)
            .foregroundColor(Color.gray)
            .background(Color.white)
            .cornerRadius(22)
            .overlay(
                HStack {
                    Image(systemName: "lock")
                        .foregroundColor(.gray)
                        .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                        .padding(.leading, 8)
                }
            )
            .padding(.horizontal, 24)
    }
}

struct CustomTextFieldPassword_Previews: PreviewProvider {
    static var previews: some View {
        CustomTextFieldPassword(password: "Password")
    }
}
