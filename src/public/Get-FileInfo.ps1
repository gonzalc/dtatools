function Get-FileInfo {
<#
.Synopsis
.Description
.Inputs
.Outputs
.Notes
    #. Dynamic parameters
    #. steppablepipeline
    #. progress bar
    #. runspace factory
    #. wildcards
    #. write-verbose
    # error handling
    
.Links
#>
    [CmdletBinding(
        SupportsShouldProcess    = $true
        ,DefaultParameterSetName = 'Standard'
        ,HelpURI                 = 'https://github.com/gonzalc/dtatools/blob/main/src/public/Get-FileInfo.md'
    )]
    [OutputType([PSCustomObject], ParameterSetName="Standard")]
    [OutputType([PSCustomObject], ParameterSetName="Literal")]
    param(
        ###########################################################################################################################
        #                                              PATH                                                                       #
        ###########################################################################################################################
        [Parameter(
                    Position                         = 1
                    ,Mandatory                       = $false
                    ,ParameterSetName                = 'Standard'
                    ,ValueFromPipeline               = $true
                    ,HelpMessage                     = "This will accept the fullname of files and/or folders to retrieve information."
        )]
        [System.Collections.Generic.List[String]]$Path,
        ###########################################################################################################################
        #                                              LITERAL_PATH                                                               #
        ###########################################################################################################################
        [Parameter(
                    Position                         = 1
                    ,Mandatory                       = $false
                    ,ParameterSetName                = 'Literal'
                    ,ValueFromPipeline               = $true
                    ,HelpMessage                     = "This will accept the fullname of files and/or folders to retrieve information."
        )]
        [System.Collections.Generic.List[String]]$LiteralPath,
        ###########################################################################################################################
        #                                              HASH                                                                       #
        ###########################################################################################################################
        [Parameter(
                    Position                         = 2
                    ,Mandatory                       = $false
                    ,ParameterSetName                = 'Standard'
                    ,HelpMessage                     = 'This will retrieve hash of each object specified in "-LiteralPath".'
        )]
        [Parameter(
                    Position                         = 2
                    ,Mandatory                       = $false
                    ,ParameterSetName                = 'Literal'
                    ,HelpMessage                     = 'This will retrieve hash of each object specified in "-LiteralPath".'
        )]
        [ValidateSet('SHA1','SHA256','SHA284','SHA512')]
        [Alias('Algorithm')]
        [string]$Hash,
        ###########################################################################################################################
        #                                              PASSTHRU                                                                   #
        ###########################################################################################################################
        [Parameter(
                    Position                         = 3
                    ,Mandatory                       = $false
                    ,ParameterSetName                = 'Standard'
                    ,HelpMessage                     = 'This will print the results'
        )]
        [Parameter(
                    Position                         = 3
                    ,Mandatory                       = $false
                    ,ParameterSetName                = 'Literal'
                    ,HelpMessage                     = 'This will print the results'
        )]
        [switch]$PassThru
    )

    begin {
    
    } # END: BEGIN
    process {
    
    } # END: PROCESS 
    end {
    
    } # END: END
<#
# SIGNATURE
#>
}
