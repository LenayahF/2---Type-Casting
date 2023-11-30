/*:
## Exercise - Type Casting and Inspection

 Create a collection of type [Any], including a few doubles, integers, strings, and booleans within the collection. Print the contents of the collection.
 */
var collection:[Any] = [3.4, "string", true, false, 3,4, 5]

print(collection)
//:  Loop through the collection. For each integer, print "The integer has a value of ", followed by the integer value. Repeat the steps for doubles, strings and booleans.
for i in collection{
    if i is Int{
        print("The integer has a value of \(i)")
        
    }
    if i is String{
        print("The string has a value of \(i)")
    }
    if i is Bool{
        print("The booleans has a value of \(i)")
    }
}

//:  Create a [String : Any] dictionary, where the values are a mixture of doubles, integers, strings, and booleans. Print the key/value pairs within the collection
var collect:[String:Any] = ["A": 1, "B": 2, "C": 3, "D": 4, "E": 5, "F": "HI"]
print(collect)

var total = 0.0

for(_, value) in collect
{
    if let value = value as? Int
    {
        total += Double(value)
    }
    else if let value = value as? Double
    {
        total += value
    }
    else if let value = value as? String
    {
        total += 1.0
    }
    else if let value = value as? Bool
    {
        if value == true{
            total += 2.0
        }
        else{
            total == 3.0
        }
    }
}
print(total)
//:  Create a variable `total` of type `Double` set to 0. Then loop through the dictionary, and add the value of each integer and double to your variable's value. For each string value, add 1 to the total. For each boolean, add 2 to the total if the boolean is `true`, or subtract 3 if it's `false`. Print the value of `total`.
 

//:  Create a variable `total2` of type `Double` set to 0. Loop through the collection again, adding up all the integers and doubles. For each string that you come across during the loop, attempt to convert the string into a number, and add that value to the total. Ignore booleans. Print the total.
 

/*:
page 1 of 2  |  [Next: App Exercise - Workout Types](@next)
 */
