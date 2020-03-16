//
//  SwiftUIView.swift
//  SwiftUIHostingDemo
//
//  Created by Hardik.Ramoliya on 16/03/20.
//  Copyright © 2020 Hardik.Ramoliya. All rights reserved.
//

import SwiftUI

struct SwiftUIView: View {
    var body: some View {
        VStack {
            Circle()
                .fill(Color.blue)
            Text("my text")
                .foregroundColor(Color.white)
        }
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView()
    }
}
