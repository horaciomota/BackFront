//
//  Wrappers.swift
//  CursoBackFront_UI
//
//  Created by Horacio Mota on 03/10/2023.
//

import SwiftUI

struct Wrappers: View {

    @State private var exibirMensagem: Bool = true
    @State private var texto: String = ""


    var body: some View {
        VStack {
            VStack {
                Text(exibirMensagem ? "Mundo" : "Ola")
                    .font(.system(size: 30, weight: .bold))
                
                Button("Alterar mensagem") {
                    // O toggle sempre vai fazer o contrario do bool. Se for true vira false e vice versa
                    exibirMensagem.toggle()
                }
                .padding()
                .foregroundColor(.white)
                .background(Color.blue)
                .cornerRadius(8)
            }
            
            VStack {
                    
                Text(texto)
                    .font(.system(size: 30, weight: .bold))
                TextField("Digite um texto", text: $texto)
                    .textFieldStyle(.roundedBorder)
                
            }
            .padding()
        }
        
    }
}

struct Wrappers_Previews: PreviewProvider {
    static var previews: some View {
        Wrappers()
    }
}
