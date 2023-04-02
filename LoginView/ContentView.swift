//
//  ContentView.swift
//  LoginView
//
//  Created by MacAmd on 2/4/23.
//

import SwiftUI

struct ContentView: View {
    
    
    var body: some View {
        ZStack {
            LoopingVideo()
                .edgesIgnoringSafeArea(.all)
            VStack {
                HeaderText()
                Spacer()
                LogoView()
                CustomTextFieldUser(username: "Username")
                CustomTextFieldPassword(password: "Password")
                ButtonLogin()
                NoAccountView()
                    .padding(.top, 30)
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
