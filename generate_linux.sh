echo "Generating OpenAPI client on windows"
./mvnw clean install -DskipTests
cd invoice-manager-api-typescript-angular-client/target/generated-sources/openapi
echo "Installing angular dependencies"
npm install
echo "Building angular api"
npm run build
cd dist
echo "Packing angular api"
npm pack
cd ../../../../..
echo "Install angular api with: npm i '..\invoice-manager-api\invoice-manager-api-typescript-angular-client\target\generated-sources\openapi\dist\invoice-manager-api-typescript-angular-client-1.0.0-SNAPSHOT.tgz'"
echo "Done"
