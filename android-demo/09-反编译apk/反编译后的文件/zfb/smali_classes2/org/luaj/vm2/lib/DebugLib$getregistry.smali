.class final Lorg/luaj/vm2/lib/DebugLib$getregistry;
.super Lorg/luaj/vm2/lib/ZeroArgFunction;


# instance fields
.field private final a:Lorg/luaj/vm2/lib/DebugLib;


# direct methods
.method constructor <init>(Lorg/luaj/vm2/lib/DebugLib;)V
    .locals 0

    invoke-direct {p0}, Lorg/luaj/vm2/lib/ZeroArgFunction;-><init>()V

    iput-object p1, p0, Lorg/luaj/vm2/lib/DebugLib$getregistry;->a:Lorg/luaj/vm2/lib/DebugLib;

    return-void
.end method


# virtual methods
.method public final call()Lorg/luaj/vm2/LuaValue;
    .locals 1

    iget-object v0, p0, Lorg/luaj/vm2/lib/DebugLib$getregistry;->a:Lorg/luaj/vm2/lib/DebugLib;

    iget-object v0, v0, Lorg/luaj/vm2/lib/DebugLib;->globals:Lorg/luaj/vm2/Globals;

    return-object v0
.end method
