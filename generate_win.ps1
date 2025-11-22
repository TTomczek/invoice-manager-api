Write-Output "Generating OpenAPI client on windows"
./mvnw.cmd clean install -DskipTests
# Set-Location invoice-manager-api-typescript-angular-client/target/generated-sources/openapi
# Write-Output "Installing angular dependencies"
# npm install
# Write-Output "Building angular api"
# npm run build
# Set-Location dist
# Write-Output "Packing angular api"
# npm pack
# Set-Location ../../../../..
# Write-Output "Install angular api with: npm i '..\invoice-manager-api\invoice-manager-api-typescript-angular-client\target\generated-sources\openapi\dist\invoice-manager-api-typescript-angular-client-1.0.0-SNAPSHOT.tgz'"
Write-Output "Done"
