//
//  MovieSwiftUITests.swift
//  MovieSwiftUITests
//
//  Created by Dongjun Lee on 11/19/24.
//

import XCTest
import Combine

final class MovieSwiftUITests: XCTestCase {
    
    private var cancellables: Set<AnyCancellable> = []
    
    func testFetchMovies() throws {
        let httpClient = HTTPClient()
        let expectation = XCTestExpectation(description: "Received movies")
        httpClient.fetchMovies(search: "Batman")
            .sink { completion in
                switch completion {
                case .finished:
                    break
                case .failure(let error):
                    XCTFail("Request failed with error \(error)")
                }
            } receiveValue: { movies in
                XCTAssertTrue(movies.count > 0)
                expectation.fulfill()
            }.store(in: &cancellables)
        
        wait(for: [expectation], timeout: 5.0)
        
    }
    
    
}