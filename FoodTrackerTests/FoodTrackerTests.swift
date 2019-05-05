//
//  FoodTrackerTests.swift
//  FoodTrackerTests
//
//  Created by HaroldDavidson on 4/21/19.
//  Copyright © 2019 HaroldDavidson. All rights reserved.
//

import XCTest
@testable import FoodTracker // line needed to access the project

class FoodTrackerTests: XCTestCase {


    //MARK: Meal Class Tests
    // Confirm that the Meal initializer returns a meal object when passed valid parameters.
    func testMealInitializerSecceeds() {
        
        // Zero rating
        let zeroRatingMeal = Meal(name: "Zero", photo: nil, rating: 0)
        XCTAssertNotNil(zeroRatingMeal)
        
        // Highest positive rating
        let positiveRatingMeal = Meal.init(name: "Positive", photo: nil, rating: 5)
        XCTAssertNotNil(positiveRatingMeal)
    }
    
    // Confirm that the Meal initializer returns nil when passed a negative rating or an empty name.
    func testMealInitializationFails() {
        
        // Negative rating
        let negativeRatingMeal = Meal.init(name: "Negative", photo: nil, rating: -1)
        XCTAssertNil(negativeRatingMeal)
        
        // Rating exceeds maximum
        let largeRatingMeal = Meal.init(name: "Large", photo: nil, rating: 6)
        XCTAssertNil(largeRatingMeal)
        
        // Empty String
        let emptyStringMeal = Meal.init(name: "", photo: nil, rating: 0)
        XCTAssertNil(emptyStringMeal)
    }
}
