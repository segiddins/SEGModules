//
//  SEGModule.m
//  SEGModules
//
//  Created by Samuel E. Giddins on 1/24/14.
//  Copyright (c) 2014 Samuel E. Giddins. All rights reserved.
//

#import "SEGModule.h"
#import <objc/runtime.h>

@implementation SEGModule

@end

@interface NSObject (SEGModule)

@end

static void SEGLoadModulesForClass(Class class)
{
    unsigned int protocolCount = 0;
    Protocol **protocols = class_copyProtocolList(class, &protocolCount);
    for (int i = 0; i < protocolCount; i++) {
        Protocol *protocol = protocols[i];
        const char *protocolName = protocol_getName(protocol);
        Class protocolClass = objc_getClass(protocolName);
        BOOL protocolClassIsModule = [protocolClass isSubclassOfClass:[SEGModule class]];
        if (protocolClass && protocolClassIsModule && protocolClass != class) {
            NSLog(@"Class: %@\n"
                   "Protocol: %s",
                  protocolClass, protocolName);
            unsigned int methodCount = 0;
            struct objc_method_description *methods = protocol_copyMethodDescriptionList(protocol, YES, YES, &methodCount);
            for (int j = 0; j < methodCount; j++) {
                struct objc_method_description method = methods[j];
                NSLog(@"\tMethod: %s", sel_getName(method.name));
                IMP moduleIMP = class_getMethodImplementation(protocolClass, method.name);
                class_addMethod(class, method.name, moduleIMP, method.types);
            }
        }
    }
}

@implementation NSObject (SEGModule)

+ (void)load
{
    int numClasses;
    Class *classes = NULL;

    classes = NULL;
    numClasses = objc_getClassList(NULL, 0);

    if (numClasses > 0) {
        classes = malloc(sizeof(Class) * numClasses);
        numClasses = objc_getClassList(classes, numClasses);
        for (int i = 0; i < numClasses; i++) {
            Class class = classes[i];
            SEGLoadModulesForClass(class);
        }
        free(classes);
    }
}

@end
