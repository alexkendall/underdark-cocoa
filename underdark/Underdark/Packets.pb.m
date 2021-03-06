// Generated by the protocol buffer compiler.  DO NOT EDIT!

#import "Packets.pb.h"
// @@protoc_insertion_point(imports)

@implementation PacketsRoot
static PBExtensionRegistry* extensionRegistry = nil;
+ (PBExtensionRegistry*) extensionRegistry {
  return extensionRegistry;
}

+ (void) initialize {
  if (self == [PacketsRoot class]) {
    PBMutableExtensionRegistry* registry = [PBMutableExtensionRegistry registry];
    [self registerAllExtensions:registry];
    extensionRegistry = registry;
  }
}
+ (void) registerAllExtensions:(PBMutableExtensionRegistry*) registry {
}
@end

@interface Packet ()
@property SInt64 packetId;
@property SInt32 kind;
@property SInt64 nodeId;
@property SInt64 age;
@property (strong) NSData* payload;
@end

@implementation Packet

- (BOOL) hasPacketId {
  return !!hasPacketId_;
}
- (void) setHasPacketId:(BOOL) _value_ {
  hasPacketId_ = !!_value_;
}
@synthesize packetId;
- (BOOL) hasKind {
  return !!hasKind_;
}
- (void) setHasKind:(BOOL) _value_ {
  hasKind_ = !!_value_;
}
@synthesize kind;
- (BOOL) hasNodeId {
  return !!hasNodeId_;
}
- (void) setHasNodeId:(BOOL) _value_ {
  hasNodeId_ = !!_value_;
}
@synthesize nodeId;
- (BOOL) hasAge {
  return !!hasAge_;
}
- (void) setHasAge:(BOOL) _value_ {
  hasAge_ = !!_value_;
}
@synthesize age;
- (BOOL) hasPayload {
  return !!hasPayload_;
}
- (void) setHasPayload:(BOOL) _value_ {
  hasPayload_ = !!_value_;
}
@synthesize payload;
- (instancetype) init {
  if ((self = [super init])) {
    self.packetId = 0L;
    self.kind = 0;
    self.nodeId = 0L;
    self.age = 0L;
    self.payload = [NSData data];
  }
  return self;
}
static Packet* defaultPacketInstance = nil;
+ (void) initialize {
  if (self == [Packet class]) {
    defaultPacketInstance = [[Packet alloc] init];
  }
}
+ (instancetype) defaultInstance {
  return defaultPacketInstance;
}
- (instancetype) defaultInstance {
  return defaultPacketInstance;
}
- (BOOL) isInitialized {
  if (!self.hasPacketId) {
    return NO;
  }
  if (!self.hasKind) {
    return NO;
  }
  if (!self.hasNodeId) {
    return NO;
  }
  if (!self.hasAge) {
    return NO;
  }
  if (!self.hasPayload) {
    return NO;
  }
  return YES;
}
- (void) writeToCodedOutputStream:(PBCodedOutputStream*) output {
  if (self.hasPacketId) {
    [output writeInt64:1 value:self.packetId];
  }
  if (self.hasKind) {
    [output writeInt32:2 value:self.kind];
  }
  if (self.hasNodeId) {
    [output writeInt64:3 value:self.nodeId];
  }
  if (self.hasAge) {
    [output writeInt64:4 value:self.age];
  }
  if (self.hasPayload) {
    [output writeData:5 value:self.payload];
  }
  [self.unknownFields writeToCodedOutputStream:output];
}
- (SInt32) serializedSize {
  __block SInt32 size_ = memoizedSerializedSize;
  if (size_ != -1) {
    return size_;
  }

  size_ = 0;
  if (self.hasPacketId) {
    size_ += computeInt64Size(1, self.packetId);
  }
  if (self.hasKind) {
    size_ += computeInt32Size(2, self.kind);
  }
  if (self.hasNodeId) {
    size_ += computeInt64Size(3, self.nodeId);
  }
  if (self.hasAge) {
    size_ += computeInt64Size(4, self.age);
  }
  if (self.hasPayload) {
    size_ += computeDataSize(5, self.payload);
  }
  size_ += self.unknownFields.serializedSize;
  memoizedSerializedSize = size_;
  return size_;
}
+ (Packet*) parseFromData:(NSData*) data {
  return (Packet*)[[[Packet builder] mergeFromData:data] build];
}
+ (Packet*) parseFromData:(NSData*) data extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  return (Packet*)[[[Packet builder] mergeFromData:data extensionRegistry:extensionRegistry] build];
}
+ (Packet*) parseFromInputStream:(NSInputStream*) input {
  return (Packet*)[[[Packet builder] mergeFromInputStream:input] build];
}
+ (Packet*) parseFromInputStream:(NSInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  return (Packet*)[[[Packet builder] mergeFromInputStream:input extensionRegistry:extensionRegistry] build];
}
+ (Packet*) parseFromCodedInputStream:(PBCodedInputStream*) input {
  return (Packet*)[[[Packet builder] mergeFromCodedInputStream:input] build];
}
+ (Packet*) parseFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  return (Packet*)[[[Packet builder] mergeFromCodedInputStream:input extensionRegistry:extensionRegistry] build];
}
+ (PacketBuilder*) builder {
  return [[PacketBuilder alloc] init];
}
+ (PacketBuilder*) builderWithPrototype:(Packet*) prototype {
  return [[Packet builder] mergeFrom:prototype];
}
- (PacketBuilder*) builder {
  return [Packet builder];
}
- (PacketBuilder*) toBuilder {
  return [Packet builderWithPrototype:self];
}
- (void) writeDescriptionTo:(NSMutableString*) output withIndent:(NSString*) indent {
  if (self.hasPacketId) {
    [output appendFormat:@"%@%@: %@\n", indent, @"packetId", [NSNumber numberWithLongLong:self.packetId]];
  }
  if (self.hasKind) {
    [output appendFormat:@"%@%@: %@\n", indent, @"kind", [NSNumber numberWithInteger:self.kind]];
  }
  if (self.hasNodeId) {
    [output appendFormat:@"%@%@: %@\n", indent, @"nodeId", [NSNumber numberWithLongLong:self.nodeId]];
  }
  if (self.hasAge) {
    [output appendFormat:@"%@%@: %@\n", indent, @"age", [NSNumber numberWithLongLong:self.age]];
  }
  if (self.hasPayload) {
    [output appendFormat:@"%@%@: %@\n", indent, @"payload", self.payload];
  }
  [self.unknownFields writeDescriptionTo:output withIndent:indent];
}
- (void) storeInDictionary:(NSMutableDictionary *)dictionary {
  if (self.hasPacketId) {
    [dictionary setObject: [NSNumber numberWithLongLong:self.packetId] forKey: @"packetId"];
  }
  if (self.hasKind) {
    [dictionary setObject: [NSNumber numberWithInteger:self.kind] forKey: @"kind"];
  }
  if (self.hasNodeId) {
    [dictionary setObject: [NSNumber numberWithLongLong:self.nodeId] forKey: @"nodeId"];
  }
  if (self.hasAge) {
    [dictionary setObject: [NSNumber numberWithLongLong:self.age] forKey: @"age"];
  }
  if (self.hasPayload) {
    [dictionary setObject: self.payload forKey: @"payload"];
  }
  [self.unknownFields storeInDictionary:dictionary];
}
- (BOOL) isEqual:(id)other {
  if (other == self) {
    return YES;
  }
  if (![other isKindOfClass:[Packet class]]) {
    return NO;
  }
  Packet *otherMessage = other;
  return
      self.hasPacketId == otherMessage.hasPacketId &&
      (!self.hasPacketId || self.packetId == otherMessage.packetId) &&
      self.hasKind == otherMessage.hasKind &&
      (!self.hasKind || self.kind == otherMessage.kind) &&
      self.hasNodeId == otherMessage.hasNodeId &&
      (!self.hasNodeId || self.nodeId == otherMessage.nodeId) &&
      self.hasAge == otherMessage.hasAge &&
      (!self.hasAge || self.age == otherMessage.age) &&
      self.hasPayload == otherMessage.hasPayload &&
      (!self.hasPayload || [self.payload isEqual:otherMessage.payload]) &&
      (self.unknownFields == otherMessage.unknownFields || (self.unknownFields != nil && [self.unknownFields isEqual:otherMessage.unknownFields]));
}
- (NSUInteger) hash {
  __block NSUInteger hashCode = 7;
  if (self.hasPacketId) {
    hashCode = hashCode * 31 + [[NSNumber numberWithLongLong:self.packetId] hash];
  }
  if (self.hasKind) {
    hashCode = hashCode * 31 + [[NSNumber numberWithInteger:self.kind] hash];
  }
  if (self.hasNodeId) {
    hashCode = hashCode * 31 + [[NSNumber numberWithLongLong:self.nodeId] hash];
  }
  if (self.hasAge) {
    hashCode = hashCode * 31 + [[NSNumber numberWithLongLong:self.age] hash];
  }
  if (self.hasPayload) {
    hashCode = hashCode * 31 + [self.payload hash];
  }
  hashCode = hashCode * 31 + [self.unknownFields hash];
  return hashCode;
}
@end

@interface PacketBuilder()
@property (strong) Packet* resultPacket;
@end

@implementation PacketBuilder
@synthesize resultPacket;
- (instancetype) init {
  if ((self = [super init])) {
    self.resultPacket = [[Packet alloc] init];
  }
  return self;
}
- (PBGeneratedMessage*) internalGetResult {
  return resultPacket;
}
- (PacketBuilder*) clear {
  self.resultPacket = [[Packet alloc] init];
  return self;
}
- (PacketBuilder*) clone {
  return [Packet builderWithPrototype:resultPacket];
}
- (Packet*) defaultInstance {
  return [Packet defaultInstance];
}
- (Packet*) build {
  [self checkInitialized];
  return [self buildPartial];
}
- (Packet*) buildPartial {
  Packet* returnMe = resultPacket;
  self.resultPacket = nil;
  return returnMe;
}
- (PacketBuilder*) mergeFrom:(Packet*) other {
  if (other == [Packet defaultInstance]) {
    return self;
  }
  if (other.hasPacketId) {
    [self setPacketId:other.packetId];
  }
  if (other.hasKind) {
    [self setKind:other.kind];
  }
  if (other.hasNodeId) {
    [self setNodeId:other.nodeId];
  }
  if (other.hasAge) {
    [self setAge:other.age];
  }
  if (other.hasPayload) {
    [self setPayload:other.payload];
  }
  [self mergeUnknownFields:other.unknownFields];
  return self;
}
- (PacketBuilder*) mergeFromCodedInputStream:(PBCodedInputStream*) input {
  return [self mergeFromCodedInputStream:input extensionRegistry:[PBExtensionRegistry emptyRegistry]];
}
- (PacketBuilder*) mergeFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  PBUnknownFieldSetBuilder* unknownFields = [PBUnknownFieldSet builderWithUnknownFields:self.unknownFields];
  while (YES) {
    SInt32 tag = [input readTag];
    switch (tag) {
      case 0:
        [self setUnknownFields:[unknownFields build]];
        return self;
      default: {
        if (![self parseUnknownField:input unknownFields:unknownFields extensionRegistry:extensionRegistry tag:tag]) {
          [self setUnknownFields:[unknownFields build]];
          return self;
        }
        break;
      }
      case 8: {
        [self setPacketId:[input readInt64]];
        break;
      }
      case 16: {
        [self setKind:[input readInt32]];
        break;
      }
      case 24: {
        [self setNodeId:[input readInt64]];
        break;
      }
      case 32: {
        [self setAge:[input readInt64]];
        break;
      }
      case 42: {
        [self setPayload:[input readData]];
        break;
      }
    }
  }
}
- (BOOL) hasPacketId {
  return resultPacket.hasPacketId;
}
- (SInt64) packetId {
  return resultPacket.packetId;
}
- (PacketBuilder*) setPacketId:(SInt64) value {
  resultPacket.hasPacketId = YES;
  resultPacket.packetId = value;
  return self;
}
- (PacketBuilder*) clearPacketId {
  resultPacket.hasPacketId = NO;
  resultPacket.packetId = 0L;
  return self;
}
- (BOOL) hasKind {
  return resultPacket.hasKind;
}
- (SInt32) kind {
  return resultPacket.kind;
}
- (PacketBuilder*) setKind:(SInt32) value {
  resultPacket.hasKind = YES;
  resultPacket.kind = value;
  return self;
}
- (PacketBuilder*) clearKind {
  resultPacket.hasKind = NO;
  resultPacket.kind = 0;
  return self;
}
- (BOOL) hasNodeId {
  return resultPacket.hasNodeId;
}
- (SInt64) nodeId {
  return resultPacket.nodeId;
}
- (PacketBuilder*) setNodeId:(SInt64) value {
  resultPacket.hasNodeId = YES;
  resultPacket.nodeId = value;
  return self;
}
- (PacketBuilder*) clearNodeId {
  resultPacket.hasNodeId = NO;
  resultPacket.nodeId = 0L;
  return self;
}
- (BOOL) hasAge {
  return resultPacket.hasAge;
}
- (SInt64) age {
  return resultPacket.age;
}
- (PacketBuilder*) setAge:(SInt64) value {
  resultPacket.hasAge = YES;
  resultPacket.age = value;
  return self;
}
- (PacketBuilder*) clearAge {
  resultPacket.hasAge = NO;
  resultPacket.age = 0L;
  return self;
}
- (BOOL) hasPayload {
  return resultPacket.hasPayload;
}
- (NSData*) payload {
  return resultPacket.payload;
}
- (PacketBuilder*) setPayload:(NSData*) value {
  resultPacket.hasPayload = YES;
  resultPacket.payload = value;
  return self;
}
- (PacketBuilder*) clearPayload {
  resultPacket.hasPayload = NO;
  resultPacket.payload = [NSData data];
  return self;
}
@end

@interface SyncPacket ()
@property (strong) PBAppendableArray * packetIdsArray;
@end

@implementation SyncPacket

@synthesize packetIdsArray;
@dynamic packetIds;
- (instancetype) init {
  if ((self = [super init])) {
  }
  return self;
}
static SyncPacket* defaultSyncPacketInstance = nil;
+ (void) initialize {
  if (self == [SyncPacket class]) {
    defaultSyncPacketInstance = [[SyncPacket alloc] init];
  }
}
+ (instancetype) defaultInstance {
  return defaultSyncPacketInstance;
}
- (instancetype) defaultInstance {
  return defaultSyncPacketInstance;
}
- (PBArray *)packetIds {
  return packetIdsArray;
}
- (SInt64)packetIdsAtIndex:(NSUInteger)index {
  return [packetIdsArray int64AtIndex:index];
}
- (BOOL) isInitialized {
  return YES;
}
- (void) writeToCodedOutputStream:(PBCodedOutputStream*) output {
  const NSUInteger packetIdsArrayCount = self.packetIdsArray.count;
  if (packetIdsArrayCount > 0) {
    const SInt64 *values = (const SInt64 *)self.packetIdsArray.data;
    for (NSUInteger i = 0; i < packetIdsArrayCount; ++i) {
      [output writeInt64:1 value:values[i]];
    }
  }
  [self.unknownFields writeToCodedOutputStream:output];
}
- (SInt32) serializedSize {
  __block SInt32 size_ = memoizedSerializedSize;
  if (size_ != -1) {
    return size_;
  }

  size_ = 0;
  {
    __block SInt32 dataSize = 0;
    const NSUInteger count = self.packetIdsArray.count;
    const SInt64 *values = (const SInt64 *)self.packetIdsArray.data;
    for (NSUInteger i = 0; i < count; ++i) {
      dataSize += computeInt64SizeNoTag(values[i]);
    }
    size_ += dataSize;
    size_ += (SInt32)(1 * count);
  }
  size_ += self.unknownFields.serializedSize;
  memoizedSerializedSize = size_;
  return size_;
}
+ (SyncPacket*) parseFromData:(NSData*) data {
  return (SyncPacket*)[[[SyncPacket builder] mergeFromData:data] build];
}
+ (SyncPacket*) parseFromData:(NSData*) data extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  return (SyncPacket*)[[[SyncPacket builder] mergeFromData:data extensionRegistry:extensionRegistry] build];
}
+ (SyncPacket*) parseFromInputStream:(NSInputStream*) input {
  return (SyncPacket*)[[[SyncPacket builder] mergeFromInputStream:input] build];
}
+ (SyncPacket*) parseFromInputStream:(NSInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  return (SyncPacket*)[[[SyncPacket builder] mergeFromInputStream:input extensionRegistry:extensionRegistry] build];
}
+ (SyncPacket*) parseFromCodedInputStream:(PBCodedInputStream*) input {
  return (SyncPacket*)[[[SyncPacket builder] mergeFromCodedInputStream:input] build];
}
+ (SyncPacket*) parseFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  return (SyncPacket*)[[[SyncPacket builder] mergeFromCodedInputStream:input extensionRegistry:extensionRegistry] build];
}
+ (SyncPacketBuilder*) builder {
  return [[SyncPacketBuilder alloc] init];
}
+ (SyncPacketBuilder*) builderWithPrototype:(SyncPacket*) prototype {
  return [[SyncPacket builder] mergeFrom:prototype];
}
- (SyncPacketBuilder*) builder {
  return [SyncPacket builder];
}
- (SyncPacketBuilder*) toBuilder {
  return [SyncPacket builderWithPrototype:self];
}
- (void) writeDescriptionTo:(NSMutableString*) output withIndent:(NSString*) indent {
  [self.packetIdsArray enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
    [output appendFormat:@"%@%@: %@\n", indent, @"packetIds", obj];
  }];
  [self.unknownFields writeDescriptionTo:output withIndent:indent];
}
- (void) storeInDictionary:(NSMutableDictionary *)dictionary {
  NSMutableArray * packetIdsArrayArray = [NSMutableArray new];
  NSUInteger packetIdsArrayCount=self.packetIdsArray.count;
  for(int i=0;i<packetIdsArrayCount;i++){
    [packetIdsArrayArray addObject: @([self.packetIdsArray int64AtIndex:i])];
  }
  [dictionary setObject: packetIdsArrayArray forKey: @"packetIds"];
  [self.unknownFields storeInDictionary:dictionary];
}
- (BOOL) isEqual:(id)other {
  if (other == self) {
    return YES;
  }
  if (![other isKindOfClass:[SyncPacket class]]) {
    return NO;
  }
  SyncPacket *otherMessage = other;
  return
      [self.packetIdsArray isEqualToArray:otherMessage.packetIdsArray] &&
      (self.unknownFields == otherMessage.unknownFields || (self.unknownFields != nil && [self.unknownFields isEqual:otherMessage.unknownFields]));
}
- (NSUInteger) hash {
  __block NSUInteger hashCode = 7;
  [self.packetIdsArray enumerateObjectsUsingBlock:^(NSNumber *obj, NSUInteger idx, BOOL *stop) {
    hashCode = hashCode * 31 + [obj longValue];
  }];
  hashCode = hashCode * 31 + [self.unknownFields hash];
  return hashCode;
}
@end

@interface SyncPacketBuilder()
@property (strong) SyncPacket* resultSyncPacket;
@end

@implementation SyncPacketBuilder
@synthesize resultSyncPacket;
- (instancetype) init {
  if ((self = [super init])) {
    self.resultSyncPacket = [[SyncPacket alloc] init];
  }
  return self;
}
- (PBGeneratedMessage*) internalGetResult {
  return resultSyncPacket;
}
- (SyncPacketBuilder*) clear {
  self.resultSyncPacket = [[SyncPacket alloc] init];
  return self;
}
- (SyncPacketBuilder*) clone {
  return [SyncPacket builderWithPrototype:resultSyncPacket];
}
- (SyncPacket*) defaultInstance {
  return [SyncPacket defaultInstance];
}
- (SyncPacket*) build {
  [self checkInitialized];
  return [self buildPartial];
}
- (SyncPacket*) buildPartial {
  SyncPacket* returnMe = resultSyncPacket;
  self.resultSyncPacket = nil;
  return returnMe;
}
- (SyncPacketBuilder*) mergeFrom:(SyncPacket*) other {
  if (other == [SyncPacket defaultInstance]) {
    return self;
  }
  if (other.packetIdsArray.count > 0) {
    if (resultSyncPacket.packetIdsArray == nil) {
      resultSyncPacket.packetIdsArray = [other.packetIdsArray copy];
    } else {
      [resultSyncPacket.packetIdsArray appendArray:other.packetIdsArray];
    }
  }
  [self mergeUnknownFields:other.unknownFields];
  return self;
}
- (SyncPacketBuilder*) mergeFromCodedInputStream:(PBCodedInputStream*) input {
  return [self mergeFromCodedInputStream:input extensionRegistry:[PBExtensionRegistry emptyRegistry]];
}
- (SyncPacketBuilder*) mergeFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  PBUnknownFieldSetBuilder* unknownFields = [PBUnknownFieldSet builderWithUnknownFields:self.unknownFields];
  while (YES) {
    SInt32 tag = [input readTag];
    switch (tag) {
      case 0:
        [self setUnknownFields:[unknownFields build]];
        return self;
      default: {
        if (![self parseUnknownField:input unknownFields:unknownFields extensionRegistry:extensionRegistry tag:tag]) {
          [self setUnknownFields:[unknownFields build]];
          return self;
        }
        break;
      }
      case 8: {
        [self addPacketIds:[input readInt64]];
        break;
      }
    }
  }
}
- (PBAppendableArray *)packetIds {
  return resultSyncPacket.packetIdsArray;
}
- (SInt64)packetIdsAtIndex:(NSUInteger)index {
  return [resultSyncPacket packetIdsAtIndex:index];
}
- (SyncPacketBuilder *)addPacketIds:(SInt64)value {
  if (resultSyncPacket.packetIdsArray == nil) {
    resultSyncPacket.packetIdsArray = [PBAppendableArray arrayWithValueType:PBArrayValueTypeInt64];
  }
  [resultSyncPacket.packetIdsArray addInt64:value];
  return self;
}
- (SyncPacketBuilder *)setPacketIdsArray:(NSArray *)array {
  resultSyncPacket.packetIdsArray = [PBAppendableArray arrayWithArray:array valueType:PBArrayValueTypeInt64];
  return self;
}
- (SyncPacketBuilder *)setPacketIdsValues:(const SInt64 *)values count:(NSUInteger)count {
  resultSyncPacket.packetIdsArray = [PBAppendableArray arrayWithValues:values count:count valueType:PBArrayValueTypeInt64];
  return self;
}
- (SyncPacketBuilder *)clearPacketIds {
  resultSyncPacket.packetIdsArray = nil;
  return self;
}
@end


// @@protoc_insertion_point(global_scope)
