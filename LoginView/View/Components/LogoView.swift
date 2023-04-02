//
//  LogoView.swift
//  LoginView
//
//  Created by MacAmd on 2/4/23.
//

import SwiftUI

struct LogoView: View {
    var body: some View {
        Image("logo")
            .resizable()
            .renderingMode(.template)
            .preferredColorScheme(.dark)
            .foregroundColor(.white)
            .frame(width: 60, height: 60)
    }
}

struct LogoView_Previews: PreviewProvider {
    static var previews: some View {
        LogoView()
    }
}
