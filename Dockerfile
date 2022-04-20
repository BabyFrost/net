FROM mcr.microsoft.com/dotnet/sdk:6.0
MAINTAINER Voufack Harold (haroldvoufack@gmail.com)
COPY /net2/bin/Release/net5.0/publish/* /
WORKDIR /
ENTRYPOINT ["dotnet","WebApplication1.dll"]