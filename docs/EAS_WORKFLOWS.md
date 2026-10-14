# EAS Workflows

Automated cloud builds for Pair Buddy, defined in `app/.eas/workflows/`.

## Triggering builds from GitHub

The repo is connected in the Expo dashboard (Project GitHub settings).
Label any PR with:

- `eas-build-android:preview` — builds the preview APK from that PR's branch

EAS picks up the matching workflow and posts the build link back on the PR.

## Running manually

```sh
cd app
eas workflow:run preview.yml
```

## Build profiles

Profiles come from `app/eas.json`:

- `development` — dev client, internal distribution
- `preview` — Android APK, internal distribution (used by the workflow)
- `production` — Android app bundle for store submission

## iOS

iOS builds need Apple Developer credentials linked in the Expo dashboard
(Credentials page) before any iOS job will run. The workflow currently ships
Android only; add an iOS job once credentials are connected.

## Notes

- Workflows run on EAS cloud builders, so no local Android SDK or Mac is needed.
- The project ID in `app/app.json` (`expo.extra.eas.projectId`) ties builds to
  the `pair-buddy` Expo project.
