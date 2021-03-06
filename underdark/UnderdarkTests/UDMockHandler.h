/*
 * Copyright (c) 2016 Vladimir L. Shabanov <virlof@gmail.com>
 *
 * Licensed under the Underdark License, Version 1.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://underdark.io/LICENSE.txt
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

#import <Foundation/Foundation.h>

#import "UDRouterImpl.h"
#import "UDPacket.h"

@interface UDMockHandler : NSObject<UDRouterDelegate>

//@property (weak, nonatomic, readonly) UDRouterImpl* router;

@property (nonatomic, readonly) NSInteger meshConnectedCount;
@property (nonatomic, readonly) NSInteger meshDisconnectedCount;
@property (nonatomic, readonly) NSInteger peerConnectedCount;
@property (nonatomic, readonly) NSInteger packetsReceivedCount;

@property (nonatomic, readonly)	NSMutableDictionary<NSNumber*, UDPacket*>* packets;

- (instancetype) init NS_DESIGNATED_INITIALIZER;

@end
