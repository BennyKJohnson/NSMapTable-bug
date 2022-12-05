#import <Foundation/Foundation.h>

@interface Key : NSObject

@end

@implementation Key

@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSMapTable *table = [NSMapTable strongToStrongObjectsMapTable];
        Key *key = [[Key alloc] init];
        [table setObject:[NSNumber numberWithInt:1] forKey:key];
        
        NSNumber *value = [table objectForKey:key];
        if (value != nil) {
            NSLog(@"Found value: %@", value);
        } else {
            NSLog(@"No value found for key: %@", key);
        }
    }
    return 0;
}
