FROM mcr.microsoft.com/dotnet/sdk:6.0
MAINTAINER Voufack Harold (haroldvoufack@gmail.com)
CMD ["cd","~"]
COPY /net2/bin/Release/net5.0/publish/* /app
WORKDIR /app
ENTRYPOINT ["dotnet","WebApplication1.dll"]