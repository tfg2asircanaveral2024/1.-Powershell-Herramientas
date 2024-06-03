function menuprincipal {
    Clear-Host
    Write-Host "MENU PRINCIPAL SCRIPT"
    Write-Host "====================="
    Write-Host "[1] TABLA MULTIPLICAR"
    Write-Host "[2] MOSTRAR HOSTNAME"
    Write-Host "[0] SALIR DEL SCRIPT"
}

function nombre {
    Clear-Host
    $nombre = hostname
    Write-Host "El hostname del equipo es " $nombre
}

function tabla {
    Clear-Host
    $num = Read-Host "Introduce un numero"
    for ($i = 0; $i -le 10 ; $i++) {
        $result = $i * $num
        Write-Host $num "X" $i "=" $result
    }
}

function salir {
    Write-Host "Saliendo del programa..."
}

# PROGRAMA PRINCIPAL

do {
    menuprincipal
    $opcion = Read-Host "Introduce una opcion"
    switch($opcion) {
        '1'{tabla}
        '2'{nombre}
        '0'{salir}
        default {write-host "Opcion incorrecta, vuelve a intentarlo"}
    }
    Read-host "Pulsa para continuar"
} While ($opcion -ne 0)