//
//  SEGModule.h
//  SEGModules
//
//  Created by Samuel E. Giddins on 1/24/14.
//  Copyright (c) 2014 Samuel E. Giddins. All rights reserved.
//

/**
 *  This is the base class for any module you wish to build.
 *  
 *  To create a module, declare a protocol with all of the methods of the module. Then, subclass `SEGModule` with the same name as your module's protocol, declare your subclass as adopting the protocol, and implement all the methods in the protocol. (Note: you cannot access ivars in any way, so if you need any properties, you should store them as associated objects on `self`.) For each class you wish to include the module, just declare that class as conforming to the module's protocol (you can even do this on the declaration of a category or class extension). The rest of the work will be done automatically upon the initialization of the runtime.
 */
@interface SEGModule : NSObject

@end
