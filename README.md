<div align="center">
<img width="120%" src="guildwars2banner.jpg">
</div>
___

# GW2API

> A simple Swift wrapper for the [Guild Wars 2 API (Version 2)](https://wiki.guildwars2.com/wiki/API:Main)

## Usage

> This library is made available as a Swift Package. To use it as a dependency in your project [see this documentation from Apple.](https://developer.apple.com/documentation/xcode/adding_package_dependencies_to_your_app)

The GW2API client is initialized as a singleton, so all you need to do is import the package (`import GW2API`) and you will then have full access to the API through the instance variable `GW2Client.instance`

**By default, the client has the following settings:**
1. Base URL: https://api.guildwars2.com
1. API Version: `v2`
1. Language: English (en)
1. API Key: None (Set through `GW2Client.instance.setAPIKey([KEY HERE])`)
1. Guild ID: None (Set through `GW2Client.instance.setGuildID([GUILD ID HERE])`)

To print these settings, use the `.settings()` method like so:
    * `GW2Client.instance.settings()`

**For any unauthenticated endpoints, you can access data like this:**
```swift
GW2Client.instance.[ENDPOINT HERE].[SUB-ENDPOINT HERE].get() { result in
    switch result {
        case .success(let data)
            // Do what you want with the data here
        case .failure(let error):
            // Put your error handling here
    }
}
```

**An example:**
```swift
GW2Client.instance.achievements.daily.get() { result in
    switch result {
        case .success(let data):
            // Do what you want with the data here
        case .failure(let error):
            // Put your error handling here
    }
}
```

**For any authenticated endpoint, you must do the following:**
1. Set your API key via the client instance: `GW2Client.instance.setAPIKey("Your API key here")`
    * This will recursively set the API key to every endpoint that needs it in the client.
1. Once the API key is set, you may access the data just like above:
```swift
GW2Client.instance.authenticated.account.pvp.games.get() { result in
    switch result {
        case .success(let data):
            // Do what you want with the data here
        case .failure(let error):
            // Put your error handling here
    }
}
```

**For some guild endpoints, you must specify a guild ID, and the authenticated guild endpoints require both a guild ID as well as a valid API key _from that guild leader's account_**
1. Set the Guild ID via the client instance: `GW2Client.instance.setGuildID("Your guild ID here")`
1. Set the API key with a key **from that guild leader's account** via the client instance: `GW2Client.instance.setAPIKey("Guild leader's valid API key here")`
    * Doing the above two steps will recursively set both the API key and the Guild ID to all endpoints that need either of them.
1. After these two keys are set,  you may access the data the same way as always:
```swift
GW2Client.instance.guild.authenticated.members.get() { result in
    switch result {
        case .success(let data):
            // Do what you want with the data here
        case .failure(let error):
            // Put your error handling here
    }
}
```

### Getting data linked to one or more IDs

Some data is addressable in the API via either a number or word ID. For each endpoint, if this type of search is available, there will be a `.get()` method with either an `id` or `ids` parameter which each take their respective data types (`Int`, `String`, or `[Int]`, `[String]`). This string should contain the ID of the data you are looking for in the following formats:

* `id: 1, "Admin", etc...`
* `ids: [1, 2, 3], ["Admin", "EditingRights", "Roster"] etc...`

Then to access this data, simply pass in the id or ids as a parameter to the `.get()` function of your endpoint like so:
```swift
GW2Client.instance.items.finishers.get(id: 1 OR ids: [1, 2, 3] etc.) { result in
    switch result {
        case .success(let data):
            // Do what you want with the data here
        case .failure(let error):
            // Put your error handling here
    }
}
```
If you have any questions or problems, feel free to open an issue in this repository!
