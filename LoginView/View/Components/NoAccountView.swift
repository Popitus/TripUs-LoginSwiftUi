//
//  NoAccountView.swift
//  LoginView
//
//  Created by MacAmd on 2/4/23.
//

import SwiftUI

struct NoAccountView: View {
    var body: some View {
        HStack {
            Text("Don´t have an account?")
                .foregroundColor(Color.white)
                .font(.system(size: 14))
            Button {
                
            } label: {
               Text ("SIGN UP")
                    .foregroundColor(Color.gray)
                    .font(.system(size: 14))

            }
            
        }
    }
}

struct NoAccountView_Previews: PreviewProvider {
    static var previews: some View {
        NoAccountView()
    }
}
