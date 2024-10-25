const std = @import("std");

pub const Provider = struct {
    allocator: std.mem.Allocator,
    name: []const u8,

    pub fn init(allocator: std.mem.Allocator, name: []const u8) Provider {
        return Provider{
            .allocator = allocator,
            .name = name,
        };
    }

    pub fn deinit(self: *Provider) void {
        _ = self;
    }
};

