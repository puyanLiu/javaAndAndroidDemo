.class Lorg/luaj/vm2/lib/StringLib$GMatchAux;
.super Lorg/luaj/vm2/lib/VarArgFunction;


# instance fields
.field private final a:I

.field private final b:Lorg/luaj/vm2/lib/StringLib$MatchState;

.field private c:I


# direct methods
.method public constructor <init>(Lorg/luaj/vm2/Varargs;Lorg/luaj/vm2/LuaString;Lorg/luaj/vm2/LuaString;)V
    .locals 1

    invoke-direct {p0}, Lorg/luaj/vm2/lib/VarArgFunction;-><init>()V

    invoke-virtual {p2}, Lorg/luaj/vm2/LuaString;->length()I

    move-result v0

    iput v0, p0, Lorg/luaj/vm2/lib/StringLib$GMatchAux;->a:I

    new-instance v0, Lorg/luaj/vm2/lib/StringLib$MatchState;

    invoke-direct {v0, p1, p2, p3}, Lorg/luaj/vm2/lib/StringLib$MatchState;-><init>(Lorg/luaj/vm2/Varargs;Lorg/luaj/vm2/LuaString;Lorg/luaj/vm2/LuaString;)V

    iput-object v0, p0, Lorg/luaj/vm2/lib/StringLib$GMatchAux;->b:Lorg/luaj/vm2/lib/StringLib$MatchState;

    const/4 v0, 0x0

    iput v0, p0, Lorg/luaj/vm2/lib/StringLib$GMatchAux;->c:I

    return-void
.end method


# virtual methods
.method public invoke(Lorg/luaj/vm2/Varargs;)Lorg/luaj/vm2/Varargs;
    .locals 4

    :goto_0
    iget v0, p0, Lorg/luaj/vm2/lib/StringLib$GMatchAux;->c:I

    iget v1, p0, Lorg/luaj/vm2/lib/StringLib$GMatchAux;->a:I

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lorg/luaj/vm2/lib/StringLib$GMatchAux;->b:Lorg/luaj/vm2/lib/StringLib$MatchState;

    invoke-virtual {v0}, Lorg/luaj/vm2/lib/StringLib$MatchState;->reset()V

    iget-object v0, p0, Lorg/luaj/vm2/lib/StringLib$GMatchAux;->b:Lorg/luaj/vm2/lib/StringLib$MatchState;

    iget v1, p0, Lorg/luaj/vm2/lib/StringLib$GMatchAux;->c:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/luaj/vm2/lib/StringLib$MatchState;->match(II)I

    move-result v0

    if-ltz v0, :cond_0

    iget v1, p0, Lorg/luaj/vm2/lib/StringLib$GMatchAux;->c:I

    iput v0, p0, Lorg/luaj/vm2/lib/StringLib$GMatchAux;->c:I

    iget-object v2, p0, Lorg/luaj/vm2/lib/StringLib$GMatchAux;->b:Lorg/luaj/vm2/lib/StringLib$MatchState;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v1, v0}, Lorg/luaj/vm2/lib/StringLib$MatchState;->push_captures(ZII)Lorg/luaj/vm2/Varargs;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    iget v0, p0, Lorg/luaj/vm2/lib/StringLib$GMatchAux;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/luaj/vm2/lib/StringLib$GMatchAux;->c:I

    goto :goto_0

    :cond_1
    sget-object v0, Lorg/luaj/vm2/lib/StringLib$GMatchAux;->NIL:Lorg/luaj/vm2/LuaValue;

    goto :goto_1
.end method
