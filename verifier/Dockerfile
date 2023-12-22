FROM mcr.microsoft.com/dotnet/sdk:7.0 AS fetch-env
WORKDIR /App
ARG branch=master
RUN git clone https://github.com/Portkey-Wallet/portkey-DID-verifier.git
WORKDIR /App/portkey-DID-verifier
RUN git checkout $branch
RUN sed -i 's/app.UseMiddleware<RealIpMiddleware>();//g' src/CAVerifierServer.HttpApi.Host/CAVerifierServerHttpApiHostModule.cs
RUN dotnet restore -s https://api.nuget.org/v3/index.json -s https://www.myget.org/F/aelf-project-dev/api/v3/index.json

FROM fetch-env AS build-env
ARG servicename
RUN dotnet publish src/$servicename/$servicename.csproj -o /output

FROM mcr.microsoft.com/dotnet/aspnet:7.0
WORKDIR /App
COPY --from=build-env /output .
ARG servicename
ENV RUNCMD="dotnet $servicename.dll"
CMD $RUNCMD