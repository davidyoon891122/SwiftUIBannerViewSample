//
//  ContentView.swift
//  AdmobSwiftUISample
//
//  Created by Davidyoon on 6/17/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView {
            VStack {
                AdmobBannerView()
                    .frame(height: 200)
                
                AdmobBannerView()
                    .frame(height: 100)
                
                AdmobBannerView()
                    .frame(height: 50)
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
