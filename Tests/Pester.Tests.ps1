#requires -Modules Pester, PSScriptAnalyzer

Describe "PSScriptAnalyzer rules." {
    Context "Invoke PSScriptAnalyzer rules on all ps1's in module." {
        $results = Invoke-ScriptAnalyzer -Path .\${env:APPVEYOR_PROJECT_NAME} -Recurse

        It 'Invoke-ScriptAnalyzer results should be 0.' {
            $results.Count | Should Be 0
        }
    }
}
