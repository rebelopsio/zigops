const std = @import("std");

pub const ResourceState = enum {
    unknown,
    planned,
    applied,
    failed,
};

pub const Resource = struct {
    allocator: std.mem.Allocator,
    id: []const u8,
    state: ResourceState,

    pub fn init(allocator: std.mem.Allocator, id: []const u8) Resource {
        return Resource{
            .allocator = allocator,
            .id = id,
            .state = .unknown,
        };
    }

    pub fn deinit(self: *Resource) void {
        _ = self;
    }
};

