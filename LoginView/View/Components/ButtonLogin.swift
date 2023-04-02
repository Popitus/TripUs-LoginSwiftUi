//
//  ButtonLogin.swift
//  LoginView
//
//  Created by MacAmd on 2/4/23.
//

import SwiftUI

struct ButtonLogin: View {
    var body: some View {
        Button {
            // TODO: Button for login
        } label: {
            Text("SING IN")
                .foregroundColor(Color.white)
        }
        .frame(maxWidth: .infinity, maxHeight: 50)
        .background(Color.darkGreen)
        .cornerRadius(22)
        .padding(.horizontal, 24)
        

    }
}

struct ButtonLogin_Previews: PreviewProvider {
    static var previews: some View {
        ButtonLogin()
    }
}
