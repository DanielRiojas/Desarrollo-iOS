//Actividad: Conociendo Swift
//Leonardo Daniel Riojas Sanchez A00825968

import UIKit

//Ejercicio 1 Variables y Constantes

// Escribe la declaración de la variable distancia de tipo flotante sin valor inicial
var distancia : Float

// Escribe la declaración de la variable nombre con el valor inicial "Jorge"
var nombre = "Jorge"

// Escribe la declaración de la constante edad con valor inicial 25
let edad = 25

// Escribe la declaración de la constante posicion de tipo double con valor inicial 2.5
let posicion : Float = 2.5


//Ejercicio 2 Tipos de datos Opcionales

// Escribe la declaración de la variable segundoNombre de tipo String Opcional
var segundoNombre: String?

// pon valor a la variable segundoNombre
segundoNombre = "Daniel"

// muestra el valor de la variable segundoNombre en la consola, asegúrate que no aparezca la palabra Optional
print(segundoNombre!)

//Ejercicio 3 Strings

// declara la constante peso con un valor de 2.5
let peso = 2.5

// ahora muestra el string "El peso del paquete es XX Kg" - usa interpolación de tipos
print("El peso del paquete es \(peso) Kg")

// ahora muestra el string anterior, pero usando concatenación, convierte peso a String
// observa que no estás haciendo un cast, sino utilizando un objeto de la clase String
print("El peso del paquete es " + String(peso) + " Kg")

// declara la constante mensaje que tenga como valor un string de varios renglones
let mensaje = """
    hola
    este es
    un mensaje
    de varios
    rengoles...
    """

// muestra el mensaje
print(mensaje)

//Ejercicio 4 Arreglos

// Declara una variable arregloNumeros para un arreglo de números enteros (sin crear el objeto)
var arregloNumeros: [Int]

// Modifica el valor de la variable arregloNumeros para que contenga un arreglo de enteros vacío
arregloNumeros = []
var arrNum = [Int]()

// Crea una variable arregloLetras inicianizándola con un arreglo de strings vacío
var arregloLetras = [String]()


// Crea una constante que esté inicializada con un arreglo de Strings
var arrString = ["a", "b", "c"]

// muestra en la consola alguno de los elementos del arreglo
print(arrString[1])

// muestra en la consola el valor de los atributos first, last y count para un arreglo
// asegúrate que no se muestre en la consola la palabra Optional.
print(arrString.first!, arrString.last!, arrString.count)

// agrega un elemento a la lista
arrString.append("nuevo")
print(arrString)

//Ejercicio 1. Estatutos de control

// Crea una variable numérica y ponle valor inicial, luego escribe un estatuto if para saber si esa variable es > 5
var num = 4
if num > 5 {
    print("Es mayor")
}
else {
    print("No es")
}
// Declara una variable string opcional con valor inicial de "hola"
var varStr: String! = "hola"

// Haz una instrucción "if let " para mostrar el valor de la variable del punto anterior en la pantalla
if let texto = varStr {
    print(texto)
}
else {
    print("nulo")
}

// Crea un arreglo con datos numéricos.
var arreglo = [1, 2, 3, 4, 5]

// Luego escribe un estatuto for que recorra los datos de un arreglo y los muestre en la consola
print("-----")
for dato in arreglo {
    print(dato)
}

// Escribe un estatuto for que recorra los elementos de un rango. Usa un rango de 1 a 5 sin incluir el 5
print("-----")
for dato in 1..<5 {
    print(dato)
}

// Escribe un estatuto for que recorra los elementos de un rango de 1 a 5 incluyendo el 5
print("-----")
for dato in 1...5 {
    print(dato)
}

//Ejercicio 1. Funciones
// Escribe una función que calcule y regrese el área de un triángulo dadas su base y su altura
func triangleArea(base : Int, heigh : Int) -> Int {
    base * heigh / 2;
}

// Escribe la llamada de la función
print("-> ", triangleArea(base: 3, heigh: 4))

// Modifica la función para que el nombre de los parámetros al declarar la función sea diferente
// del nombre de los parámetros al llamarla
func triangleArea2(base : Int, times heigh : Int) -> Int {
    base * heigh / 2;
}

// Escribe la llamada de la función
print("-> ", triangleArea2(base: 3, times: 4))

// Modifica la función para que no necesites poner nombres a los parámetros para llamarla
func triangleArea3(_ base : Int, _ heigh : Int) -> Int {
    base * heigh / 2;
}
// Escribe la llamada de la función
print("-> ", triangleArea3(3, 4))

// Escribe una función que tenga un parámetro con valor default
func defaultVariable(var1 : String = "Hola Mundo"){
    print(var1)
}

// Escribe la llamada de dicha función sin enviar valor al parámetro que tiene valor default
defaultVariable()

//Ejercicio 2. Más funciones

// Escribe una función que tenga como valor de retorno 2 valores (una tupla)
func tupla(num1 : Int, num2 : Int) -> (sum: Int, mult: Int){
    let sum = num1 + num2
    let mult = num1 * num2
    
    return(sum, mult)
}

// Escribe la llamada de la función
let call = tupla(num1: 5, num2: 4)

// Muestra en la pantalla los valores de la tupla que recibiste como valor de retorno
print(call.sum, " & ", call.mult)

//Ejercicio 3. Funciones como parámetro
// Escribe la función suma que reciba 2 números y regrese su suma
print("-----")
func suma(valor1 : Int, valor2 : Int) -> Int {
    valor1 + valor2
}

print("->", suma(valor1: 2, valor2: 3))

// Escribe la función multiplica que reciba 2 números y regrese su multiplicación
print("-----")
func multiplicacion(_ valor1 : Int, _ valor2 : Int) -> Int {
    valor1 * valor2
}

print(multiplicacion(5, 4))
// Escribe una función aplicaOperación que reciba como parámetro 2 números y una función operacion
// llama a la función operacion usando como parámetros los 2 números recibidos
// regresa como valor de retorno el valor que regresa la función operación
// Llama 2 veces a la función aplicaOperación usando como tercer parámetro la función suma y la función multiplica
func aplicaOperacion(num1 : Int, num2 : Int, operacion : (Int, Int) -> Int) -> Int {
    operacion(num1, num2)
}

print(aplicaOperacion(num1: 5, num2: 6, operacion: multiplicacion))
//Ejercicio 4. Closures

// Ahora llama a la funcion aplicaOperación pero usando un closure en lugar de enviar una función
aplicaOperacion(num1: 5, num2: 6){ valor1, valor2 in
    valor1 + valor2
}


