//: Playground - noun: a place where people can play

import UIKit
/*
var Playerdictionary: [Int:String] =
[
15:"Artem Anisimov",
11:"Andrew Desjardins",
81:"Marian Hossa",
88:"Patrick Kane",
16:"Marcus Kruger",
53:"Brandon Mashinter",
72:"Artemi Panarin",
14:"Richard Panik",
19:"Jonathan Toews C",
51:"Brian Campbell",
52:"Erik Gustafsson",
4:"Niklas Hjalmarsson",
2:"Duncan Keith A",
32:"Michal Rozsival",
7:"Brent Seabrook A",
43:"Viktor Svedberg",
57:"Trevor van Riemsdyk",
50:"Corey Crawford",
33:"Scott Darling",
]
 */

var name: [String] =
    [
        "Artem Anisimov",
        "Andrew Desjardins",
        "Marian Hossa",
        "Patrick Kane",
        "Marcus Kruger",
        "Brandon Mashinter",
        "Artemi Panarin",
        "Richard Panik",
        "Jonathan Toews C",
        "Brian Campbell",
        "Erik Gustafsson",
        "Niklas Hjalmarsson",
        "Duncan Keith A",
        "Michal Rozsival",
        "Brent Seabrook A",
        "Viktor Svedberg",
        "Trevor van Riemsdyk",
        "Corey Crawford",
        "Scott Darling",
]
//for(number,name) in Playerdictionary
//{
//print(Playerdictionary)
//}

/*var total:Int = 0
for i in 0 ..< age.count
{
    total = total + age[i]
    print(age[i])
}
var avg = total/age.count

for i in 0 ..< height.count
{
    print(height[i])
}
*/
var age:[Int] = [28, 29, 37, 27, 26, 27, 24,25, 28, 37, 24, 29, 32, 37, 31, 25, 24,31, 27]


var height:[Int] = [76, 73, 73, 71, 72,76, 71, 73, 74,70, 72, 75, 73,73, 75, 80, 74, 74, 78]
func Data()
{
    for i in 0 ..< name.count
    {
        print(name[i], age[i], height[i])
    }
}


func Average()->Double
{
    var sum:Double = 0
    for i in 0 ..< age.count
    {
        sum = sum + Double(age[i])
    }
    return sum/Double(age.count)
}


func SortAge()
{
    for _ in 0 ..< age.count
    {
        for j in 0 ..< age.count - 1
        {
            if(age[j] > age[j + 1])
            {
                let tempage = age[j]
                age[j] = age[j + 1]
                age[j+1] = tempage
                
                let tempheight = height[j]
                height[j] = height[j+1]
                height[j+1] = tempheight
                
                let tempname = name[j]
                name[j] = name[j+1]
                name[j+1] = tempname
            }
            
        }
    }
}



Data()
print("__________Sort By Age___________")

SortAge()

Data()

print("Average player height is \(Average())")