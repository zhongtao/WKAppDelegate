//
//  NSObject+AppEventModule.m
//  Pods-SHRMAppDelegate-demo
//
//  Created by Kevin on 2019/5/8.
//

#import "NSObject+AppEventModule.h"

@implementation NSObject (AppEventModule)

- (id)performSelector:(SEL)selector
           withObject:(id)p1
           withObject:(id)p2
           withObject:(id)p3 {
    NSMethodSignature *sig = [self methodSignatureForSelector:selector];
    if (sig) {
        NSInvocation* invo = [NSInvocation invocationWithMethodSignature:sig];
        [invo setTarget:self];
        [invo setSelector:selector];
        [invo setArgument:&p1 atIndex:2];
        [invo setArgument:&p2 atIndex:3];
        [invo setArgument:&p3 atIndex:4];
        [invo invoke];
        if (sig.methodReturnLength) {
            return [self handleReturnType:sig invo:invo];
        } else {
            return nil;
        }
    } else {
        return nil;
    }
}

- (id)performSelector:(SEL)selector
           withObject:(id)p1
           withObject:(id)p2
           withObject:(id)p3
           withObject:(id)p4 {
    NSMethodSignature *sig = [self methodSignatureForSelector:selector];
    if (sig) {
        NSInvocation* invo = [NSInvocation invocationWithMethodSignature:sig];
        [invo setTarget:self];
        [invo setSelector:selector];
        [invo setArgument:&p1 atIndex:2];
        [invo setArgument:&p2 atIndex:3];
        [invo setArgument:&p3 atIndex:4];
        [invo setArgument:&p4 atIndex:5];
        [invo invoke];
        if (sig.methodReturnLength) {
            return [self handleReturnType:sig invo:invo];
        } else {
            return nil;
        }
    } else {
        return nil;
    }
}

- (id)performSelector:(SEL)selector
           withObject:(id)p1
           withObject:(id)p2
           withObject:(id)p3
           withObject:(id)p4
           withObject:(id)p5 {
    NSMethodSignature *sig = [self methodSignatureForSelector:selector];
    if (sig) {
        NSInvocation* invo = [NSInvocation invocationWithMethodSignature:sig];
        [invo setTarget:self];
        [invo setSelector:selector];
        [invo setArgument:&p1 atIndex:2];
        [invo setArgument:&p2 atIndex:3];
        [invo setArgument:&p3 atIndex:4];
        [invo setArgument:&p4 atIndex:5];
        [invo setArgument:&p5 atIndex:6];
        [invo invoke];
        if (sig.methodReturnLength) {
            return [self handleReturnType:sig invo:invo];
        } else {
            return nil;
        }
    } else {
        return nil;
    }
}

- (id)performSelector:(SEL)selector
           withObject:(id)p1
           withObject:(id)p2
           withObject:(id)p3
           withObject:(id)p4
           withObject:(id)p5
           withObject:(id)p6 {
    NSMethodSignature *sig = [self methodSignatureForSelector:selector];
    if (sig) {
        NSInvocation* invo = [NSInvocation invocationWithMethodSignature:sig];
        [invo setTarget:self];
        [invo setSelector:selector];
        [invo setArgument:&p1 atIndex:2];
        [invo setArgument:&p2 atIndex:3];
        [invo setArgument:&p3 atIndex:4];
        [invo setArgument:&p4 atIndex:5];
        [invo setArgument:&p5 atIndex:6];
        [invo setArgument:&p6 atIndex:7];
        [invo invoke];
        if (sig.methodReturnLength) {
            return [self handleReturnType:sig invo:invo];
        } else {
            return nil;
        }
    } else {
        return nil;
    }
}

- (id)performSelector:(SEL)selector
           withObject:(id)p1
           withObject:(id)p2
           withObject:(id)p3
           withObject:(id)p4
           withObject:(id)p5
           withObject:(id)p6
           withObject:(id)p7 {
    NSMethodSignature *sig = [self methodSignatureForSelector:selector];
    if (sig) {
        NSInvocation* invo = [NSInvocation invocationWithMethodSignature:sig];
        [invo setTarget:self];
        [invo setSelector:selector];
        [invo setArgument:&p1 atIndex:2];
        [invo setArgument:&p2 atIndex:3];
        [invo setArgument:&p3 atIndex:4];
        [invo setArgument:&p4 atIndex:5];
        [invo setArgument:&p5 atIndex:6];
        [invo setArgument:&p6 atIndex:7];
        [invo setArgument:&p7 atIndex:8];
        [invo invoke];
        if (sig.methodReturnLength) {
            return [self handleReturnType:sig invo:invo];
        } else {
            return nil;
        }
    } else {
        return nil;
    }
}

#pragma mark - Private Method
- (id)handleReturnType:(NSMethodSignature *)sig invo:(NSInvocation *)aInvo
{
    int booResult = strcmp([sig methodReturnType], @encode(BOOL));
    int floatResult = strcmp([sig methodReturnType], @encode(float));
    int intResult = strcmp([sig methodReturnType], @encode(int));
    
    id anObject = nil;
    if (booResult == 0)
    {
        BOOL result;
        [aInvo getReturnValue:&result];
        anObject = [NSNumber numberWithBool:result];
    }
    else if (floatResult == 0)
    {
        float result;
        [aInvo getReturnValue:&result];
        anObject = [NSNumber numberWithFloat:result];
    }
    else if (intResult)
    {
        int result;
        [aInvo getReturnValue:&result];
        anObject = [NSNumber numberWithInt:result];
    }
    return anObject;
}

@end
