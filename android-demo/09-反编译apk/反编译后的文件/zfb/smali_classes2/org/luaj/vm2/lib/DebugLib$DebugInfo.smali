.class Lorg/luaj/vm2/lib/DebugLib$DebugInfo;
.super Ljava/lang/Object;


# instance fields
.field cf:Lorg/luaj/vm2/lib/DebugLib$CallFrame;

.field currentline:I

.field istailcall:Z

.field isvararg:Z

.field lastlinedefined:I

.field linedefined:I

.field name:Ljava/lang/String;

.field namewhat:Ljava/lang/String;

.field nparams:S

.field nups:S

.field short_src:Ljava/lang/String;

.field source:Ljava/lang/String;

.field what:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public funcinfo(Lorg/luaj/vm2/LuaFunction;)V
    .locals 2

    const/4 v1, -0x1

    invoke-virtual {p1}, Lorg/luaj/vm2/LuaFunction;->isclosure()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lorg/luaj/vm2/LuaFunction;->checkclosure()Lorg/luaj/vm2/LuaClosure;

    move-result-object v0

    iget-object v1, v0, Lorg/luaj/vm2/LuaClosure;->p:Lorg/luaj/vm2/Prototype;

    iget-object v0, v1, Lorg/luaj/vm2/Prototype;->source:Lorg/luaj/vm2/LuaString;

    if-eqz v0, :cond_0

    iget-object v0, v1, Lorg/luaj/vm2/Prototype;->source:Lorg/luaj/vm2/LuaString;

    invoke-virtual {v0}, Lorg/luaj/vm2/LuaString;->tojstring()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lorg/luaj/vm2/lib/DebugLib$DebugInfo;->source:Ljava/lang/String;

    iget v0, v1, Lorg/luaj/vm2/Prototype;->linedefined:I

    iput v0, p0, Lorg/luaj/vm2/lib/DebugLib$DebugInfo;->linedefined:I

    iget v0, v1, Lorg/luaj/vm2/Prototype;->lastlinedefined:I

    iput v0, p0, Lorg/luaj/vm2/lib/DebugLib$DebugInfo;->lastlinedefined:I

    iget v0, p0, Lorg/luaj/vm2/lib/DebugLib$DebugInfo;->linedefined:I

    if-nez v0, :cond_1

    const-string/jumbo v0, "main"

    :goto_1
    iput-object v0, p0, Lorg/luaj/vm2/lib/DebugLib$DebugInfo;->what:Ljava/lang/String;

    invoke-virtual {v1}, Lorg/luaj/vm2/Prototype;->shortsource()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/luaj/vm2/lib/DebugLib$DebugInfo;->short_src:Ljava/lang/String;

    :goto_2
    return-void

    :cond_0
    const-string/jumbo v0, "=?"

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "Lua"

    goto :goto_1

    :cond_2
    const-string/jumbo v0, "=[Java]"

    iput-object v0, p0, Lorg/luaj/vm2/lib/DebugLib$DebugInfo;->source:Ljava/lang/String;

    iput v1, p0, Lorg/luaj/vm2/lib/DebugLib$DebugInfo;->linedefined:I

    iput v1, p0, Lorg/luaj/vm2/lib/DebugLib$DebugInfo;->lastlinedefined:I

    const-string/jumbo v0, "Java"

    iput-object v0, p0, Lorg/luaj/vm2/lib/DebugLib$DebugInfo;->what:Ljava/lang/String;

    invoke-virtual {p1}, Lorg/luaj/vm2/LuaFunction;->name()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/luaj/vm2/lib/DebugLib$DebugInfo;->short_src:Ljava/lang/String;

    goto :goto_2
.end method
