#import <SpringBoard/SpringBoard.h>
#import <UIKit/UIKit.h>


@interface UIApplicationDelegate : NSObject
-(void)applicationDidFinishLaunching:(id)arg1;
@end

@interface UIAlertViewController : UIAlertView
@end

@implementation UIAlertViewController
@end

%hook SpringBoard
-(void)applicationDidFinishLaunching:(id)arg1 {
  %orig;
  UIAlertViewController *alert = [[UIAlertViewController alloc] initWithTitle:@"Respring Sucsessful"
  message:nil delegate:self cancelButtonTitle:@"YAY" otherButtonTitles:nil];
  [alert show];
}
%end