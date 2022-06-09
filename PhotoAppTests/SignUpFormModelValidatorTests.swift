//
//  SignUpFormModelValidator.swift
//  PhotoAppTests
//
//  Created by Imalka Muthukumara on 2022-06-07.
//

import XCTest
@testable import PhotoApp

class SignUpFormModelValidatorTests: XCTestCase {
    
    var sut: SignupFormModelValidator!

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        sut = SignupFormModelValidator()
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        sut = nil
    }

    func testSignupFormModelValidator_WhenValidFirstNameProvided_ShouldReturnTrue(){
        //Arrannge
        //Act
        let isFirstNameValid = sut.isFirstNameValid(firstName: "Imalka")
        //Assert
        XCTAssertTrue(isFirstNameValid,"The isFirstName() should have returned TRUE for a valid first name but returned FASLE")
    }
    
    func testSignupModelValidator_WhenTooShortFirstNameProvided_ShouldReturnFalse(){
        
        //Arrange
        //Act
        let isFirstNameValid = sut.isFirstNameValid(firstName: "I")
        
        //Assert
        XCTAssertFalse(isFirstNameValid,"The isFirstName() should have return FALSE for a name that is shorter than \(SignUpConstant.firstNameMinLength) characters but it has retrined TRUE")
    }
    
    func testWhenTooLongFirstNameProvided_ShouldReturnFalse(){
        
        //Arrange
        //Act
        let isFirstNameValid = sut.isFirstNameValid(firstName: "testnametestname")
        
        //Assert
        XCTAssertFalse(isFirstNameValid,"The isFirstName() should have return FALSE for a name that is longer than \(SignUpConstant.firstNameMaxLength) characters but it has retrined TRUE")
    }
    
    func testSignupModelValidator_whenValidLastNameProvided_shouldReturnTrue(){
        //Arrange
        //Act
        let isValidLastName = sut.isValidLastName(lastName: "Muthukumara")
        //Assert
        XCTAssertTrue(isValidLastName,"The isLastName() should have return TRUE but it has retrined FALSE")
    }
    
    // MARK: Email Address Validation
    func testSignupFormModelValidator_WhenValidEmailProvided_ShouldReturnTrue() {
        let isValidEmailFormat = sut.isValidEmailFormat(email: "test@test.com")
        
        XCTAssertTrue(isValidEmailFormat, "Provided valid email address format but validation did not pass")
    }
    
    func testSignupFormModelValidator_WhenInValidEmailProvided_ShouldReturnFalse() {
        let isValidEmailFormat = sut.isValidEmailFormat(email: "test@test")
        
        XCTAssertFalse(isValidEmailFormat, "Provided invalid email address format but validation still passed")
    }

}

