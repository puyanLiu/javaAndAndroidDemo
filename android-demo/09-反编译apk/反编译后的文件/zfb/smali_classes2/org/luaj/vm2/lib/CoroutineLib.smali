.class public Lorg/luaj/vm2/lib/CoroutineLib;
.super Lorg/luaj/vm2/lib/TwoArgFunction;


# static fields
.field static coroutine_count:I

.field static thread_orphan_check_interval:J


# instance fields
.field globals:Lorg/luaj/vm2/Globals;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x7530

    sput-wide v0, Lorg/luaj/vm2/lib/CoroutineLib;->thread_orphan_check_interval:J

    const/4 v0, 0x0

    sput v0, Lorg/luaj/vm2/lib/CoroutineLib;->coroutine_count:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/luaj/vm2/lib/TwoArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lorg/luaj/vm2/LuaValue;Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/LuaValue;
    .locals 3

    invoke-virtual {p2}, Lorg/luaj/vm2/LuaValue;->checkglobals()Lorg/luaj/vm2/Globals;

    move-result-object v0

    iput-object v0, p0, Lorg/luaj/vm2/lib/CoroutineLib;->globals:Lorg/luaj/vm2/Globals;

    new-instance v0, Lorg/luaj/vm2/LuaTable;

    invoke-direct {v0}, Lorg/luaj/vm2/LuaTable;-><init>()V

    const-string/jumbo v1, "create"

    new-instance v2, Lorg/luaj/vm2/lib/CoroutineLib$create;

    invoke-direct {v2, p0}, Lorg/luaj/vm2/lib/CoroutineLib$create;-><init>(Lorg/luaj/vm2/lib/CoroutineLib;)V

    invoke-virtual {v0, v1, v2}, Lorg/luaj/vm2/LuaTable;->set(Ljava/lang/String;Lorg/luaj/vm2/LuaValue;)V

    const-string/jumbo v1, "resume"

    new-instance v2, Lorg/luaj/vm2/lib/CoroutineLib$resume;

    invoke-direct {v2, p0}, Lorg/luaj/vm2/lib/CoroutineLib$resume;-><init>(Lorg/luaj/vm2/lib/CoroutineLib;)V

    invoke-virtual {v0, v1, v2}, Lorg/luaj/vm2/LuaTable;->set(Ljava/lang/String;Lorg/luaj/vm2/LuaValue;)V

    const-string/jumbo v1, "running"

    new-instance v2, Lorg/luaj/vm2/lib/CoroutineLib$running;

    invoke-direct {v2, p0}, Lorg/luaj/vm2/lib/CoroutineLib$running;-><init>(Lorg/luaj/vm2/lib/CoroutineLib;)V

    invoke-virtual {v0, v1, v2}, Lorg/luaj/vm2/LuaTable;->set(Ljava/lang/String;Lorg/luaj/vm2/LuaValue;)V

    const-string/jumbo v1, "status"

    new-instance v2, Lorg/luaj/vm2/lib/CoroutineLib$status;

    invoke-direct {v2}, Lorg/luaj/vm2/lib/CoroutineLib$status;-><init>()V

    invoke-virtual {v0, v1, v2}, Lorg/luaj/vm2/LuaTable;->set(Ljava/lang/String;Lorg/luaj/vm2/LuaValue;)V

    const-string/jumbo v1, "yield"

    new-instance v2, Lorg/luaj/vm2/lib/CoroutineLib$yield;

    invoke-direct {v2, p0}, Lorg/luaj/vm2/lib/CoroutineLib$yield;-><init>(Lorg/luaj/vm2/lib/CoroutineLib;)V

    invoke-virtual {v0, v1, v2}, Lorg/luaj/vm2/LuaTable;->set(Ljava/lang/String;Lorg/luaj/vm2/LuaValue;)V

    const-string/jumbo v1, "wrap"

    new-instance v2, Lorg/luaj/vm2/lib/CoroutineLib$wrap;

    invoke-direct {v2, p0}, Lorg/luaj/vm2/lib/CoroutineLib$wrap;-><init>(Lorg/luaj/vm2/lib/CoroutineLib;)V

    invoke-virtual {v0, v1, v2}, Lorg/luaj/vm2/LuaTable;->set(Ljava/lang/String;Lorg/luaj/vm2/LuaValue;)V

    const-string/jumbo v1, "coroutine"

    invoke-virtual {p2, v1, v0}, Lorg/luaj/vm2/LuaValue;->set(Ljava/lang/String;Lorg/luaj/vm2/LuaValue;)V

    const-string/jumbo v1, "package"

    invoke-virtual {p2, v1}, Lorg/luaj/vm2/LuaValue;->get(Ljava/lang/String;)Lorg/luaj/vm2/LuaValue;

    move-result-object v1

    const-string/jumbo v2, "loaded"

    invoke-virtual {v1, v2}, Lorg/luaj/vm2/LuaValue;->get(Ljava/lang/String;)Lorg/luaj/vm2/LuaValue;

    move-result-object v1

    const-string/jumbo v2, "coroutine"

    invoke-virtual {v1, v2, v0}, Lorg/luaj/vm2/LuaValue;->set(Ljava/lang/String;Lorg/luaj/vm2/LuaValue;)V

    return-object v0
.end method
