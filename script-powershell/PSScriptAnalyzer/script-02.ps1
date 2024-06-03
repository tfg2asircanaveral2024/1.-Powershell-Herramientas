$num1 = Read-Host "Introduce primer numero"

$num2 = read-host "Introduce segundo numero"

$result = [int]$num1 + [int]$num2

if ($result -eq '') {
    write-host "No se a escrito ningun numero"
} else {
    write-host "La suma de los dos numeros es $result"
}