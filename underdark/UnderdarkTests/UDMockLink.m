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

#import "UDMockLink.h"

#import "UDAsyncUtils.h"

@implementation UDMockLink

- (instancetype) init
{
	if(!(self = [super init]))
		return self;
	
	return self;
}

- (instancetype) initWithNode:(UDMockNode*)node toNodeId:(int64_t)nodeId
{
	if(!(self = [super init]))
		return self;
	
	_fromNode = node;
	_nodeId = nodeId;
	
	return self;
}

- (void) sendFrame:(NSData*)data
{
	// Any thread.
	
	sldispatch_async(self.link.fromNode.queue, ^{
		[self.link.fromNode mlink:self.link didReceiveFrame:data];
	});
}

- (void) sendData:(nonnull id<UDSource>)data
{
	// Any thread.
}

- (void)disconnect
{
	// Any thread.
	[self.fromNode mlinkDisconnected:self];
}

@end
