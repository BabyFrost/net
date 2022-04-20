FROM mcr.microsoft.com/dotnet/sdk:5.0
MAINTAINER Voufack Harold (haroldvoufack@gmail.com)
COPY /net2/bin/Release/net5.0/publish/* /
WORKDIR /
ENTRYPOINT ["dotnet","net2.dll"]