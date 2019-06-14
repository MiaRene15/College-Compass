//
//  ScholarshipsTableViewController.swift
//  College Compass (Best)
//
//  Created by Apple on 6/14/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import UIKit

//var pets = ["dog", "cat",]
//var petsdesc = ["bbbbbbbb", "ccccccc"]
var nasyaIndex = 0

struct Scolarship {
    var id: Int
    var title: String
    var text: String
    var URL: String
}


var scolarships = [Scolarship (id: 1 , title:  "WEIRD SCHOLARSHIPS" , text:  "Looking for something outside the box? There’s something out there for everyone — even when it comes to scholarship opportunities. Check out our list of some of the weirdest, oddest, and most unique scholarships to earn extra money for college." , URL:  "https://www.unigo.com/scholarships/weird" ),
                   Scolarship(id: 2 , title:  "ATHLETIC SCHOLARSHIPS" , text:  "Student athletes are often busy finding that perfect balance between excelling in school and performing on the field. If you play a sport in high school, or hope to do so at the school of your dreams, check out these athletic scholarships to help you get there." , URL:  "https://www.unigo.com/scholarships/athletic" ),
                   Scolarship(id: 3 , title:  "SCHOLARSHIPS FOR UNDERGRADUATE STUDENTS" , text:  "Just because you’ve already started college doesn’t mean you should stop looking for scholarships. In fact, we suggest that you keep looking every year that you’re in school. This list of scholarships for college undergrads will help get you started. Browse and apply online today!" , URL:  "https://www.unigo.com/scholarships/undergraduate-students" ),
                   Scolarship (id: 4, title:  "COLLEGE-SPECIFIC SCHOLARSHIPS" , text:  "Whether you enroll at a community college or a four-year university, there is a multitude of college-specific scholarships to help pay for college. Find a college-specific scholarship from our full list and apply online today!" , URL:  "https://www.unigo.com/scholarships/by-college" ),
                   Scolarship (id: 5 , title:  "COMPANY-SPONSORED SCHOLARSHIPS" , text:  "Several companies and organizations sponsor specific scholarships to help students pay for college each year. View our full list of company-sponsored scholarships and apply today!" , URL:  "https://www.unigo.com/scholarships/company-sponsored" ),
                   Scolarship (id: 6 , title:  "MERIT-BASED SCHOLARSHIPS" , text:  "There are many merit-based scholarships available for students who demonstrate high academic achievement in school. View our full list of merit-based scholarships and apply online today!" , URL:  "https://www.unigo.com/scholarships/merit-based" ),
                   Scolarship (id: 7 , title:  "MINORITY SCHOLARSHIPS" , text:  "All students should search for scholarships, including minority students. A minority is anyone whose characteristics make up less than half of the percentage of a group. This includes racial and ethnic minority groups, such as African American, Hispanic, Asian, Pacific Islander, and Native American students. Other minority groups may be based on gender or other characteristics that classify students as underrepresented." , URL:  "https://www.unigo.com/scholarships/minority" ),
                   Scolarship (id: 8 , title:  "SCHOLARSHIP CONTESTS & SWEEPSTAKES" , text:  "Scholarship contests and sweepstakes typically don't require test scores or grades. These scholarship awards allow students to enter contests to win scholarship money. Search our list of contest and sweepstakes scholarships and apply today!" , URL:  "https://www.unigo.com/scholarships/contests-and-sweepstakes" ),
                   Scolarship (id: 9 , title:  "SCHOLARSHIPS BY MAJOR" , text:  "Know what you want to study? There may be scholarships available just for your major. Students of all majors have access to hundreds of scholarships tailored specifically to their major. View our full list of scholarships by major and apply today!" , URL:  "https://www.unigo.com/scholarships/by-major" ),
                   Scolarship (id: 10 , title:  "SCHOLARSHIPS BY STATE" , text:  "Where you live could help you get free money for college. Our list of scholarships by state will help you find even more ways to apply and win money for college. Browse your state and apply now!" , URL:  "https://www.unigo.com/scholarships/by-state" ),
                   Scolarship (id: 11 , title:  "SCHOLARSHIPS BY TYPE" , text:  "Demographics are often used to categorize groups of people within a population. Just think, how do you identify yourself? What are your characteristics? Are you male or female? Are you a first-generation college student? Do you have any diseases or disabilities? Is anyone in your family in the military? Each of these characteristics are part of your identity and many organizations give scholarships to students just for possessing one or more special characteristics." , URL:  "https://www.unigo.com/scholarships/by-type" ),
                   Scolarship (id: 12 , title:  "SCHOLARSHIPS FOR GRADUATE STUDENTS" , text:  "Already have a bachelor's degree? Keep going with these graduate scholarship programs. That’s right, there are scholarships and financial aid available to help you pay for grad school. Take a look and start applying online." , URL:  "https://www.unigo.com/scholarships/graduate-students" ),
                   Scolarship (id: 13 , title:  "SCHOLARSHIPS FOR HIGH SCHOOL STUDENTS" , text:  "Like most high school students, you’ve probably started to look at colleges and have decided what you want to study. Now is the perfect time to begin your search for scholarships, too! There are hundreds of scholarships available for high school students, from freshmen up to seniors. Check out all the free college dollars waiting for you!" , URL:  "https://www.unigo.com/scholarships/high-school-students" ),]




class ScholarshipsTableViewController: UITableViewController {
    
    
    // MARK: - Table view data source
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return scolarships.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        cell.textLabel?.text = scolarships[indexPath.row].title
        
        return cell
    }
    
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        nasyaIndex = indexPath.row
        self.performSegue(withIdentifier: "segwe", sender: self)
    }
    
}
