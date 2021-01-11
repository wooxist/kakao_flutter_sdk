#import "KakaoFlutterMirrorPlugin.h"
#import <kakao_flutter_mirror/kakao_flutter_mirror-Swift.h>

@implementation KakaoFlutterMirrorPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftKakaoFlutterMirrorPlugin registerWithRegistrar:registrar];
}
@end
