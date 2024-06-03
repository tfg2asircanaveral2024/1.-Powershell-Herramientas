Describe "Prueba de archivo" {
    Context "Verificar existencia y contenido del archivo" {

        It "Verifica si el archivo existe" {
            $rutaArchivo = "/home/pablo/proyecto/prueba.txt"
            Test-Path $rutaArchivo | Should -Be $true -Because "El archivo debería existir en la ruta especificada"
        }
    
        It "Verifica el contenido del archivo" {
            $rutaArchivo = "/home/pablo/proyecto/prueba.txt"
            $contenido = Get-Content $rutaArchivo
            $contenido | Should -Be "Prueba de contenido" -Because "El contenido del archivo debería ser el esperado"
        }
    }
}