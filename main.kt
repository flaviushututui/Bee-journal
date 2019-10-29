fun main() {
    mainMenu()
}
var Hives = mutableListOf<Hive>()

class Hive(var type: String, var name: String, var floors: Int = if (type == "horizontal")(1)else(0)){
    var Boxes = mutableListOf<Box>()
}

class Box(var frames: Int, var number: Int)

fun describeHive(hive: Hive){
    println("${hive.type.capitalize()} hive ${hive.name} with" +
            " ${hive.floors} ${oneOrMany(hive.floors, "floor")} " +
            "and ${hive.Boxes.first().frames * hive.floors} frames")
}

fun oneOrMany(number: Int, word: String) = if (number != 1) "${word}s" else word

fun newHive(): Hive{
    println("What type of hive?")
    var type = readLine().toString()

    println("How do you name it?")
    var name = readLine().toString()
    val h = Hive(type,name)

    println("How many frames?")
    var frames = readLine().toString().toInt()

    if (type == "vertical"){
        println("How many floors?")
        var floors  =readLine().toString().toInt()
        h.floors = floors
    }
    for (i in 1..h.floors){
        var number = i
        val b = Box(frames, number)
        h.Boxes.add(b)
    }
    return h
}

fun mainMenu(){
    print("1. Add new Hive  ")
    println("2. Show my hives")
    when (readLine().toString().toInt()){
        1 -> {Hives.add(newHive())
            println("")
            mainMenu()}
        2 -> {Hives.forEach{hive -> describeHive(hive)}
            println("")
           mainMenu()}
    }
}