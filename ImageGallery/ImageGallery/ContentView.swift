//
//  ContentView.swift
//  ImageGallery
//
//  Created by Robert Harrison on 9/13/24.
//

import SwiftUI

struct ContentView: View {
    @State private var isShowingSFSymbols = true

    private let sfSymbols = ["car", "bus", "tram", "cablecar", "truck.box", "sailboat", "ferry", "airplane", "bicycle", "scooter"]

    private let cellSize: CGFloat = 100

    var body: some View {
        NavigationStack {
            VStack(alignment: .leading) {
                ScrollView {
                    LazyVGrid(columns: [GridItem(.adaptive(minimum: cellSize, maximum: .infinity), spacing: 2)], spacing: 2) {
                        if isShowingSFSymbols {
                            ForEach(sfSymbols, id: \.self) { symbol in
                                Image(systemName: symbol)
                                    .font(.system(size: 48))
                                    .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
                                    .aspectRatio(1, contentMode: .fit)
                                    .background(Color.indigo)
                                    .foregroundStyle(.white)
                            }
                        } else {
                            // TODO: show photos
                        }
                   }
               }
            }
            .navigationTitle("Image Gallery")

            .toolbar {
                Button {
                    isShowingSFSymbols.toggle()
                } label: {
                    Image(systemName: "arrow.triangle.2.circlepath.circle")
                        .font(.system(size: 32))
                        .foregroundStyle(.green)
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
