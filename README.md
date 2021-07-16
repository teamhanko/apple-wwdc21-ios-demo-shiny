# Apple Passkey Demo with Hanko Authentication API
Apple announced at the WWDC21 session [10106: Move Beyond Passwords](https://developer.apple.com/wwdc21/10106/) that WebAuthn credentials will be available as “Passkeys” in the iCloud Keychain, as well as the availability of system-wide WebAuthn APIs on iOS 15, iPadOS 15, and macOS 12 Monterey.

In their video, Apple demonstrates the creation and seamless synchronization of Passkeys across devices using Safari. On top of that they even show that WebAuthn works with native iOS Apps using the same Passkey.

This app authenticates it's users using Passkeys (aka WebAuthn credentials) which will be shared with a webapp. It requires the [Apple Passkey Demo webapp](https://github.com/teamhanko/apple-wwdc21-webauthn-example/) as it's backend! We have an article describing the setup and explaining the code [on our blog](https://www.hanko.io/blog/how-to-support-apple-icloud-passkeys-with-webauthn).

**To be able to run this app you need the [Apple Passkey Demo webapp](https://github.com/teamhanko/apple-wwdc21-webauthn-example/) up and running on an SSL capable host. Please set it up first before you continue!**

## Configure the Sample Code Project

To build and run this app on your device:
1. Open the sample with Xcode 13 or later.
2. Select the Shiny project.
3. For the project's target, choose your team from the Team drop-down menu in the Signing & Capabilities pane to let Xcode automatically manage your provisioning profile.
4. Add the Associated Domains capability, and specify your domain with the `webcredentials` service.
5. Ensure an `apple-app-site-association` (AASA) file is present on your domain, in the `.well-known` directory, and it contains entry for this app's App ID for the `webcredentials` service.
6. In the `AccountManager.swift` file, replace `yourdomain.here` with the name of your domain.
7. Turn on the Syncing Platform Authenticator setting on your iOS device in Settings > Developer. If you're running the Catalyst app on macOS, select Enable Syncing Platform Authenticator in Safari's Develop menu.
