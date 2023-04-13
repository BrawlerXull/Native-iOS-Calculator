//
//  ContentView.swift
//  Calculator
//
//  Created by Chinmay Chaudhari on 13/04/23.
//

import SwiftUI
import UIKit
import MathParser
struct ContentView: View {
    @State private var input: String = ""  ;
    @State var result:String = "";
//    let parser = MathParser()
    var body: some View {
        VStack {
            TextField("THIS IS THE TEXT FIELD",text: $input)
//            Text("Hello, \(input)!")
            HStack{
                Button("1") {
                    input = input + "1"
                    print("1 pressed")
                    print(input)
                }
                .padding(40.0)
                .background(Color.gray)

                Button("2") {
                    input = input + "2"
                    print("2 pressed")
                }
                .padding(40.0)
                .background(Color.gray)

                Button("3") {
                    input = input + "3"
                    print("3 pressed")
                }
                .padding(40.0)
                .background(Color.gray)
                Button("=") {
                    let parser = MathParser()
                    let evaluator = parser.parse(input)
                    if let evaluator = evaluator {
                        print(evaluator.eval())
                        result = "\(evaluator.eval())"
                        input=result
                    }
                    print("= pressed")
                    
                }
                .padding(40.0)
                .background(Color.gray)
                
            }

            HStack{
                Button("4") {
                    input = input + "4"
                    print("4 pressed")
                }
                .padding(40.0)
                .background(Color.gray)

                Button("5") {
                    input = input + "5"
                    print("5 pressed")
                }
                .padding(40.0)
                .background(Color.gray)

                Button("6") {
                    input = input + "6"
                    print("6 pressed")
                }
                .padding(40.0)
                .background(Color.gray)
                Button("+") {
                    input = input + "+"
                    print("3 pressed")
                }
                .padding(40.0)
                .background(Color.gray)
            }

            HStack{
                Button("7") {
                    input = input + "7"
                    print("7 pressed")
                }
                .padding(40.0)
                .background(Color.gray)

                Button("8") {
                    input = input + "8"
                    print("8 pressed")
                }
                .padding(40.0)
                .background(Color.gray)

                Button("9") {
                    input = input + "9"
                    print("9 pressed")
                }
                .padding(40.0)
                .background(Color.gray)
                Button("-") {
                    input = input + "-"
                    print("- pressed")
                }
                .padding(40.0)
                .background(Color.gray)
            }
            HStack{
                Button("0") {
                    input = input + "0"
                    print("0 pressed")
                }
                .padding(.vertical, 40 )
                .padding(.horizontal, 60 )

                .background(Color.gray)

                Button("/") {
                    input = input + "/"
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
