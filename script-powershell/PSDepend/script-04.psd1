@{
    ModulesToInstall = @(
        @{
            Name = 'Pester'
            Repository = 'PSGallery'
            RequiredVersion = '5.5.0'
        },
        @{
            Name = 'PSScriptAnalyzer'
            Repository = 'PSGallery'
            RequiredVersion = '1.22.0'
        }
    )
}