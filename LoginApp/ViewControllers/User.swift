//
//  User.swift
//  LoginApp
//
//  Created by Sergey Zakurakin on 29/04/2024.
//

import Foundation


struct User {
    let login: String
    let password: String
    let person: Person
    
    static func getUser() -> User {
        User(
            login: "zak",
            password: "7777",
            person: Person.getPerson()
        )
    }
}

struct Person {
    let name: String
    let surname: String
    let photo: String
    let bio: String
    let job: Company
    
    var fullname: String {
        "\(name) \(surname)"
    }
    
    static func getPerson() -> Person {
        Person(
            name: "Sergey",
            surname: "Zakurakin",
            photo: "Avatar.jpg",
            bio: """
I believe the beauty of moments lies in their uniqueness.
My name is Sergey, and I'm a photographer who is passionately
dedicated to the art of documentary photography.
My vision is to capture the emotions, actions,
and atmosphere of events so they remain forever in your memory.
My photography style is characterized by
deep immersion in the moment and a sense of authenticity.
I strive for my photos to be lively, honest, and
sincere. In each shot, I seek quality, detail, and emotional depth.
 Every client is unique to me, and I believe it's
 important to establish a genuine connection to ensure your
 photos reflect your personality and story. My goal
 is not just to create beautiful images, but to capture
 moments that you will hold dear in your heart
 for years to come. I have been working for
 more than 10 years, shooter more than 300 weddings.
 I am in the TOP 10 best photographers in London
 according to the international resource mywed.com
""",
            job: Company.getCompany()
        )
    }
}


struct Company {
    let title: String
    let jobTitle: JobTitle
    let department: Department
    
    static func getCompany() -> Company {
        Company(
            title: "Freelance",
            jobTitle: .ceo,
            department: .manegment
        )
    }
}

enum JobTitle: String {
    case manager = "Maneger"
    case ceo = "Ceo"
    case worker = "Worker"
}


enum Department: String {
    case manegment = "Manegment"
    case marketing = "Marketing"
    
    
}
