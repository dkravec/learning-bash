#! /bin/sh
echo "You are preforming $1"

unknownEvent() {
    echo "$1 is an unknown event"
}
event1() {
    echo "hello what is your name?"
    read name
    echo "hello $name"
}

event2() {
    echo "How old are you??"
    read age

    if [ $age -lt 10 ]
    then
        echo "It is a one digit number"
    else
        echo "It is a two digit number"
    fi

    if [ $age -gt 17 ]
    then
        echo "You can drink! but not in the US"
    elif [ $age -gt 21 ]
    then
        echo "You can drink!"
    else
        echo "You can't drink"
    fi
}

event3() {
    echo "Enter your lucky number"
    read numberLucky

    if [ $numberLucky -eq 101 ]
    then
        echo "You got 1st prize"
    elif [ $numberLucky -eq 510 ]
    then
        echo "You got 2nd price"
    elif [ $numberLucky -eq 999 ]
    then
        echo "You got 3rd price"
    else
        echo "Sorry, you won nothing, try again next time."
    fi
}
event4() {
    echo "Total arugments : $#"
    echo "1st Argument = $1"
    echo "2nd Argument = $2"
    echo "3rd Argument = $3"
}
event5() {
    # run with X=39 Y=24
    for arg in "$@"
    do
        index=$(echo $arg | cut -f1 -d=)
        val=$(echo $arg | cut -f2 -d=)
        case $index in
            X) x=$val;;
            Y) y=$val;;
            *)
        esac
    done
    ((result=x+y))
    echo "X+Y=$result"
}
event5() {
    string1="Linux"
    string2="Hint"
    echo "$string1$string2"
    string3="$string1+$string2"
    string3+=" is fine"
    echo $string3
}
event6() {
    Str="Learn bash"
    subStr=${Str:6:5}
    echo $subStr

}
event7() {
    echo "Enter first number"
    read x
    echo "Enter second number"
    read y
    (( sum=x+y ))
    echo "The result of addition is $sum"
}
event8() {
    Reactangle_Area() {
        area=$(($1 * $2))
        echo Area is : $area
    }

    Reactangle_Area 10 20
}
event9() {
    function greeting() {
        greetStr="Hello, $nameGreet"
        echo $greetStr
    }
    echo "Enter your name again"
    read nameGreet
    val=$(greeting)
    echo "return value of the function is $val"
}
event10() {
    echo "Enter new directory name"
    read newDirName
    if [ -d "$newDirName" ]
    then
        echo "Directory exists"
    else
        `mkdir $newDirName`
        echo "Directory created with name $newDirName"
    fi
}
event11() {
    file="book.txt"
    while read line; do
        echo $line
    done < $file
}
event12() {

    echo "enter new file name"
    read newfilename
    touch $newfilename
    echo "done"
}
event13() {
    echo "enter file name to be deleted"
    read filenameDelete
    rm -i $filenameDelete
    echo "done"
}
event14() {
    echo "Before appending to file"
    cat book.txt
    echo "Learning Laravel 5">> book.txt
    echo "after appending the file"
    cat book.txt
}


if [ $1 -eq "1" ]
then
    event1
elif [ $1 -eq "2" ]
then
    event2
elif [ $1 -eq "3" ]
then
    event3
elif [ $1 -eq "4" ]
then
    event4
elif [ $1 -eq "5" ]
then
    event5
elif [ $1 -eq "6" ]
then
    event6
elif [ $1 -eq "7" ]
then
    event7
elif [ $1 -eq "8" ]
then
    event8
elif [ $1 -eq "9" ]
then
    event9
elif [ $1 -eq "10" ]
then
    event10
elif [ $1 -eq "11" ]
then
    event11
elif [ $1 -eq "12" ]
then
    event12
elif [ $1 -eq "13" ]
then
    event13
elif [ $1 -eq "14" ]
then
    event14
else
    unknownEvent
fi
