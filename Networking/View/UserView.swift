//
//  UserView.swift
//  Networking
//
//  Created by Hariom Palkar on 26/10/20.
//

import Foundation
import SwiftUI

struct UserView: View {
    @ObservedObject var viewModel = ViewModel()
    @State var user = User(uid: "", name: "", profilePicture: "")
    var body: some View {
        ZStack(alignment: .leading){
                HStack(alignment: .center){
                    HStack{
                        Image(user.profilePicture)
                            .clipped()
                        Text(user.name)
                            .foregroundColor(.white)
                        Spacer()
                    }
                }
                .padding(.all, 16)
            }
            .frame(width: (UIScreen.main.bounds.width - 32), height: (UIScreen.main.bounds.height/5))
            .background(Color(.green))
            .cornerRadius(15) 
        .onAppear {
            self.viewModel.getUser()
        }
    }
}

struct User_Previews: PreviewProvider {
    static var previews: some View {
        UserView()
    }
}
