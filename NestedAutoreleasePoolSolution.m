#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        for (int i = 0; i < 1000000; i++) {
            @autoreleasepool { // Properly nested autorelease pool
                NSString *string = [NSString stringWithFormat:@