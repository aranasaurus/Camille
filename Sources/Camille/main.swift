import Bot

let bot = try SlackBot(
    configDataSource: DefaultConfigDataSource,
    authenticator: OAuthAuthentication.self,
    storage: RedisStorage.self,
    services: [
        HelloBot(),
        KarmaBot(options: KarmaBotOptions(
            addText: "++",
            removeText: "--",
            textDistanceThreshold: 4
            ))
    ]
)

bot.start()