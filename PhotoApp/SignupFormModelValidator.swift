//
//  SignupFormModelValidator.swift
//  PhotoApp
//
//  Created by Imalka Muthukumara on 2022-06-07.
//

import Foundation


class SignupFormModelValidator {
    
    func isFirstNameValid(firstName: String) -> Bool{
        var returnValue = true
        
        if firstName.count < SignUpConstant.firstNameMinLength || firstName.count > SignUpConstant.firstNameMaxLength {
            returnValue = false
        }
        return returnValue
    }
    
    func isValidLastName(lastName: String) -> Bool{
        var returnValue = true
        
        if lastName.isEmpty{
            returnValue = false
        }
        return returnValue
    }
    
    func isValidEmailFormat(email: String) -> Bool {
       return NSPredicate(format: "SELF MATCHES %@", "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}").evaluate(with: email)
    }
}
