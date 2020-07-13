//
//  HomeView.swift
//  News Report
//
//  Created by Anthony Awuzie on 7/12/20.
//

import SwiftUI

struct HomeView: View {
    @State var homeVM = HomeViewModel()
    var body: some View {
        Text("Hello, Anthony!")
            .onAppear {
                print(homeVM.$topHeadlines)
            }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
