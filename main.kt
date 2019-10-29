fun main() {
    var Hives = mutableListOf<Hive>()
    Hives.add(newHive())
    Hives.add(newHive())
    Hives.forEach {hive -> describeHive(hive)}
}

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
    println("How many frames?")
    var frames = readLine().toString().toInt()
    val h = Hive(type,name)
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
    
}