.class final Lorg/luaj/vm2/lib/CoroutineLib$status;
.super Lorg/luaj/vm2/lib/LibFunction;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/luaj/vm2/lib/LibFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public final call(Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/LuaValue;
    .locals 1

    invoke-virtual {p1}, Lorg/luaj/vm2/LuaValue;->checkthread()Lorg/luaj/vm2/LuaThread;

    move-result-object v0

    invoke-virtual {v0}, Lorg/luaj/vm2/LuaThread;->getStatus()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/luaj/vm2/lib/CoroutineLib$status;->valueOf(Ljava/lang/String;)Lorg/luaj/vm2/LuaString;

    move-result-object v0

    return-object v0
.end method
