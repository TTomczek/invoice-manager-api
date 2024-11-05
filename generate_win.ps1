Write-Output "Generating OpenAPI client on windows"
./mvnw.cmd clean install -DskipTests
Set-Location invoice-manager-api-typescript-angular-client/target/generated-sources/openapi
Write-Output "Installing angular dependencies"
npm install
Write-Output "Building angular api"
npm run build
Set-Location dist
Write-Output "Packing angular api"
npm pack
Set-Location ../../../../..
Write-Output "Done"
