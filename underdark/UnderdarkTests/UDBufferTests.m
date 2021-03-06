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

#import <UIKit/UIKit.h>

@import XCTest;

#import "UDBuffer.h"
#import "UDDataBuffer.h"
#import "UDCompositeBuffer.h"

@interface UDBufferTests : XCTestCase
{
}
@end

@implementation UDBufferTests

- (void)invokeTest
{
	self.continueAfterFailure = NO;
	@try { [super invokeTest]; } @finally { self.continueAfterFailure = YES; }
}

- (void) setUp
{
	[super setUp];
}

- (void) tearDown
{
	[super tearDown];
}

- (UDDataBuffer*) buffer:(NSUInteger)length
{
	NSMutableData* data = [NSMutableData dataWithLength:length];
	
	if(length != 0)
		arc4random_buf(data.mutableBytes, data.length);
	
	return [[UDDataBuffer alloc] initWithData:data];
}

- (void) testComposite
{
	UDDataBuffer* buf0 = [self buffer:0];
	UDDataBuffer* buf1 = [self buffer:10];
	UDDataBuffer* buf2 = [self buffer:20];
	UDDataBuffer* buf3 = [self buffer:30];
	
	UDCompositeBuffer* composite = [[UDCompositeBuffer alloc] init];
	[composite append:buf0];
	[composite append:buf1];
	[composite append:buf0];
	[composite append:buf2];
	[composite append:buf0];
	[composite append:buf0];
	[composite append:buf3];
	
	NSData* data = [composite readBytesWithOffset:6 length:31];
	XCTAssertEqual(0, memcmp(
							 data.bytes,
							 buf1.data.bytes + 6,
							 buf1.data.length - 6
							 )
				   );
	XCTAssertEqual(0, memcmp(
							 data.bytes + (buf1.data.length - 6),
							 buf2.data.bytes,
							 buf2.data.length
							 )
				   );
	XCTAssertEqual(0, memcmp(
							 data.bytes + (buf1.data.length - 6) + buf2.data.length,
							 buf3.data.bytes,
							 data.length - (buf1.data.length - 6) - buf2.data.length
							 )
				   );
}

@end
