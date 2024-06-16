////
////  CustomTabView.swift
////  TestProject
////
////  Created by ARMBP on 6/8/24.
////
//
//import SwiftUI
//
//struct CustomTabBarView<Content: View>: View {
//    @Binding var selection: Int
//    var content: () -> Content
//    
//    var body: some View {
//        VStack(spacing: 0) {
//            content()
//            
//            HStack(alignment: .center) {
//                VStack(spacing: 8) {
//                    if selection == 0  {
//                        Group {
//                            Text("Контакты")
//                                .font(.body1)
//                            Circle()
//                                .frame(width: 4, height: 4)
//                        }
//                        .foregroundStyle(Color.customLabelPrimary)
//                    } else {
//                        Image(.twoPersons)
//                    }
//                }
//                .frame(maxWidth: .infinity)
//                .padding(.top, 22)
//                .onTapGesture {
//                    selection = 0
//                }
//                
//                VStack(spacing: 8) {
//                    if selection == 1  {
//                        Group {
//                            Text("Чаты")
//                                .font(.body1)
//                            Circle()
//                                .frame(width: 4, height: 4)
//                        }
//                        .foregroundStyle(Color.customLabelPrimary)
//                    } else {
//                        Image(.message)
//                    }
//                }
//                .frame(maxWidth: .infinity)
//                .padding(.top, 22)
//                .onTapGesture {
//                    selection = 1
//                }
//                
//                VStack(spacing: 8) {
//                    if selection == 2  {
//                        Group {
//                            Text("Еще")
//                                .font(.body1)
//                            Circle()
//                                .frame(width: 4, height: 4)
//                        }
//                        .foregroundStyle(Color.customLabelPrimary)
//                    } else {
//                        Image(.threeDots)
//                    }
//                }
//                .frame(maxWidth: .infinity)
//                .padding(.top, 22)
//                .onTapGesture {
//                    selection = 2
//                }
//            }
//            .background {
//                Rectangle()
//                    .fill(Color.white)
//                    .shadow(color: .black, radius: 8, x: 0, y: 4)
//                    .ignoresSafeArea()
//            }
//        }
//        .ignoresSafeArea(.keyboard)
//    }
//}
