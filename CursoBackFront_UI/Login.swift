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
            VStack (spacing: 10){
                Text("Login")
                .foregroundColor(.white)
                .font(.system(size: 40, weight: .bold))
             
             TextField("Digite seu email", text: $email)
                    .textFieldStyle(.roundedBorder)
                    .foregroundColor(Color.black)
                    .keyboardType(.emailAddress)
             
                
            SecureField("Digite sua senha", text: $password)
                    .textFieldStyle(.roundedBorder)
                    .foregroundColor(Color.black)
                    .keyboardType(.emailAddress)
                
                Button {
                    print("Clique no botao")
                } label: {
                    Text("Login")
                        .frame(height: 40)
                        .frame(maxWidth: .infinity)
                        .foregroundColor(.white)
                        .font(.system(size: 20, weight: .bold))
                        .background(Color(red: 228/225, green: 50/285, blue: 128/255))
                        .cornerRadius(8)
                    
                }
                
                HStack {
                    Text("Nao tem conta?")
                        .foregroundColor(Color.white)
                    
                    Button {
                        print("Clique no cadastre-se")
                    } label: {
                        Text("Cadastre-se")
                            .foregroundColor(Color(red: 228/225, green: 50/285, blue: 128/255))
                            .font(.system(size: 18, weight: .semibold))
                        
                    }
                    
                }

                
                Spacer()
            }
            .padding(.horizontal, 20)
        }


    }
}

struct Login_Previews: PreviewProvider {
    static var previews: some View {
        Login()
    }
}
