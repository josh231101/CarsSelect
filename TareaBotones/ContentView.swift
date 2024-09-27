//
//  ContentView.swift
//  TareaBotones
//
//  Created by Josué Arreola on 27/09/24.
//

import SwiftUI

struct Car {
    var id: String
    var carName: String
    var hp: String
    var image: String
}

struct ContentView: View {
    @State var index: String = "0"

    var body: some View {
        let cars = [
            Car(id: "1",carName: "Eclipse",  hp: "160hp", image: "eclipse"),
            Car(id: "2",carName: "Skyline",  hp: "180hp", image: "skyline"),
            Car(id: "3",carName: "350Z",  hp: "210hp",image: "z"),
        ]
        VStack {
            Text("¡CHOOSE YOUR CAR!")
                .fontWeight(.bold)
                .font(.system(size: 24))
            List {
                ForEach(cars, id: \.self.id) {
                    item in CardButton(id: item.id, carName: item.carName, hp: item.hp, image: item.image, selectedIndex: $index)
                }
            }

        }
        .padding()
    }
}

#Preview {
    ContentView()
}
