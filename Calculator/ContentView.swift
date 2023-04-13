//
//  ContentView.swift
//  Calculator
//
//  Created by Chinmay Chaudhari on 13/04/23.
//

import SwiftUI
import UIKit

struct ContentView: View {
    @State private var username: String = ""  ;
    var body: some View {
        VStack {
            TextField("THIS IS THE TEXT FIELD",text: $username)
            HStack{
                Button("1") {
                    print("1 pressed")
                }
                .padding(40.0)
                .background(Color.gray)

                Button("2") {
                    print("2 pressed")
                }
                .padding(40.0)
                .background(Color.gray)

                Button("3") {
                    print("3 pressed")
                }
                .padding(40.0)
                .background(Color.gray)
                Button("=") {
                    print("3 pressed")
                }
                .padding(40.0)
                .background(Color.gray)
                
            }

            HStack{
                Button("4") {
                    print("4 pressed")
                }
                .padding(40.0)
                .background(Color.gray)

                Button("5") {
                    print("5 pressed")
                }
                .padding(40.0)
                .background(Color.gray)

                Button("6") {
                    print("6 pressed")
                }
                .padding(40.0)
                .background(Color.gray)
                Button("+") {
                    print("3 pressed")
                }
                .padding(40.0)
                .background(Color.gray)
            }

            HStack{
                Button("7") {
                    print("7 pressed")
                }
                .padding(40.0)
                .background(Color.gray)

                Button("8") {
                    print("8 pressed")
                }
                .padding(40.0)
                .background(Color.gray)

                Button("9") {
                    print("9 pressed")
                }
                .padding(40.0)
                .background(Color.gray)
                Button("-") {
                    print("- pressed")
                }
                .padding(40.0)
                .background(Color.gray)
            }
            HStack{
                Button("0") {
                    print("0 pressed")
                }
                .padding(.vertical, 40 )
                .padding(.horizontal, 60 )

                .background(Color.gray)

                Button("/") {
                    print("9 pressed")
                }
                .padding(40.0)
                .background(Color.gray)
                Button("C") {
                    print("Clear pressed")
                }
                .padding(40.0)
                .background(Color.gray)
            }


        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
