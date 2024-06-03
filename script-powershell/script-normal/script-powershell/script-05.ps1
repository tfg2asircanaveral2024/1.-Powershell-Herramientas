Deploy 'ArchivoDespliegue' {
    By FileSystem 'CopiaArchivos' {
        FromSource '/home/pablo/ficheros'
        To '/home/pablo/copias'
        Tagged 'Produccion'
    }

    By FileSystem 'CopiaArchivosBackup' {
        FromSource '/home/pablo/ficheros'
        To '/Backup'
        Tagged 'Backup'
    }
}