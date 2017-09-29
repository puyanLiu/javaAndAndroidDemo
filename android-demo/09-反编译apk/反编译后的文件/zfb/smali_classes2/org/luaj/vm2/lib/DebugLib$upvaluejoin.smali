.class final Lorg/luaj/vm2/lib/DebugLib$upvaluejoin;
.super Lorg/luaj/vm2/lib/VarArgFunction;


# instance fields
.field private final a:Lorg/luaj/vm2/lib/DebugLib;


# direct methods
.method constructor <init>(Lorg/luaj/vm2/lib/DebugLib;)V
    .locals 0

    invoke-direct {p0}, Lorg/luaj/vm2/lib/VarArgFunction;-><init>()V

    iput-object p1, p0, Lorg/luaj/vm2/lib/DebugLib$upvaluejoin;->a:Lorg/luaj/vm2/lib/DebugLib;

    return-void
.end method


# virtual methods
.method public final invoke(Lorg/luaj/vm2/Varargs;)Lorg/luaj/vm2/Varargs;
    .locals 5

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/luaj/vm2/Varargs;->checkclosure(I)Lorg/luaj/vm2/LuaClosure;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Lorg/luaj/vm2/Varargs;->checkint(I)I

    move-result v1

    const/4 v2, 0x3

    invoke-virtual {p1, v2}, Lorg/luaj/vm2/Varargs;->checkclosure(I)Lorg/luaj/vm2/LuaClosure;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {p1, v3}, Lorg/luaj/vm2/Varargs;->checkint(I)I

    move-result v3

    if-lez v1, :cond_0

    iget-object v4, v0, Lorg/luaj/vm2/LuaClosure;->upValues:[Lorg/luaj/vm2/UpValue;

    array-length v4, v4

    if-le v1, v4, :cond_1

    :cond_0
    const-string/jumbo v4, "index out of range"

    invoke-virtual {p0, v4}, Lorg/luaj/vm2/lib/DebugLib$upvaluejoin;->argerror(Ljava/lang/String;)Lorg/luaj/vm2/LuaValue;

    :cond_1
    if-lez v3, :cond_2

    iget-object v4, v2, Lorg/luaj/vm2/LuaClosure;->upValues:[Lorg/luaj/vm2/UpValue;

    array-length v4, v4

    if-le v3, v4, :cond_3

    :cond_2
    const-string/jumbo v4, "index out of range"

    invoke-virtual {p0, v4}, Lorg/luaj/vm2/lib/DebugLib$upvaluejoin;->argerror(Ljava/lang/String;)Lorg/luaj/vm2/LuaValue;

    :cond_3
    iget-object v0, v0, Lorg/luaj/vm2/LuaClosure;->upValues:[Lorg/luaj/vm2/UpValue;

    add-int/lit8 v1, v1, -0x1

    iget-object v2, v2, Lorg/luaj/vm2/LuaClosure;->upValues:[Lorg/luaj/vm2/UpValue;

    add-int/lit8 v3, v3, -0x1

    aget-object v2, v2, v3

    aput-object v2, v0, v1

    sget-object v0, Lorg/luaj/vm2/lib/DebugLib$upvaluejoin;->NONE:Lorg/luaj/vm2/LuaValue;

    return-object v0
.end method
