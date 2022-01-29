//
//  ContentView.swift
//  cleanCodeFollowAlong
//
//  Created by Amber Spadafora on 1/29/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        titleView
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

// MARK: - 1. USE MEANINGFUL NAMES; WRITE CODE THAT EXPRESSES INTENT

var num = 24 // BAD
var numberOfProfiles = 9 // GOOD

// don't give your brain extra work in finding out what variables are used for

func request() {
    
} // no; what are we requesting? is request being used as a verb or a noun?

func fetchProfiles() {
    
} // yes; much more readable

/* MARK: - 2. SINGLE RESPONSIBILITY PRINCIPLE. A FUNCTION SHOULD DO ONE THING WELL AND ONLY
 */

// MARK: - 3. MAKE SURE THAT YOU USE 'IS' WITH BOOLS

//var expired: Bool = false <-- bad practice because it's easy to misinterpret
var isExpired: Bool = false // <--- better practice, uses is with boolean
var expired: Date = Date() // <--- bad practice
var expirationDate: Date = Date() // <--- good practice, clearly shows it is a date

// MARK: - 3. DO NOT USE DOUBLE NEGATIVES
//var isNotClosed = false
//
//func doSomething() {
//    if !isNotClosed {
//        // do something
//    }
//} DON'T USE DOUBLE NEGATIVES!!

var isClosed = true
func doSomething() {
    if isClosed {
        // do something
    }
}

// MARK: - 5. DON'T USE COMMENTS (WHENEVER POSSIBLE). COMMENTS ARE LIES WAITING TO HAPPEN. CODE SHOULD SPEAK FOR ITSELF.


// MARK: - 6. NIL COALESCING OPERATOR
var name = ""
var myName: String?

func rename() {
//    if myName != nil {
//        name = myName!
//    } else {
//        name = "N/A"
//    }
    name = myName ?? "N/A"
}

// MARK: - 7. TERNARY OPERATOR
var response = 0
var message = ""

func checkResponse() {
//    if response == 200 {
//        message = "ok"
//    } else {
//        message = "error"
//    } // okay
    message = response == 200 ? "ok" : "error" // better solution
}

// MARK: - 8. ELIMINATE TYPOS
struct Setup {
    static let apiKey = "12345"
    
    struct Url {
        static let privacyPolicy = "https://www.google.com"
        static let termsOfService = "https://www.yahoo.com"
    }
}

func doSomethingWithApiKey() {
    print(Setup.apiKey)
}

// MARK: - 9. use MARK
// MARK: - Properties
var propertyOne = 0

func functionOne() {
    
}

func functionTwo() {
    
}

// MARK: - 10. Extentions
extension ContentView {
    var titleView: some View {
        Text("Hello").font(.title)
    }
}

// MARK: - 11. BETTER FUNCTION PARAMETERS
func fetchPost(count: Int) {
    
}

// fetchPost(count: 3)

func fetchPosts(_ count: Int = 10) {
    
}
// fetchPost() <-- uses default value provided in func signature
// fetchPost(count: 15) <--- count is unneccessary
// fetchPosts(30) <-- best practice
