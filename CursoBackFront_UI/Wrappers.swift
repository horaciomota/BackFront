//
//  Wrappers.swift
//  CursoBackFront_UI
//
//  Created by Horacio Mota on 03/10/2023.
//

import SwiftUI

struct Wrappers: View {

    @State private var exibirMensagem: Bool = true

    var body: some View {
        VStack {
            Text(exibirMensagem ? "Mundo" : "Ola")
                .font(.system(size: 30, weight: .bold))
            
            Button("Alterar mensagem") {
                exibirMensagem.toggle()
            }
            .padding()
            .foregroundColor(.white)
            .background(Color.blue)
            .cornerRadius(8)
        }
        
    }
}

struct Wrappers_Previews: PreviewProvider {
    static var previews: some View {
        Wrappers()
    }
}
