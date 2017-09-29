.class public Lorg/luaj/vm2/lib/DebugLib;
.super Lorg/luaj/vm2/lib/TwoArgFunction;


# static fields
.field public static CALLS:Z

.field public static TRACE:Z

.field private static final a:Lorg/luaj/vm2/LuaString;

.field private static final b:Lorg/luaj/vm2/LuaString;

.field private static final c:Lorg/luaj/vm2/LuaString;

.field private static final d:Lorg/luaj/vm2/LuaString;

.field private static final e:Lorg/luaj/vm2/LuaString;

.field private static final f:Lorg/luaj/vm2/LuaString;

.field private static final g:Lorg/luaj/vm2/LuaString;

.field private static final h:Lorg/luaj/vm2/LuaString;

.field private static final i:Lorg/luaj/vm2/LuaString;

.field private static final j:Lorg/luaj/vm2/LuaString;

.field private static final k:Lorg/luaj/vm2/LuaString;

.field private static final l:Lorg/luaj/vm2/LuaString;

.field private static final m:Lorg/luaj/vm2/LuaString;

.field private static final n:Lorg/luaj/vm2/LuaString;

.field private static final o:Lorg/luaj/vm2/LuaString;

.field private static final p:Lorg/luaj/vm2/LuaString;

.field private static final q:Lorg/luaj/vm2/LuaString;

.field private static final r:Lorg/luaj/vm2/LuaString;

.field private static final s:Lorg/luaj/vm2/LuaString;

.field private static final t:Lorg/luaj/vm2/LuaString;


# instance fields
.field globals:Lorg/luaj/vm2/Globals;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    const-string/jumbo v2, "CALLS"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    move v2, v0

    :goto_0
    sput-boolean v2, Lorg/luaj/vm2/lib/DebugLib;->CALLS:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    :try_start_1
    const-string/jumbo v2, "TRACE"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    :goto_2
    sput-boolean v0, Lorg/luaj/vm2/lib/DebugLib;->TRACE:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_3
    const-string/jumbo v0, "Lua"

    invoke-static {v0}, Lorg/luaj/vm2/lib/DebugLib;->valueOf(Ljava/lang/String;)Lorg/luaj/vm2/LuaString;

    move-result-object v0

    sput-object v0, Lorg/luaj/vm2/lib/DebugLib;->a:Lorg/luaj/vm2/LuaString;

    const-string/jumbo v0, "?"

    invoke-static {v0}, Lorg/luaj/vm2/lib/DebugLib;->valueOf(Ljava/lang/String;)Lorg/luaj/vm2/LuaString;

    move-result-object v0

    sput-object v0, Lorg/luaj/vm2/lib/DebugLib;->b:Lorg/luaj/vm2/LuaString;

    const-string/jumbo v0, "call"

    invoke-static {v0}, Lorg/luaj/vm2/lib/DebugLib;->valueOf(Ljava/lang/String;)Lorg/luaj/vm2/LuaString;

    move-result-object v0

    sput-object v0, Lorg/luaj/vm2/lib/DebugLib;->c:Lorg/luaj/vm2/LuaString;

    const-string/jumbo v0, "line"

    invoke-static {v0}, Lorg/luaj/vm2/lib/DebugLib;->valueOf(Ljava/lang/String;)Lorg/luaj/vm2/LuaString;

    move-result-object v0

    sput-object v0, Lorg/luaj/vm2/lib/DebugLib;->d:Lorg/luaj/vm2/LuaString;

    const-string/jumbo v0, "count"

    invoke-static {v0}, Lorg/luaj/vm2/lib/DebugLib;->valueOf(Ljava/lang/String;)Lorg/luaj/vm2/LuaString;

    move-result-object v0

    sput-object v0, Lorg/luaj/vm2/lib/DebugLib;->e:Lorg/luaj/vm2/LuaString;

    const-string/jumbo v0, "return"

    invoke-static {v0}, Lorg/luaj/vm2/lib/DebugLib;->valueOf(Ljava/lang/String;)Lorg/luaj/vm2/LuaString;

    move-result-object v0

    sput-object v0, Lorg/luaj/vm2/lib/DebugLib;->f:Lorg/luaj/vm2/LuaString;

    const-string/jumbo v0, "func"

    invoke-static {v0}, Lorg/luaj/vm2/lib/DebugLib;->valueOf(Ljava/lang/String;)Lorg/luaj/vm2/LuaString;

    move-result-object v0

    sput-object v0, Lorg/luaj/vm2/lib/DebugLib;->g:Lorg/luaj/vm2/LuaString;

    const-string/jumbo v0, "istailcall"

    invoke-static {v0}, Lorg/luaj/vm2/lib/DebugLib;->valueOf(Ljava/lang/String;)Lorg/luaj/vm2/LuaString;

    move-result-object v0

    sput-object v0, Lorg/luaj/vm2/lib/DebugLib;->h:Lorg/luaj/vm2/LuaString;

    const-string/jumbo v0, "isvararg"

    invoke-static {v0}, Lorg/luaj/vm2/lib/DebugLib;->valueOf(Ljava/lang/String;)Lorg/luaj/vm2/LuaString;

    move-result-object v0

    sput-object v0, Lorg/luaj/vm2/lib/DebugLib;->i:Lorg/luaj/vm2/LuaString;

    const-string/jumbo v0, "nups"

    invoke-static {v0}, Lorg/luaj/vm2/lib/DebugLib;->valueOf(Ljava/lang/String;)Lorg/luaj/vm2/LuaString;

    move-result-object v0

    sput-object v0, Lorg/luaj/vm2/lib/DebugLib;->j:Lorg/luaj/vm2/LuaString;

    const-string/jumbo v0, "nparams"

    invoke-static {v0}, Lorg/luaj/vm2/lib/DebugLib;->valueOf(Ljava/lang/String;)Lorg/luaj/vm2/LuaString;

    move-result-object v0

    sput-object v0, Lorg/luaj/vm2/lib/DebugLib;->k:Lorg/luaj/vm2/LuaString;

    const-string/jumbo v0, "name"

    invoke-static {v0}, Lorg/luaj/vm2/lib/DebugLib;->valueOf(Ljava/lang/String;)Lorg/luaj/vm2/LuaString;

    move-result-object v0

    sput-object v0, Lorg/luaj/vm2/lib/DebugLib;->l:Lorg/luaj/vm2/LuaString;

    const-string/jumbo v0, "namewhat"

    invoke-static {v0}, Lorg/luaj/vm2/lib/DebugLib;->valueOf(Ljava/lang/String;)Lorg/luaj/vm2/LuaString;

    move-result-object v0

    sput-object v0, Lorg/luaj/vm2/lib/DebugLib;->m:Lorg/luaj/vm2/LuaString;

    const-string/jumbo v0, "what"

    invoke-static {v0}, Lorg/luaj/vm2/lib/DebugLib;->valueOf(Ljava/lang/String;)Lorg/luaj/vm2/LuaString;

    move-result-object v0

    sput-object v0, Lorg/luaj/vm2/lib/DebugLib;->n:Lorg/luaj/vm2/LuaString;

    const-string/jumbo v0, "source"

    invoke-static {v0}, Lorg/luaj/vm2/lib/DebugLib;->valueOf(Ljava/lang/String;)Lorg/luaj/vm2/LuaString;

    move-result-object v0

    sput-object v0, Lorg/luaj/vm2/lib/DebugLib;->o:Lorg/luaj/vm2/LuaString;

    const-string/jumbo v0, "short_src"

    invoke-static {v0}, Lorg/luaj/vm2/lib/DebugLib;->valueOf(Ljava/lang/String;)Lorg/luaj/vm2/LuaString;

    move-result-object v0

    sput-object v0, Lorg/luaj/vm2/lib/DebugLib;->p:Lorg/luaj/vm2/LuaString;

    const-string/jumbo v0, "linedefined"

    invoke-static {v0}, Lorg/luaj/vm2/lib/DebugLib;->valueOf(Ljava/lang/String;)Lorg/luaj/vm2/LuaString;

    move-result-object v0

    sput-object v0, Lorg/luaj/vm2/lib/DebugLib;->q:Lorg/luaj/vm2/LuaString;

    const-string/jumbo v0, "lastlinedefined"

    invoke-static {v0}, Lorg/luaj/vm2/lib/DebugLib;->valueOf(Ljava/lang/String;)Lorg/luaj/vm2/LuaString;

    move-result-object v0

    sput-object v0, Lorg/luaj/vm2/lib/DebugLib;->r:Lorg/luaj/vm2/LuaString;

    const-string/jumbo v0, "currentline"

    invoke-static {v0}, Lorg/luaj/vm2/lib/DebugLib;->valueOf(Ljava/lang/String;)Lorg/luaj/vm2/LuaString;

    move-result-object v0

    sput-object v0, Lorg/luaj/vm2/lib/DebugLib;->s:Lorg/luaj/vm2/LuaString;

    const-string/jumbo v0, "activelines"

    invoke-static {v0}, Lorg/luaj/vm2/lib/DebugLib;->valueOf(Ljava/lang/String;)Lorg/luaj/vm2/LuaString;

    move-result-object v0

    sput-object v0, Lorg/luaj/vm2/lib/DebugLib;->t:Lorg/luaj/vm2/LuaString;

    return-void

    :cond_0
    move v2, v1

    goto/16 :goto_0

    :cond_1
    move v0, v1

    goto/16 :goto_2

    :catch_0
    move-exception v0

    goto/16 :goto_3

    :catch_1
    move-exception v2

    goto/16 :goto_1
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/luaj/vm2/lib/TwoArgFunction;-><init>()V

    return-void
.end method

.method static access$000()Lorg/luaj/vm2/LuaString;
    .locals 1

    sget-object v0, Lorg/luaj/vm2/lib/DebugLib;->n:Lorg/luaj/vm2/LuaString;

    return-object v0
.end method

.method static access$100()Lorg/luaj/vm2/LuaString;
    .locals 1

    sget-object v0, Lorg/luaj/vm2/lib/DebugLib;->a:Lorg/luaj/vm2/LuaString;

    return-object v0
.end method

.method static access$1000()Lorg/luaj/vm2/LuaString;
    .locals 1

    sget-object v0, Lorg/luaj/vm2/lib/DebugLib;->l:Lorg/luaj/vm2/LuaString;

    return-object v0
.end method

.method static access$1100()Lorg/luaj/vm2/LuaString;
    .locals 1

    sget-object v0, Lorg/luaj/vm2/lib/DebugLib;->m:Lorg/luaj/vm2/LuaString;

    return-object v0
.end method

.method static access$1200()Lorg/luaj/vm2/LuaString;
    .locals 1

    sget-object v0, Lorg/luaj/vm2/lib/DebugLib;->h:Lorg/luaj/vm2/LuaString;

    return-object v0
.end method

.method static access$1300()Lorg/luaj/vm2/LuaString;
    .locals 1

    sget-object v0, Lorg/luaj/vm2/lib/DebugLib;->t:Lorg/luaj/vm2/LuaString;

    return-object v0
.end method

.method static access$1400()Lorg/luaj/vm2/LuaString;
    .locals 1

    sget-object v0, Lorg/luaj/vm2/lib/DebugLib;->g:Lorg/luaj/vm2/LuaString;

    return-object v0
.end method

.method static access$200()Lorg/luaj/vm2/LuaString;
    .locals 1

    sget-object v0, Lorg/luaj/vm2/lib/DebugLib;->o:Lorg/luaj/vm2/LuaString;

    return-object v0
.end method

.method static access$300()Lorg/luaj/vm2/LuaString;
    .locals 1

    sget-object v0, Lorg/luaj/vm2/lib/DebugLib;->p:Lorg/luaj/vm2/LuaString;

    return-object v0
.end method

.method static access$400()Lorg/luaj/vm2/LuaString;
    .locals 1

    sget-object v0, Lorg/luaj/vm2/lib/DebugLib;->q:Lorg/luaj/vm2/LuaString;

    return-object v0
.end method

.method static access$500()Lorg/luaj/vm2/LuaString;
    .locals 1

    sget-object v0, Lorg/luaj/vm2/lib/DebugLib;->r:Lorg/luaj/vm2/LuaString;

    return-object v0
.end method

.method static access$600()Lorg/luaj/vm2/LuaString;
    .locals 1

    sget-object v0, Lorg/luaj/vm2/lib/DebugLib;->s:Lorg/luaj/vm2/LuaString;

    return-object v0
.end method

.method static access$700()Lorg/luaj/vm2/LuaString;
    .locals 1

    sget-object v0, Lorg/luaj/vm2/lib/DebugLib;->j:Lorg/luaj/vm2/LuaString;

    return-object v0
.end method

.method static access$800()Lorg/luaj/vm2/LuaString;
    .locals 1

    sget-object v0, Lorg/luaj/vm2/lib/DebugLib;->k:Lorg/luaj/vm2/LuaString;

    return-object v0
.end method

.method static access$900()Lorg/luaj/vm2/LuaString;
    .locals 1

    sget-object v0, Lorg/luaj/vm2/lib/DebugLib;->i:Lorg/luaj/vm2/LuaString;

    return-object v0
.end method

.method static findsetreg(Lorg/luaj/vm2/Prototype;II)I
    .locals 6

    const/4 v1, -0x1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    iget-object v2, p0, Lorg/luaj/vm2/Prototype;->code:[I

    aget v2, v2, v0

    invoke-static {v2}, Lorg/luaj/vm2/Lua;->GET_OPCODE(I)I

    move-result v3

    invoke-static {v2}, Lorg/luaj/vm2/Lua;->GETARG_A(I)I

    move-result v4

    sparse-switch v3, :sswitch_data_0

    invoke-static {v3}, Lorg/luaj/vm2/Lua;->testAMode(I)Z

    move-result v2

    if-eqz v2, :cond_1

    if-ne p2, v4, :cond_1

    move v1, v0

    :goto_1
    add-int/lit8 v1, v1, 0x1

    move v5, v0

    move v0, v1

    move v1, v5

    goto :goto_0

    :sswitch_0
    invoke-static {v2}, Lorg/luaj/vm2/Lua;->GETARG_B(I)I

    move-result v2

    if-gt v4, p2, :cond_1

    add-int/2addr v2, v4

    if-gt p2, v2, :cond_1

    move v1, v0

    goto :goto_1

    :sswitch_1
    add-int/lit8 v2, v4, 0x2

    if-lt p2, v2, :cond_1

    move v1, v0

    goto :goto_1

    :sswitch_2
    if-lt p2, v4, :cond_1

    move v1, v0

    goto :goto_1

    :sswitch_3
    invoke-static {v2}, Lorg/luaj/vm2/Lua;->GETARG_sBx(I)I

    move-result v2

    add-int/lit8 v3, v0, 0x1

    add-int/2addr v3, v2

    if-ge v0, v3, :cond_1

    if-gt v3, p1, :cond_1

    add-int/2addr v0, v2

    move v5, v1

    move v1, v0

    move v0, v5

    goto :goto_1

    :sswitch_4
    if-ne p2, v4, :cond_1

    move v1, v0

    goto :goto_1

    :cond_0
    return v1

    :cond_1
    move v5, v1

    move v1, v0

    move v0, v5

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x17 -> :sswitch_3
        0x1b -> :sswitch_4
        0x1d -> :sswitch_2
        0x1e -> :sswitch_2
        0x22 -> :sswitch_1
    .end sparse-switch
.end method

.method static findupvalue(Lorg/luaj/vm2/LuaClosure;I)Lorg/luaj/vm2/LuaString;
    .locals 2

    iget-object v0, p0, Lorg/luaj/vm2/LuaClosure;->upValues:[Lorg/luaj/vm2/UpValue;

    if-eqz v0, :cond_1

    if-lez p1, :cond_1

    iget-object v0, p0, Lorg/luaj/vm2/LuaClosure;->upValues:[Lorg/luaj/vm2/UpValue;

    array-length v0, v0

    if-gt p1, v0, :cond_1

    iget-object v0, p0, Lorg/luaj/vm2/LuaClosure;->p:Lorg/luaj/vm2/Prototype;

    iget-object v0, v0, Lorg/luaj/vm2/Prototype;->upvalues:[Lorg/luaj/vm2/Upvaldesc;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/luaj/vm2/LuaClosure;->p:Lorg/luaj/vm2/Prototype;

    iget-object v0, v0, Lorg/luaj/vm2/Prototype;->upvalues:[Lorg/luaj/vm2/Upvaldesc;

    array-length v0, v0

    if-gt p1, v0, :cond_0

    iget-object v0, p0, Lorg/luaj/vm2/LuaClosure;->p:Lorg/luaj/vm2/Prototype;

    iget-object v0, v0, Lorg/luaj/vm2/Prototype;->upvalues:[Lorg/luaj/vm2/Upvaldesc;

    add-int/lit8 v1, p1, -0x1

    aget-object v0, v0, v1

    iget-object v0, v0, Lorg/luaj/vm2/Upvaldesc;->name:Lorg/luaj/vm2/LuaString;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    const-string/jumbo v1, "."

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/luaj/vm2/LuaString;->valueOf(Ljava/lang/String;)Lorg/luaj/vm2/LuaString;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static getfuncname(Lorg/luaj/vm2/lib/DebugLib$CallFrame;)Lorg/luaj/vm2/lib/DebugLib$NameWhat;
    .locals 4

    iget-object v0, p0, Lorg/luaj/vm2/lib/DebugLib$CallFrame;->f:Lorg/luaj/vm2/LuaFunction;

    invoke-virtual {v0}, Lorg/luaj/vm2/LuaFunction;->isclosure()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lorg/luaj/vm2/lib/DebugLib$NameWhat;

    iget-object v1, p0, Lorg/luaj/vm2/lib/DebugLib$CallFrame;->f:Lorg/luaj/vm2/LuaFunction;

    invoke-virtual {v1}, Lorg/luaj/vm2/LuaFunction;->classnamestub()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Java"

    invoke-direct {v0, v1, v2}, Lorg/luaj/vm2/lib/DebugLib$NameWhat;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/luaj/vm2/lib/DebugLib$CallFrame;->f:Lorg/luaj/vm2/LuaFunction;

    invoke-virtual {v0}, Lorg/luaj/vm2/LuaFunction;->checkclosure()Lorg/luaj/vm2/LuaClosure;

    move-result-object v0

    iget-object v0, v0, Lorg/luaj/vm2/LuaClosure;->p:Lorg/luaj/vm2/Prototype;

    iget v1, p0, Lorg/luaj/vm2/lib/DebugLib$CallFrame;->pc:I

    iget-object v2, v0, Lorg/luaj/vm2/Prototype;->code:[I

    aget v2, v2, v1

    invoke-static {v2}, Lorg/luaj/vm2/Lua;->GET_OPCODE(I)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    :pswitch_1
    invoke-static {v2}, Lorg/luaj/vm2/Lua;->GETARG_A(I)I

    move-result v2

    invoke-static {v0, v1, v2}, Lorg/luaj/vm2/lib/DebugLib;->getobjname(Lorg/luaj/vm2/Prototype;II)Lorg/luaj/vm2/lib/DebugLib$NameWhat;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    new-instance v0, Lorg/luaj/vm2/lib/DebugLib$NameWhat;

    const-string/jumbo v1, "(for iterator)"

    const-string/jumbo v2, "(for iterator"

    invoke-direct {v0, v1, v2}, Lorg/luaj/vm2/lib/DebugLib$NameWhat;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_3
    sget-object v0, Lorg/luaj/vm2/LuaValue;->INDEX:Lorg/luaj/vm2/LuaString;

    :goto_1
    new-instance v1, Lorg/luaj/vm2/lib/DebugLib$NameWhat;

    invoke-virtual {v0}, Lorg/luaj/vm2/LuaString;->tojstring()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "metamethod"

    invoke-direct {v1, v0, v2}, Lorg/luaj/vm2/lib/DebugLib$NameWhat;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0

    :pswitch_4
    sget-object v0, Lorg/luaj/vm2/LuaValue;->NEWINDEX:Lorg/luaj/vm2/LuaString;

    goto :goto_1

    :pswitch_5
    sget-object v0, Lorg/luaj/vm2/LuaValue;->EQ:Lorg/luaj/vm2/LuaString;

    goto :goto_1

    :pswitch_6
    sget-object v0, Lorg/luaj/vm2/LuaValue;->ADD:Lorg/luaj/vm2/LuaString;

    goto :goto_1

    :pswitch_7
    sget-object v0, Lorg/luaj/vm2/LuaValue;->SUB:Lorg/luaj/vm2/LuaString;

    goto :goto_1

    :pswitch_8
    sget-object v0, Lorg/luaj/vm2/LuaValue;->MUL:Lorg/luaj/vm2/LuaString;

    goto :goto_1

    :pswitch_9
    sget-object v0, Lorg/luaj/vm2/LuaValue;->DIV:Lorg/luaj/vm2/LuaString;

    goto :goto_1

    :pswitch_a
    sget-object v0, Lorg/luaj/vm2/LuaValue;->MOD:Lorg/luaj/vm2/LuaString;

    goto :goto_1

    :pswitch_b
    sget-object v0, Lorg/luaj/vm2/LuaValue;->POW:Lorg/luaj/vm2/LuaString;

    goto :goto_1

    :pswitch_c
    sget-object v0, Lorg/luaj/vm2/LuaValue;->UNM:Lorg/luaj/vm2/LuaString;

    goto :goto_1

    :pswitch_d
    sget-object v0, Lorg/luaj/vm2/LuaValue;->LEN:Lorg/luaj/vm2/LuaString;

    goto :goto_1

    :pswitch_e
    sget-object v0, Lorg/luaj/vm2/LuaValue;->LT:Lorg/luaj/vm2/LuaString;

    goto :goto_1

    :pswitch_f
    sget-object v0, Lorg/luaj/vm2/LuaValue;->LE:Lorg/luaj/vm2/LuaString;

    goto :goto_1

    :pswitch_10
    sget-object v0, Lorg/luaj/vm2/LuaValue;->CONCAT:Lorg/luaj/vm2/LuaString;

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_0
        :pswitch_d
        :pswitch_10
        :pswitch_0
        :pswitch_5
        :pswitch_e
        :pswitch_f
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static getobjname(Lorg/luaj/vm2/Prototype;II)Lorg/luaj/vm2/lib/DebugLib$NameWhat;
    .locals 4

    :goto_0
    add-int/lit8 v0, p2, 0x1

    invoke-virtual {p0, v0, p1}, Lorg/luaj/vm2/Prototype;->getlocalname(II)Lorg/luaj/vm2/LuaString;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v0, Lorg/luaj/vm2/lib/DebugLib$NameWhat;

    invoke-virtual {v1}, Lorg/luaj/vm2/LuaString;->tojstring()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "local"

    invoke-direct {v0, v1, v2}, Lorg/luaj/vm2/lib/DebugLib$NameWhat;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-object v0

    :cond_0
    invoke-static {p0, p1, p2}, Lorg/luaj/vm2/lib/DebugLib;->findsetreg(Lorg/luaj/vm2/Prototype;II)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lorg/luaj/vm2/Prototype;->code:[I

    aget v0, v0, p1

    invoke-static {v0}, Lorg/luaj/vm2/Lua;->GET_OPCODE(I)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :cond_1
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_1

    :pswitch_1
    invoke-static {v0}, Lorg/luaj/vm2/Lua;->GETARG_A(I)I

    move-result v1

    invoke-static {v0}, Lorg/luaj/vm2/Lua;->GETARG_B(I)I

    move-result p2

    if-ge p2, v1, :cond_1

    goto :goto_0

    :pswitch_2
    invoke-static {v0}, Lorg/luaj/vm2/Lua;->GETARG_C(I)I

    move-result v1

    invoke-static {v0}, Lorg/luaj/vm2/Lua;->GETARG_B(I)I

    move-result v2

    invoke-static {v0}, Lorg/luaj/vm2/Lua;->GET_OPCODE(I)I

    move-result v0

    const/4 v3, 0x7

    if-ne v0, v3, :cond_2

    add-int/lit8 v0, v2, 0x1

    invoke-virtual {p0, v0, p1}, Lorg/luaj/vm2/Prototype;->getlocalname(II)Lorg/luaj/vm2/LuaString;

    move-result-object v0

    :goto_2
    invoke-static {p0, v1}, Lorg/luaj/vm2/lib/DebugLib;->kname(Lorg/luaj/vm2/Prototype;I)Lorg/luaj/vm2/LuaString;

    move-result-object v2

    new-instance v1, Lorg/luaj/vm2/lib/DebugLib$NameWhat;

    invoke-virtual {v2}, Lorg/luaj/vm2/LuaString;->tojstring()Ljava/lang/String;

    move-result-object v2

    if-eqz v0, :cond_4

    sget-object v3, Lorg/luaj/vm2/lib/DebugLib;->ENV:Lorg/luaj/vm2/LuaString;

    invoke-virtual {v0, v3}, Lorg/luaj/vm2/LuaString;->eq_b(Lorg/luaj/vm2/LuaValue;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string/jumbo v0, "global"

    :goto_3
    invoke-direct {v1, v2, v0}, Lorg/luaj/vm2/lib/DebugLib$NameWhat;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lorg/luaj/vm2/Prototype;->upvalues:[Lorg/luaj/vm2/Upvaldesc;

    array-length v0, v0

    if-ge v2, v0, :cond_3

    iget-object v0, p0, Lorg/luaj/vm2/Prototype;->upvalues:[Lorg/luaj/vm2/Upvaldesc;

    aget-object v0, v0, v2

    iget-object v0, v0, Lorg/luaj/vm2/Upvaldesc;->name:Lorg/luaj/vm2/LuaString;

    goto :goto_2

    :cond_3
    sget-object v0, Lorg/luaj/vm2/lib/DebugLib;->b:Lorg/luaj/vm2/LuaString;

    goto :goto_2

    :cond_4
    const-string/jumbo v0, "field"

    goto :goto_3

    :pswitch_3
    invoke-static {v0}, Lorg/luaj/vm2/Lua;->GETARG_B(I)I

    move-result v0

    iget-object v1, p0, Lorg/luaj/vm2/Prototype;->upvalues:[Lorg/luaj/vm2/Upvaldesc;

    array-length v1, v1

    if-ge v0, v1, :cond_5

    iget-object v1, p0, Lorg/luaj/vm2/Prototype;->upvalues:[Lorg/luaj/vm2/Upvaldesc;

    aget-object v0, v1, v0

    iget-object v0, v0, Lorg/luaj/vm2/Upvaldesc;->name:Lorg/luaj/vm2/LuaString;

    :goto_4
    new-instance v1, Lorg/luaj/vm2/lib/DebugLib$NameWhat;

    invoke-virtual {v0}, Lorg/luaj/vm2/LuaString;->tojstring()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "upvalue"

    invoke-direct {v1, v0, v2}, Lorg/luaj/vm2/lib/DebugLib$NameWhat;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_1

    :cond_5
    sget-object v0, Lorg/luaj/vm2/lib/DebugLib;->b:Lorg/luaj/vm2/LuaString;

    goto :goto_4

    :pswitch_4
    invoke-static {v0}, Lorg/luaj/vm2/Lua;->GET_OPCODE(I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_6

    invoke-static {v0}, Lorg/luaj/vm2/Lua;->GETARG_Bx(I)I

    move-result v0

    :goto_5
    iget-object v1, p0, Lorg/luaj/vm2/Prototype;->k:[Lorg/luaj/vm2/LuaValue;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lorg/luaj/vm2/LuaValue;->isstring()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/luaj/vm2/Prototype;->k:[Lorg/luaj/vm2/LuaValue;

    aget-object v0, v1, v0

    invoke-virtual {v0}, Lorg/luaj/vm2/LuaValue;->strvalue()Lorg/luaj/vm2/LuaString;

    move-result-object v1

    new-instance v0, Lorg/luaj/vm2/lib/DebugLib$NameWhat;

    invoke-virtual {v1}, Lorg/luaj/vm2/LuaString;->tojstring()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "constant"

    invoke-direct {v0, v1, v2}, Lorg/luaj/vm2/lib/DebugLib$NameWhat;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_6
    iget-object v0, p0, Lorg/luaj/vm2/Prototype;->code:[I

    add-int/lit8 v1, p1, 0x1

    aget v0, v0, v1

    invoke-static {v0}, Lorg/luaj/vm2/Lua;->GETARG_Ax(I)I

    move-result v0

    goto :goto_5

    :pswitch_5
    invoke-static {v0}, Lorg/luaj/vm2/Lua;->GETARG_C(I)I

    move-result v0

    invoke-static {p0, v0}, Lorg/luaj/vm2/lib/DebugLib;->kname(Lorg/luaj/vm2/Prototype;I)Lorg/luaj/vm2/LuaString;

    move-result-object v1

    new-instance v0, Lorg/luaj/vm2/lib/DebugLib$NameWhat;

    invoke-virtual {v1}, Lorg/luaj/vm2/LuaString;->tojstring()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "method"

    invoke-direct {v0, v1, v2}, Lorg/luaj/vm2/lib/DebugLib$NameWhat;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method static kname(Lorg/luaj/vm2/Prototype;I)Lorg/luaj/vm2/LuaString;
    .locals 2

    invoke-static {p1}, Lorg/luaj/vm2/Lua;->ISK(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/luaj/vm2/Prototype;->k:[Lorg/luaj/vm2/LuaValue;

    invoke-static {p1}, Lorg/luaj/vm2/Lua;->INDEXK(I)I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/luaj/vm2/LuaValue;->isstring()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/luaj/vm2/Prototype;->k:[Lorg/luaj/vm2/LuaValue;

    invoke-static {p1}, Lorg/luaj/vm2/Lua;->INDEXK(I)I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/luaj/vm2/LuaValue;->strvalue()Lorg/luaj/vm2/LuaString;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lorg/luaj/vm2/lib/DebugLib;->b:Lorg/luaj/vm2/LuaString;

    goto :goto_0
.end method

.method static lua_assert(Z)V
    .locals 2

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "lua_assert failed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method


# virtual methods
.method public call(Lorg/luaj/vm2/LuaValue;Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/LuaValue;
    .locals 3

    invoke-virtual {p2}, Lorg/luaj/vm2/LuaValue;->checkglobals()Lorg/luaj/vm2/Globals;

    move-result-object v0

    iput-object v0, p0, Lorg/luaj/vm2/lib/DebugLib;->globals:Lorg/luaj/vm2/Globals;

    iget-object v0, p0, Lorg/luaj/vm2/lib/DebugLib;->globals:Lorg/luaj/vm2/Globals;

    iput-object p0, v0, Lorg/luaj/vm2/Globals;->debuglib:Lorg/luaj/vm2/lib/DebugLib;

    new-instance v0, Lorg/luaj/vm2/LuaTable;

    invoke-direct {v0}, Lorg/luaj/vm2/LuaTable;-><init>()V

    const-string/jumbo v1, "debug"

    new-instance v2, Lorg/luaj/vm2/lib/DebugLib$debug;

    invoke-direct {v2}, Lorg/luaj/vm2/lib/DebugLib$debug;-><init>()V

    invoke-virtual {v0, v1, v2}, Lorg/luaj/vm2/LuaTable;->set(Ljava/lang/String;Lorg/luaj/vm2/LuaValue;)V

    const-string/jumbo v1, "gethook"

    new-instance v2, Lorg/luaj/vm2/lib/DebugLib$gethook;

    invoke-direct {v2, p0}, Lorg/luaj/vm2/lib/DebugLib$gethook;-><init>(Lorg/luaj/vm2/lib/DebugLib;)V

    invoke-virtual {v0, v1, v2}, Lorg/luaj/vm2/LuaTable;->set(Ljava/lang/String;Lorg/luaj/vm2/LuaValue;)V

    const-string/jumbo v1, "getinfo"

    new-instance v2, Lorg/luaj/vm2/lib/DebugLib$getinfo;

    invoke-direct {v2, p0}, Lorg/luaj/vm2/lib/DebugLib$getinfo;-><init>(Lorg/luaj/vm2/lib/DebugLib;)V

    invoke-virtual {v0, v1, v2}, Lorg/luaj/vm2/LuaTable;->set(Ljava/lang/String;Lorg/luaj/vm2/LuaValue;)V

    const-string/jumbo v1, "getlocal"

    new-instance v2, Lorg/luaj/vm2/lib/DebugLib$getlocal;

    invoke-direct {v2, p0}, Lorg/luaj/vm2/lib/DebugLib$getlocal;-><init>(Lorg/luaj/vm2/lib/DebugLib;)V

    invoke-virtual {v0, v1, v2}, Lorg/luaj/vm2/LuaTable;->set(Ljava/lang/String;Lorg/luaj/vm2/LuaValue;)V

    const-string/jumbo v1, "getmetatable"

    new-instance v2, Lorg/luaj/vm2/lib/DebugLib$getmetatable;

    invoke-direct {v2, p0}, Lorg/luaj/vm2/lib/DebugLib$getmetatable;-><init>(Lorg/luaj/vm2/lib/DebugLib;)V

    invoke-virtual {v0, v1, v2}, Lorg/luaj/vm2/LuaTable;->set(Ljava/lang/String;Lorg/luaj/vm2/LuaValue;)V

    const-string/jumbo v1, "getregistry"

    new-instance v2, Lorg/luaj/vm2/lib/DebugLib$getregistry;

    invoke-direct {v2, p0}, Lorg/luaj/vm2/lib/DebugLib$getregistry;-><init>(Lorg/luaj/vm2/lib/DebugLib;)V

    invoke-virtual {v0, v1, v2}, Lorg/luaj/vm2/LuaTable;->set(Ljava/lang/String;Lorg/luaj/vm2/LuaValue;)V

    const-string/jumbo v1, "getupvalue"

    new-instance v2, Lorg/luaj/vm2/lib/DebugLib$getupvalue;

    invoke-direct {v2}, Lorg/luaj/vm2/lib/DebugLib$getupvalue;-><init>()V

    invoke-virtual {v0, v1, v2}, Lorg/luaj/vm2/LuaTable;->set(Ljava/lang/String;Lorg/luaj/vm2/LuaValue;)V

    const-string/jumbo v1, "getuservalue"

    new-instance v2, Lorg/luaj/vm2/lib/DebugLib$getuservalue;

    invoke-direct {v2}, Lorg/luaj/vm2/lib/DebugLib$getuservalue;-><init>()V

    invoke-virtual {v0, v1, v2}, Lorg/luaj/vm2/LuaTable;->set(Ljava/lang/String;Lorg/luaj/vm2/LuaValue;)V

    const-string/jumbo v1, "sethook"

    new-instance v2, Lorg/luaj/vm2/lib/DebugLib$sethook;

    invoke-direct {v2, p0}, Lorg/luaj/vm2/lib/DebugLib$sethook;-><init>(Lorg/luaj/vm2/lib/DebugLib;)V

    invoke-virtual {v0, v1, v2}, Lorg/luaj/vm2/LuaTable;->set(Ljava/lang/String;Lorg/luaj/vm2/LuaValue;)V

    const-string/jumbo v1, "setlocal"

    new-instance v2, Lorg/luaj/vm2/lib/DebugLib$setlocal;

    invoke-direct {v2, p0}, Lorg/luaj/vm2/lib/DebugLib$setlocal;-><init>(Lorg/luaj/vm2/lib/DebugLib;)V

    invoke-virtual {v0, v1, v2}, Lorg/luaj/vm2/LuaTable;->set(Ljava/lang/String;Lorg/luaj/vm2/LuaValue;)V

    const-string/jumbo v1, "setmetatable"

    new-instance v2, Lorg/luaj/vm2/lib/DebugLib$setmetatable;

    invoke-direct {v2, p0}, Lorg/luaj/vm2/lib/DebugLib$setmetatable;-><init>(Lorg/luaj/vm2/lib/DebugLib;)V

    invoke-virtual {v0, v1, v2}, Lorg/luaj/vm2/LuaTable;->set(Ljava/lang/String;Lorg/luaj/vm2/LuaValue;)V

    const-string/jumbo v1, "setupvalue"

    new-instance v2, Lorg/luaj/vm2/lib/DebugLib$setupvalue;

    invoke-direct {v2, p0}, Lorg/luaj/vm2/lib/DebugLib$setupvalue;-><init>(Lorg/luaj/vm2/lib/DebugLib;)V

    invoke-virtual {v0, v1, v2}, Lorg/luaj/vm2/LuaTable;->set(Ljava/lang/String;Lorg/luaj/vm2/LuaValue;)V

    const-string/jumbo v1, "setuservalue"

    new-instance v2, Lorg/luaj/vm2/lib/DebugLib$setuservalue;

    invoke-direct {v2, p0}, Lorg/luaj/vm2/lib/DebugLib$setuservalue;-><init>(Lorg/luaj/vm2/lib/DebugLib;)V

    invoke-virtual {v0, v1, v2}, Lorg/luaj/vm2/LuaTable;->set(Ljava/lang/String;Lorg/luaj/vm2/LuaValue;)V

    const-string/jumbo v1, "traceback"

    new-instance v2, Lorg/luaj/vm2/lib/DebugLib$traceback;

    invoke-direct {v2, p0}, Lorg/luaj/vm2/lib/DebugLib$traceback;-><init>(Lorg/luaj/vm2/lib/DebugLib;)V

    invoke-virtual {v0, v1, v2}, Lorg/luaj/vm2/LuaTable;->set(Ljava/lang/String;Lorg/luaj/vm2/LuaValue;)V

    const-string/jumbo v1, "upvalueid"

    new-instance v2, Lorg/luaj/vm2/lib/DebugLib$upvalueid;

    invoke-direct {v2, p0}, Lorg/luaj/vm2/lib/DebugLib$upvalueid;-><init>(Lorg/luaj/vm2/lib/DebugLib;)V

    invoke-virtual {v0, v1, v2}, Lorg/luaj/vm2/LuaTable;->set(Ljava/lang/String;Lorg/luaj/vm2/LuaValue;)V

    const-string/jumbo v1, "upvaluejoin"

    new-instance v2, Lorg/luaj/vm2/lib/DebugLib$upvaluejoin;

    invoke-direct {v2, p0}, Lorg/luaj/vm2/lib/DebugLib$upvaluejoin;-><init>(Lorg/luaj/vm2/lib/DebugLib;)V

    invoke-virtual {v0, v1, v2}, Lorg/luaj/vm2/LuaTable;->set(Ljava/lang/String;Lorg/luaj/vm2/LuaValue;)V

    const-string/jumbo v1, "debug"

    invoke-virtual {p2, v1, v0}, Lorg/luaj/vm2/LuaValue;->set(Ljava/lang/String;Lorg/luaj/vm2/LuaValue;)V

    const-string/jumbo v1, "package"

    invoke-virtual {p2, v1}, Lorg/luaj/vm2/LuaValue;->get(Ljava/lang/String;)Lorg/luaj/vm2/LuaValue;

    move-result-object v1

    const-string/jumbo v2, "loaded"

    invoke-virtual {v1, v2}, Lorg/luaj/vm2/LuaValue;->get(Ljava/lang/String;)Lorg/luaj/vm2/LuaValue;

    move-result-object v1

    const-string/jumbo v2, "debug"

    invoke-virtual {v1, v2, v0}, Lorg/luaj/vm2/LuaValue;->set(Ljava/lang/String;Lorg/luaj/vm2/LuaValue;)V

    return-object v0
.end method

.method callHook(Lorg/luaj/vm2/LuaValue;Lorg/luaj/vm2/LuaValue;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lorg/luaj/vm2/lib/DebugLib;->globals:Lorg/luaj/vm2/Globals;

    iget-object v1, v0, Lorg/luaj/vm2/Globals;->running:Lorg/luaj/vm2/LuaThread;

    const/4 v0, 0x1

    iput-boolean v0, v1, Lorg/luaj/vm2/LuaThread;->inhook:Z

    :try_start_0
    iget-object v0, v1, Lorg/luaj/vm2/LuaThread;->hookfunc:Lorg/luaj/vm2/LuaValue;

    invoke-virtual {v0, p1, p2}, Lorg/luaj/vm2/LuaValue;->call(Lorg/luaj/vm2/LuaValue;Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/LuaValue;
    :try_end_0
    .catch Lorg/luaj/vm2/LuaError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean v3, v1, Lorg/luaj/vm2/LuaThread;->inhook:Z

    return-void

    :catch_0
    move-exception v0

    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    iput-boolean v3, v1, Lorg/luaj/vm2/LuaThread;->inhook:Z

    throw v0

    :catch_1
    move-exception v0

    :try_start_2
    new-instance v2, Lorg/luaj/vm2/LuaError;

    invoke-direct {v2, v0}, Lorg/luaj/vm2/LuaError;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method callstack()Lorg/luaj/vm2/lib/DebugLib$CallStack;
    .locals 1

    iget-object v0, p0, Lorg/luaj/vm2/lib/DebugLib;->globals:Lorg/luaj/vm2/Globals;

    iget-object v0, v0, Lorg/luaj/vm2/Globals;->running:Lorg/luaj/vm2/LuaThread;

    invoke-virtual {p0, v0}, Lorg/luaj/vm2/lib/DebugLib;->callstack(Lorg/luaj/vm2/LuaThread;)Lorg/luaj/vm2/lib/DebugLib$CallStack;

    move-result-object v0

    return-object v0
.end method

.method callstack(Lorg/luaj/vm2/LuaThread;)Lorg/luaj/vm2/lib/DebugLib$CallStack;
    .locals 1

    iget-object v0, p1, Lorg/luaj/vm2/LuaThread;->callstack:Ljava/lang/Object;

    if-nez v0, :cond_0

    new-instance v0, Lorg/luaj/vm2/lib/DebugLib$CallStack;

    invoke-direct {v0}, Lorg/luaj/vm2/lib/DebugLib$CallStack;-><init>()V

    iput-object v0, p1, Lorg/luaj/vm2/LuaThread;->callstack:Ljava/lang/Object;

    :cond_0
    iget-object v0, p1, Lorg/luaj/vm2/LuaThread;->callstack:Ljava/lang/Object;

    check-cast v0, Lorg/luaj/vm2/lib/DebugLib$CallStack;

    return-object v0
.end method

.method public onCall(Lorg/luaj/vm2/LuaClosure;Lorg/luaj/vm2/Varargs;[Lorg/luaj/vm2/LuaValue;)V
    .locals 2

    iget-object v0, p0, Lorg/luaj/vm2/lib/DebugLib;->globals:Lorg/luaj/vm2/Globals;

    iget-object v0, v0, Lorg/luaj/vm2/Globals;->running:Lorg/luaj/vm2/LuaThread;

    iget-boolean v1, v0, Lorg/luaj/vm2/LuaThread;->inhook:Z

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lorg/luaj/vm2/lib/DebugLib;->callstack()Lorg/luaj/vm2/lib/DebugLib$CallStack;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3}, Lorg/luaj/vm2/lib/DebugLib$CallStack;->onCall(Lorg/luaj/vm2/LuaClosure;Lorg/luaj/vm2/Varargs;[Lorg/luaj/vm2/LuaValue;)V

    iget-boolean v1, v0, Lorg/luaj/vm2/LuaThread;->hookcall:Z

    if-eqz v1, :cond_0

    iget-object v0, v0, Lorg/luaj/vm2/LuaThread;->hookfunc:Lorg/luaj/vm2/LuaValue;

    if-eqz v0, :cond_0

    sget-object v0, Lorg/luaj/vm2/lib/DebugLib;->c:Lorg/luaj/vm2/LuaString;

    sget-object v1, Lorg/luaj/vm2/lib/DebugLib;->NIL:Lorg/luaj/vm2/LuaValue;

    invoke-virtual {p0, v0, v1}, Lorg/luaj/vm2/lib/DebugLib;->callHook(Lorg/luaj/vm2/LuaValue;Lorg/luaj/vm2/LuaValue;)V

    goto :goto_0
.end method

.method public onCall(Lorg/luaj/vm2/LuaFunction;)V
    .locals 2

    iget-object v0, p0, Lorg/luaj/vm2/lib/DebugLib;->globals:Lorg/luaj/vm2/Globals;

    iget-object v0, v0, Lorg/luaj/vm2/Globals;->running:Lorg/luaj/vm2/LuaThread;

    iget-boolean v1, v0, Lorg/luaj/vm2/LuaThread;->inhook:Z

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lorg/luaj/vm2/lib/DebugLib;->callstack()Lorg/luaj/vm2/lib/DebugLib$CallStack;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/luaj/vm2/lib/DebugLib$CallStack;->onCall(Lorg/luaj/vm2/LuaFunction;)V

    iget-boolean v1, v0, Lorg/luaj/vm2/LuaThread;->hookcall:Z

    if-eqz v1, :cond_0

    iget-object v0, v0, Lorg/luaj/vm2/LuaThread;->hookfunc:Lorg/luaj/vm2/LuaValue;

    if-eqz v0, :cond_0

    sget-object v0, Lorg/luaj/vm2/lib/DebugLib;->c:Lorg/luaj/vm2/LuaString;

    sget-object v1, Lorg/luaj/vm2/lib/DebugLib;->NIL:Lorg/luaj/vm2/LuaValue;

    invoke-virtual {p0, v0, v1}, Lorg/luaj/vm2/lib/DebugLib;->callHook(Lorg/luaj/vm2/LuaValue;Lorg/luaj/vm2/LuaValue;)V

    goto :goto_0
.end method

.method public onInstruction(ILorg/luaj/vm2/Varargs;I)V
    .locals 3

    iget-object v0, p0, Lorg/luaj/vm2/lib/DebugLib;->globals:Lorg/luaj/vm2/Globals;

    iget-object v0, v0, Lorg/luaj/vm2/Globals;->running:Lorg/luaj/vm2/LuaThread;

    iget-boolean v1, v0, Lorg/luaj/vm2/LuaThread;->inhook:Z

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lorg/luaj/vm2/lib/DebugLib;->callstack()Lorg/luaj/vm2/lib/DebugLib$CallStack;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3}, Lorg/luaj/vm2/lib/DebugLib$CallStack;->onInstruction(ILorg/luaj/vm2/Varargs;I)V

    iget-object v1, v0, Lorg/luaj/vm2/LuaThread;->hookfunc:Lorg/luaj/vm2/LuaValue;

    if-eqz v1, :cond_0

    iget v1, v0, Lorg/luaj/vm2/LuaThread;->hookcount:I

    if-lez v1, :cond_2

    iget v1, v0, Lorg/luaj/vm2/LuaThread;->bytecodes:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lorg/luaj/vm2/LuaThread;->bytecodes:I

    iget v2, v0, Lorg/luaj/vm2/LuaThread;->hookcount:I

    rem-int/2addr v1, v2

    if-nez v1, :cond_2

    sget-object v1, Lorg/luaj/vm2/lib/DebugLib;->e:Lorg/luaj/vm2/LuaString;

    sget-object v2, Lorg/luaj/vm2/lib/DebugLib;->NIL:Lorg/luaj/vm2/LuaValue;

    invoke-virtual {p0, v1, v2}, Lorg/luaj/vm2/lib/DebugLib;->callHook(Lorg/luaj/vm2/LuaValue;Lorg/luaj/vm2/LuaValue;)V

    :cond_2
    iget-boolean v1, v0, Lorg/luaj/vm2/LuaThread;->hookline:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lorg/luaj/vm2/lib/DebugLib;->callstack()Lorg/luaj/vm2/lib/DebugLib$CallStack;

    move-result-object v1

    invoke-virtual {v1}, Lorg/luaj/vm2/lib/DebugLib$CallStack;->currentline()I

    move-result v1

    iget v2, v0, Lorg/luaj/vm2/LuaThread;->lastline:I

    if-eq v1, v2, :cond_0

    iput v1, v0, Lorg/luaj/vm2/LuaThread;->lastline:I

    sget-object v0, Lorg/luaj/vm2/lib/DebugLib;->d:Lorg/luaj/vm2/LuaString;

    invoke-static {v1}, Lorg/luaj/vm2/LuaValue;->valueOf(I)Lorg/luaj/vm2/LuaInteger;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/luaj/vm2/lib/DebugLib;->callHook(Lorg/luaj/vm2/LuaValue;Lorg/luaj/vm2/LuaValue;)V

    goto :goto_0
.end method

.method public onReturn()V
    .locals 2

    iget-object v0, p0, Lorg/luaj/vm2/lib/DebugLib;->globals:Lorg/luaj/vm2/Globals;

    iget-object v0, v0, Lorg/luaj/vm2/Globals;->running:Lorg/luaj/vm2/LuaThread;

    iget-boolean v1, v0, Lorg/luaj/vm2/LuaThread;->inhook:Z

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lorg/luaj/vm2/lib/DebugLib;->callstack()Lorg/luaj/vm2/lib/DebugLib$CallStack;

    move-result-object v1

    invoke-virtual {v1}, Lorg/luaj/vm2/lib/DebugLib$CallStack;->onReturn()V

    iget-boolean v1, v0, Lorg/luaj/vm2/LuaThread;->hookcall:Z

    if-eqz v1, :cond_0

    iget-object v0, v0, Lorg/luaj/vm2/LuaThread;->hookfunc:Lorg/luaj/vm2/LuaValue;

    if-eqz v0, :cond_0

    sget-object v0, Lorg/luaj/vm2/lib/DebugLib;->f:Lorg/luaj/vm2/LuaString;

    sget-object v1, Lorg/luaj/vm2/lib/DebugLib;->NIL:Lorg/luaj/vm2/LuaValue;

    invoke-virtual {p0, v0, v1}, Lorg/luaj/vm2/lib/DebugLib;->callHook(Lorg/luaj/vm2/LuaValue;Lorg/luaj/vm2/LuaValue;)V

    goto :goto_0
.end method

.method public traceback(I)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lorg/luaj/vm2/lib/DebugLib;->callstack()Lorg/luaj/vm2/lib/DebugLib$CallStack;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/luaj/vm2/lib/DebugLib$CallStack;->traceback(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
