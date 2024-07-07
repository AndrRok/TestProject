//
//  InfiniteScrollView.swift
//  TestProject
//
//  Created by ARMBP on 7/7/24.
//

import SwiftUI

/// Чтобы включить, нужно просто поменять внутри файла TestProjectApp.swift основной экран

struct InfiniteScrollView: View {
    
    @State var range: Int = 5
    
    var body: some View {
        ScrollView {
            LazyVStack {
                ForEach(0...range, id: \.self) { value in
                    CellView()
                    Divider()
                }
                ProgressView()
                    .onAppear{
                        if range == 500 {//в принципе можно указать Int.max
                            range = 0
                        } else {
                            range += 5//все равно ограничено величиной Int
                        }
                    }
            }
        }
        .background(Color.customPurple)
    }
}

#Preview {
    InfiniteScrollView()
}

private enum CellForm: CaseIterable {
    case one, two, three, four, five
}

struct CellView: View {
    
    private var randomForm: CellForm? = CellForm.allCases.randomElement()
    
    var body: some View {
        ZStack {
            
            switch randomForm {
                case .one:
                    HStack {
                        VStack {
                            ForEach(0...Int.random(in: 0...5), id: \.self) { _ in
                                StrokeRectangle()
                            }
                            
                        }
                        StrokeRectangle()
                    }
                    
                case .two:
                    HStack {
                        StrokeRectangle()
                        
                        VStack {
                            ForEach(0...Int.random(in: 0...5), id: \.self) { _ in
                                StrokeRectangle()
                            }
                        }
                    }
                    
                case .three:
                    VStack {
                        HStack {
                            ForEach(0...Int.random(in: 0...5), id: \.self) { _ in
                                StrokeRectangle()
                            }
                        }
                        StrokeRectangle()
                    }
                    
                case .four:
                    VStack {
                        StrokeRectangle()
                        
                        HStack {
                            ForEach(0...Int.random(in: 0...3), id: \.self) { _ in
                                StrokeRectangle()
                            }
                        }
                    }
                    
                case .five:
                    HStack {
                        ForEach(0...Int.random(in: 0...5), id: \.self) { _ in
                            StrokeRectangle()
                        }
                    }
                    
                case .none:
                    EmptyView()
            }
            
            Text(String(UnicodeScalar(Array(0x1F300...0x1F3F0).randomElement()!)!))
                .font(.system(size: 140))
                .opacity(0.5)
            
        }
        .frame(width: 300, height: 300)
    }
}

struct StrokeRectangle: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 40)
            .strokeBorder(Color.random, style: StrokeStyle(lineWidth: 4, dash: [10]))
    }
}

extension Color {
    static var random: Color {
        return Color(
            red: .random(in: 0...1),
            green: .random(in: 0...1),
            blue: .random(in: 0...1)
        )
    }
}
