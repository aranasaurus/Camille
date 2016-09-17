import Bot

let bot = try SlackBot(
    configDataSource: DefaultConfigDataSource,
    authenticator: OAuthAuthentication.self,
    storage: RedisStorage.self,
    services: [
        SwiftDocService(),
        HelloService(),
        KarmaService(options: KarmaOptions(
            addText: "++",
            removeText: "--",
            textDistanceThreshold: 4
            ))
    ]
)

bot.start()
