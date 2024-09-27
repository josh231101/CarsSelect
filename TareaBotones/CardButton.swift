//
//  CardButton.swift
//  TareaBotones
//
//  Created by Josué Arreola on 27/09/24.
//

import SwiftUI

struct CardButton: View {
    var id: String = "1"
    var carName: String = "Car"
    var hp: String = "200hp"
    var image: String = "skyline"
    @Binding var selectedIndex: String
    @State var degree: Double = 0
    
    var selected: Bool {
        return selectedIndex == id
    }

    var body: some View {
            Button(action: {
                withAnimation(.easeIn(duration: 0.5)){
                    selectedIndex = id
                    degree += 360
                }
            }) {
                HStack {
                    Text(selected ? hp: carName).font(.system(size: 20)).padding()
                    Spacer()
                    Image(image).resizable().frame(width: 100, height: 100).rotationEffect(.degrees(degree))
                }.frame(width: .infinity)
                
                
            }.padding()
                .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                .background(selected ? Color.secondary : Color.mint)
                .cornerRadius(20)
        }
}

#Preview {
    CardButton(selectedIndex: .constant("0"))
}
