
/*
Write a program that meets the following requirements:

A. Declare an array called people of type String with 5 people. (5 points)
B. Display the size of the people array. (2 points)
C. Print all the values of the array using the for-in loop structure. (5 points)
*/


let people = ["Juvey","Jasso","Jimenez","Dariel","Armando"]

func showAll(){
    print("The array size is: \(people.count)")
    print("Every value of the array is: ")
    for i in people {
        print(i)
    }
}
