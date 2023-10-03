//
//  changeValue.swift
//  CursoBackFront_UI
//
//  Created by Horacio Mota on 03/10/2023.
//

import SwiftUI

/// O state so se reflete dentro da propria classe

struct changeValue: View {
    @State private var value: CGFloat = 50
    var body: some View {

        VStack {
            setValue(ValorPreciso: $value)
            Slider(value: $value, in: 0...100, step: 10)
                .padding()
            
        }

    }
}

struct setValue: View {
    
    @Binding var ValorPreciso: CGFloat
    
    var body: some View {
        
     Text("\(ValorPreciso)")
        
    }
}

struct changeValue_Previews: PreviewProvider {
    static var previews: some View {
        changeValue()
    }
}
