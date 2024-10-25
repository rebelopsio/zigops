const std = @import("std");

pub const Engine = struct {
    allocator: std.mem.Allocator,
    
    pub fn init(allocator: std.mem.Allocator) Engine {
        return Engine{
            .allocator = allocator,
        };
    }

    pub fn deinit(self: *Engine) void {
        _ = self;
    }
};

pub fn main() !void {
    // Get allocator
    var gpa = std.heap.GeneralPurposeAllocator(.{}){};
    defer _ = gpa.deinit();
    const allocator = gpa.allocator();

    // Initialize engine
    var engine = Engine.init(allocator);
    defer engine.deinit();

    // Setup CLI
    const stdout = std.io.getStdOut().writer();
    try stdout.print("IaC Engine Started\n", .{});
}
