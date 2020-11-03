//
//  UserViewModel.swift
//  Networking
//
//  Created by Hariom Palkar on 03/11/20.
//

import Foundation
import Combine


class ViewModel: ObservableObject {
    @Published var users: [User] = []
    var cancellationToken: AnyCancellable?
    init() {
        getUser()
    }
}

extension ViewModel {
    func getUser(){
        cancellationToken = Endpoint.request(.user)
            .mapError({ (error) -> Error in
                print(error)
                return error
            })
            .sink(receiveCompletion: {(completion) in
                switch completion {
                case let .failure(error):
                    print("Couldn't get users: \(error)")
                case .finished: break
                }
            }){ users in
                self.users
            }
    }
}

