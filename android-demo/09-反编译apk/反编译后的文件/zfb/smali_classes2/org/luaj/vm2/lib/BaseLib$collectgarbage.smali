.class final Lorg/luaj/vm2/lib/BaseLib$collectgarbage;
.super Lorg/luaj/vm2/lib/VarArgFunction;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/luaj/vm2/lib/VarArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Lorg/luaj/vm2/Varargs;)Lorg/luaj/vm2/Varargs;
    .locals 6

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/luaj/vm2/Varargs;->checkjstring(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "collect"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Ljava/lang/System;->gc()V

    sget-object v0, Lorg/luaj/vm2/lib/BaseLib$collectgarbage;->ZERO:Lorg/luaj/vm2/LuaNumber;

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v1, "count"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v1

    invoke-virtual {v0}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v3

    sub-long v0, v1, v3

    long-to-double v2, v0

    const-wide/high16 v4, 0x4090000000000000L    # 1024.0

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Lorg/luaj/vm2/lib/BaseLib$collectgarbage;->valueOf(D)Lorg/luaj/vm2/LuaNumber;

    move-result-object v2

    const-wide/16 v3, 0x400

    rem-long/2addr v0, v3

    long-to-double v0, v0

    invoke-static {v0, v1}, Lorg/luaj/vm2/lib/BaseLib$collectgarbage;->valueOf(D)Lorg/luaj/vm2/LuaNumber;

    move-result-object v0

    invoke-static {v2, v0}, Lorg/luaj/vm2/lib/BaseLib$collectgarbage;->varargsOf(Lorg/luaj/vm2/LuaValue;Lorg/luaj/vm2/Varargs;)Lorg/luaj/vm2/Varargs;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string/jumbo v1, "step"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Ljava/lang/System;->gc()V

    sget-object v0, Lorg/luaj/vm2/LuaValue;->TRUE:Lorg/luaj/vm2/LuaBoolean;

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "gc op"

    invoke-virtual {p0, v0}, Lorg/luaj/vm2/lib/BaseLib$collectgarbage;->argerror(Ljava/lang/String;)Lorg/luaj/vm2/LuaValue;

    sget-object v0, Lorg/luaj/vm2/lib/BaseLib$collectgarbage;->NIL:Lorg/luaj/vm2/LuaValue;

    goto :goto_0
.end method
