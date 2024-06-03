BeforeAll {
    function script ([string]$Name = '*') {
        $person = @(
            @{ Name = 'Pablo'}
            @{ Name = 'Maria'}
            @{ Name = 'Pepe'}
            @{ Name = 'Iker'}
            @{ Name = 'Manolo'}
            @{ Name = 'Noelia'}
            @{ Name = 'Paula'}
            @{ Name = 'Jose'}
        ) | ForEach-Object { [pscustomobject] $_}
        
        $person | Where-Object { $_.Name -like $Name }
    }
}

Describe 'script' {
    It 'Lista de personas de 8' {
        $allperson = script
        $allperson.count | should -Be 8
    }
}