//
//  ContentView.swift
//  CounterApp
//
//  Created by 高橋岳宏 on 2020/08/31.
//  Copyright © 2020 高橋岳宏. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var count: Int = 1
    var body: some View {
        VStack(alignment: .center) {
            Text("current count: \(count)").font(.largeTitle).padding()
            HStack(alignment: .center) {
                Button(action: {
                    if (self.count < 100) {
                        self.count += 1
                    }
                }) {
                    if (self.count < 100) {
                        Text("+ Increment")
                        .bold()
                        .font(.headline)
                        .padding()
                    } else {
                        Text("+ Increment")
                        .disabled(true)
                        .font(.headline)
                        .padding()
                    }
                }
                Button(action: {
                    if (self.count > 1) {
                        self.count -= 1
                    }
                }) {
                    if (self.count > 1) {
                        Text("- Decrement")
                            .bold()
                            .font(.headline)
                            .padding()
                    } else {
                        Text("- Decrement")
                            .disabled(true)
                            .font(.headline)
                            .padding()
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
