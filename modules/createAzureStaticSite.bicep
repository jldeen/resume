param name string
param location string = resourceGroup().location
param customDomains array

param skuName string = 'Free'
param skuTier string = 'Free'

// No repository link: content is uploaded by the GitHub Actions workflow
// using the site's deployment token (az staticwebapp secrets list).
resource staticWebApp 'Microsoft.Web/staticSites@2022-09-01' = {
  name: name
  location: location
  sku: {
    name: skuName
    tier: skuTier
  }
  properties: {}
  resource domains 'customDomains' = [for domain in customDomains: {
    name: domain
    properties: {
      validationMethod: 'dns-txt-token'
    }
  }]
}
