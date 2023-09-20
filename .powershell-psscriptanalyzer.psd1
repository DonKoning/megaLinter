# PSScriptAnalyzerSettings.psd1
@{
    CustomRulePath = @(
        '.\src\pssa\Measure-Case.psm1'
    )
    IncludeDefaultRules = $true
    IncludeRules = @(
        'Measure-*'
        'PS*'
    )
}
