//
//  ContentView.swift
//  FiveShapesApp
//
//  Created by Smrithi Muralikrishnan on 9/22/26.
//

import SwiftUI
import RealityKit
import RealityKitContent

struct ContentView: View {
    @Environment(\.openImmersiveSpace) var openImmersiveSpace
    var body: some View {
        VStack {
            Model3D(named:"Scene",bundle:
                realityKitContentBundle)
                .padding(.bottom, 50)
            
            Text("Five Shapes")
                .font(.largeTitle)
            Button("Show Shapes") {
            Task {
            await openImmersiveSpace(id: "ImmersiveSpace")
            }
            }
            ToggleImmersiveSpaceButton()
        }
        .padding()
    }
}

#Preview(windowStyle: .automatic) {
    ContentView()
        .environment(AppModel())
}
