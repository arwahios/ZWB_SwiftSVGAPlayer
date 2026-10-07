# Haya fork notes

Based on upstream ZWB_SwiftSVGAPlayer.

Local changes for Haya / EffectKit:
- `platforms: .iOS(.v16)`
- Removed Kingfisher / KingfisherWebP SPM dependencies (avoids iOS 13 vs Kingfisher 8 conflict; dynamic URL uses URLSession already in player source)
