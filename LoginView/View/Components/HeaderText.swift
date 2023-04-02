//
//  HeaderText.swift
//  LoginView
//
//  Created by MacAmd on 2/4/23.
//

import SwiftUI

struct HeaderText: View {
    var body: some View {
        VStack {
            Text("Start your trip!")
                .font(.system(size: 28, design: .monospaced))
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                .padding(.leading, 24)
                .foregroundColor(Color.white)
            
        
            Divider()
                .background(Color.white)
                .padding(.horizontal, 28)
               

        }
    }
}

struct HeaderText_Previews: PreviewProvider {
    static var previews: some View {
        HeaderText()
    }
}
