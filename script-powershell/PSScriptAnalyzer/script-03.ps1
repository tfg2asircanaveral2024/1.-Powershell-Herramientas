Import-Module PSScriptAnalyzer

$ruta = read-host "Introduce la ruta del script: "

$Array = @(
    "PSReservedCmdletChar",
    "PSReservedParams",
    "PSUseShouldProcessForStateChangingFunctions",
    "PSShouldProcess",
    "PSMissingModuleManifestField",
    "PSAvoidUsingEmptyCatchBlock",
    "PSUseCmdletCorrectly",
    "PSUseDeclaredVarsMoreThanAssignments",
    "PSAvoidUsingPlanTextForPassword",
    "PSAvoidUsingComputerNameHardCoded",
    "PSAvoidInvokingEmptyMembers",
    "PSAvoidMultipleTypeAttributes",
    "PSAvoidOverwritingBuiltInCmdlets",
    "PSUseCompatibleSyntax",
    "PSPossibleIncorrectComparisonWithNull",
    "PSPossibleIncorrectUsageOfAssignmentOperator",
    "PSUseLiteralInitializerForHashtable",
    "PSUseToExportFieldsInManifest",
    "PSAvoidUsingCmdletAliases",
    "PSAvoidUsingWriteHost"
)

$result = Invoke-ScriptAnalyzer -Path $ruta -IncludeRule $Array

if ($result.Count -eq 0) {
    Write-host "No se encontraron problemas en el script."
} else {
    Write-Host "Se encontraron los siguientes problemas:"
    foreach ($objetos in $result) {
        write-host "Lineas $($objetos.Line): $($objetos.Message)"
    }
}