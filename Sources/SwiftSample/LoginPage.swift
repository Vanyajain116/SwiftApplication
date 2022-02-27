//
//  LoginPage.swift
//  XTrackerTSA
//
//  Created by Ishita Mundra on 2/26/22.
//
import SwiftUI

struct LoginView: View {
    @State var mail = ""
    @State var password = ""
    var body: some View {
        VStack (spacing:15) {
            Spacer()
            Text("Xtracker")
                .font(.system(size: 64, weight: .semibold))
                .foregroundColor(.black)
            HStack {
                Image(systemName: "envelope")
                    .foregroundColor(.gray)
                TextField("Email", text: $mail)
            }.frame(height: 60)
            .padding(.horizontal, 20)
            .background(Color.black)
            .cornerRadius(8)
            .padding(.horizontal, 20)
            HStack {
                Image(systemName: "lock")
                    .foregroundColor(.gray)
                SecureField("Password", text: $mail)
            }.frame(height: 60)
            .padding(.horizontal, 20)
            .background(Color.black)
            .cornerRadius(8)
            .padding(.horizontal, 20)
            Button(action: {}) {
                Text("Login")
                .foregroundColor(.white)
                .font(.system(size: 24, weight: .medium))
            }.frame(maxWidth: .infinity)
            .padding(.vertical, 20)
            .background(Color.red.opacity(0.8))
            .cornerRadius(8)
            .padding(.horizontal, 20)
        }
        
        
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
