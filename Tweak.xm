#import <Foundation/Foundation.h>

%hook MCUserModel
- (BOOL)blackVipState { return YES; }
- (BOOL)hideBlackVip { return YES; }
- (BOOL)setHideBlackVip:(id)arg1 { return YES; }
- (BOOL)setBlackVipState:(id)arg1 { return YES; }
- (NSDate *)blackVipEndDate {
    NSDateComponents *c = [NSDateComponents new];
    c.year = 2099; c.month = 1; c.day = 1;
    return [[NSCalendar currentCalendar] dateFromComponents:c];
}
- (NSDate *)setBlackVipEndDate:(id)arg1 {
    NSDateComponents *c = [NSDateComponents new];
    c.year = 2099; c.month = 1; c.day = 1;
    return [[NSCalendar currentCalendar] dateFromComponents:c];
}
- (BOOL)hideVip { return YES; }
- (BOOL)setHideVip:(id)arg1 { return YES; }
- (BOOL)payState { return YES; }
%end

%ctor {
    NSLog(@"[subvip] Loaded: %@", [[NSBundle mainBundle] bundleIdentifier]);
}
