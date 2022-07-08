targetScope = 'subscription'

param rgName string = 'resume'
param location string = 'eastus2'
param repositoryToken string

var customDomains = [
  'resume.jessicadeen.com'
  ]

resource rg 'Microsoft.Resources/resourceGroups@2021-04-01' = {
  name: rgName
  location: location
}

module staticSiteProd './modules/createAzureStaticSite.bicep' = {
  scope: resourceGroup(rg.name)
  name: 'resumeStaticWeb'
  params: {
    name: 'resume'
    location: location
    /*customDomains: customDomains*/
    repositoryUrl: 'https://github.com/jldeen/resume'
    repositoryToken: repositoryToken
    branch: 'main'
    skipActionGeneration: true
  }
}
