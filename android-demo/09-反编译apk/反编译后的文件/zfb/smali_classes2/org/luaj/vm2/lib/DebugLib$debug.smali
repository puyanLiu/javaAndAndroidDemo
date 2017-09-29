.class final Lorg/luaj/vm2/lib/DebugLib$debug;
.super Lorg/luaj/vm2/lib/ZeroArgFunction;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/luaj/vm2/lib/ZeroArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public final call()Lorg/luaj/vm2/LuaValue;
    .locals 1

    sget-object v0, Lorg/luaj/vm2/lib/DebugLib$debug;->NONE:Lorg/luaj/vm2/LuaValue;

    return-object v0
.end method
