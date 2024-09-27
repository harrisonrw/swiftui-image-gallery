//
//  ContentView.swift
//  ImageGallery
//
//  Created by Robert Harrison on 9/13/24.
//

import SwiftUI

struct ContentView: View {
    private let images = ["car", "bus", "tram", "cablecar", "truck.box", "sailboat", "ferry", "airplane", "bicycle", "scooter"]

    private let cellSize: CGFloat = 100

    var body: some View {
        VStack(alignment: .leading) {
            ScrollView {
                LazyVGrid(columns: [GridItem(.adaptive(minimum: cellSize, maximum: .infinity), spacing: 2)], spacing: 2) {
                   ForEach(images, id: \.self) { image in
                       Image(systemName: image)
                           .font(.system(size: 48))
                           .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
                           .aspectRatio(1, contentMode: .fit)
                           .background(Color.indigo)
                           .foregroundStyle(.white)
                   }
               }
           }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
