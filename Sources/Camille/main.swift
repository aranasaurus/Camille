import Bot

let bot = try SlackBot(
    configDataSource: DefaultConfigDataSource,
    authenticator: TokenAuthentication.self,
    storage: MemoryStorage.self,
    services: [
        SwiftDocService(),
        HelloService(),
        KarmaService(options: KarmaServiceOptions(
            addText: "++",
            removeText: "--",
            textDistanceThreshold: 4
            ))
    ]
)

bot.start()
