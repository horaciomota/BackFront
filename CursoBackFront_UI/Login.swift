//
//  Login.swift
//  CursoBackFront_UI
//
//  Created by Horacio Mota on 03/10/2023.
//

import SwiftUI

struct Login: View {
    
    @State var email: String = ""
    @State var password: String = ""

    
    var body: some View {

        ZStack {
            Color.black.ignoresSafeArea(.all)
            VStack () {
                Text("Login")
                .foregroundColor(.white)
                .font(.system(size: 40, weight: .bold))
             
             TextField("Digite seu email", text: $email)
                    .textFieldStyle(.roundedBorder)
                    .foregroundColor(Color.black)
                    .keyboardType(.emailAddress)
                    .padding(.horizontal)
             
                
            SecureField("Digite seu email", text: $password)
                    .textFieldStyle(.roundedBorder)
                    .foregroundColor(Color.black)
                    .keyboardType(.emailAddress)
                    .padding(.horizontal)
                
                Spacer()
            }
        }


    }
}

struct Login_Previews: PreviewProvider {
    static var previews: some View {
        Login()
    }
}
