import UIKit

let personsArray = [["name":"Raju","dateOfBirth":"21-8-2022"],["name":"Devansh","dateOfBirth":"21-6-2021"],["name":"Ravi","dateOfBirth":"21-6-2022"],["name":"Kiran","dateOfBirth":"21-6-2020"]]


func dateSort(person1:[String:Any], person2:[String:Any]) -> Bool {
    guard let person1DateOfBirth = person1["dateOfBirth"] as? String, let person2DateOfBirth = person2["dateOfBirth"] as? String else {
        return false
    }
    let dateFormat = DateFormatter()
    dateFormat.dateFormat = "dd-mm-yyyy" //change date format here based on your date format
    let date1 = dateFormat.date(from: person1DateOfBirth)
    let date2 = dateFormat.date(from: person2DateOfBirth)

    return date1! < date2!
}

let sortedpersonsArray = personsArray.sorted { dateSort(person1:$0, person2:$1) }
print(sortedpersonsArray)
