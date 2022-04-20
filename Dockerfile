FROM mcr.microsoft.com/dotnet/sdk:6.0
MAINTAINER Voufack Harold (haroldvoufack@gmail.com)
COPY /bin/Release/net5.0/publish/* /app
WORKDIR /app
ENTRYPOINT ["dotnet","WebApplication1.dll"]