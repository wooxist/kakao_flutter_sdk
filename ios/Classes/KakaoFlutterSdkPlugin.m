#import "KakaoFlutterSdkPlugin.h"
#import <kakao_flutter_mirror/kakao_flutter_mirror-Swift.h>

@implementation KakaoFlutterSdkPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftKakaoFlutterSdkPlugin registerWithRegistrar:registrar];
}
@end
