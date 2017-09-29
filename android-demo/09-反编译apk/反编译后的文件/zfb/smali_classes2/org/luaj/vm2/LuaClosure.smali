.class public Lorg/luaj/vm2/LuaClosure;
.super Lorg/luaj/vm2/LuaFunction;


# static fields
.field private static final a:[Lorg/luaj/vm2/UpValue;


# instance fields
.field final globals:Lorg/luaj/vm2/Globals;

.field public final p:Lorg/luaj/vm2/Prototype;

.field public upValues:[Lorg/luaj/vm2/UpValue;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lorg/luaj/vm2/UpValue;

    sput-object v0, Lorg/luaj/vm2/LuaClosure;->a:[Lorg/luaj/vm2/UpValue;

    return-void
.end method

.method public constructor <init>(Lorg/luaj/vm2/Prototype;Lorg/luaj/vm2/LuaValue;)V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0}, Lorg/luaj/vm2/LuaFunction;-><init>()V

    iput-object p1, p0, Lorg/luaj/vm2/LuaClosure;->p:Lorg/luaj/vm2/Prototype;

    iget-object v0, p1, Lorg/luaj/vm2/Prototype;->upvalues:[Lorg/luaj/vm2/Upvaldesc;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lorg/luaj/vm2/Prototype;->upvalues:[Lorg/luaj/vm2/Upvaldesc;

    array-length v0, v0

    if-nez v0, :cond_1

    :cond_0
    sget-object v0, Lorg/luaj/vm2/LuaClosure;->a:[Lorg/luaj/vm2/UpValue;

    iput-object v0, p0, Lorg/luaj/vm2/LuaClosure;->upValues:[Lorg/luaj/vm2/UpValue;

    :goto_0
    instance-of v0, p2, Lorg/luaj/vm2/Globals;

    if-eqz v0, :cond_2

    check-cast p2, Lorg/luaj/vm2/Globals;

    :goto_1
    iput-object p2, p0, Lorg/luaj/vm2/LuaClosure;->globals:Lorg/luaj/vm2/Globals;

    return-void

    :cond_1
    iget-object v0, p1, Lorg/luaj/vm2/Prototype;->upvalues:[Lorg/luaj/vm2/Upvaldesc;

    array-length v0, v0

    new-array v0, v0, [Lorg/luaj/vm2/UpValue;

    iput-object v0, p0, Lorg/luaj/vm2/LuaClosure;->upValues:[Lorg/luaj/vm2/UpValue;

    iget-object v0, p0, Lorg/luaj/vm2/LuaClosure;->upValues:[Lorg/luaj/vm2/UpValue;

    new-instance v1, Lorg/luaj/vm2/UpValue;

    const/4 v2, 0x1

    new-array v2, v2, [Lorg/luaj/vm2/LuaValue;

    aput-object p2, v2, v3

    invoke-direct {v1, v2, v3}, Lorg/luaj/vm2/UpValue;-><init>([Lorg/luaj/vm2/LuaValue;I)V

    aput-object v1, v0, v3

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    goto :goto_1
.end method

.method private a(Lorg/luaj/vm2/LuaError;Lorg/luaj/vm2/Prototype;I)V
    .locals 2

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v0, p2, Lorg/luaj/vm2/Prototype;->source:Lorg/luaj/vm2/LuaString;

    if-eqz v0, :cond_0

    iget-object v0, p2, Lorg/luaj/vm2/Prototype;->source:Lorg/luaj/vm2/LuaString;

    invoke-virtual {v0}, Lorg/luaj/vm2/LuaString;->tojstring()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v0, p2, Lorg/luaj/vm2/Prototype;->lineinfo:[I

    if-eqz v0, :cond_1

    if-ltz p3, :cond_1

    iget-object v0, p2, Lorg/luaj/vm2/Prototype;->lineinfo:[I

    array-length v0, v0

    if-ge p3, v0, :cond_1

    iget-object v0, p2, Lorg/luaj/vm2/Prototype;->lineinfo:[I

    aget v0, v0, p3

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lorg/luaj/vm2/LuaError;->fileline:Ljava/lang/String;

    invoke-virtual {p1}, Lorg/luaj/vm2/LuaError;->getMessage()Ljava/lang/String;

    move-result-object v0

    iget v1, p1, Lorg/luaj/vm2/LuaError;->level:I

    invoke-virtual {p0, v0, v1}, Lorg/luaj/vm2/LuaClosure;->errorHook(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lorg/luaj/vm2/LuaError;->traceback:Ljava/lang/String;

    return-void

    :cond_0
    const-string/jumbo v0, "?"

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "?"

    goto :goto_1
.end method


# virtual methods
.method public final call()Lorg/luaj/vm2/LuaValue;
    .locals 3

    iget-object v0, p0, Lorg/luaj/vm2/LuaClosure;->p:Lorg/luaj/vm2/Prototype;

    iget v0, v0, Lorg/luaj/vm2/Prototype;->maxstacksize:I

    new-array v1, v0, [Lorg/luaj/vm2/LuaValue;

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lorg/luaj/vm2/LuaClosure;->p:Lorg/luaj/vm2/Prototype;

    iget v2, v2, Lorg/luaj/vm2/Prototype;->numparams:I

    if-ge v0, v2, :cond_0

    sget-object v2, Lorg/luaj/vm2/LuaClosure;->NIL:Lorg/luaj/vm2/LuaValue;

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/luaj/vm2/LuaClosure;->NONE:Lorg/luaj/vm2/LuaValue;

    invoke-virtual {p0, v1, v0}, Lorg/luaj/vm2/LuaClosure;->execute([Lorg/luaj/vm2/LuaValue;Lorg/luaj/vm2/Varargs;)Lorg/luaj/vm2/Varargs;

    move-result-object v0

    invoke-virtual {v0}, Lorg/luaj/vm2/Varargs;->arg1()Lorg/luaj/vm2/LuaValue;

    move-result-object v0

    return-object v0
.end method

.method public final call(Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/LuaValue;
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lorg/luaj/vm2/LuaClosure;->p:Lorg/luaj/vm2/Prototype;

    iget v0, v0, Lorg/luaj/vm2/Prototype;->maxstacksize:I

    new-array v1, v0, [Lorg/luaj/vm2/LuaValue;

    sget-object v0, Lorg/luaj/vm2/LuaClosure;->NILS:[Lorg/luaj/vm2/LuaValue;

    iget-object v2, p0, Lorg/luaj/vm2/LuaClosure;->p:Lorg/luaj/vm2/Prototype;

    iget v2, v2, Lorg/luaj/vm2/Prototype;->maxstacksize:I

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v0, 0x1

    :goto_0
    iget-object v2, p0, Lorg/luaj/vm2/LuaClosure;->p:Lorg/luaj/vm2/Prototype;

    iget v2, v2, Lorg/luaj/vm2/Prototype;->numparams:I

    if-ge v0, v2, :cond_0

    sget-object v2, Lorg/luaj/vm2/LuaClosure;->NIL:Lorg/luaj/vm2/LuaValue;

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/luaj/vm2/LuaClosure;->p:Lorg/luaj/vm2/Prototype;

    iget v0, v0, Lorg/luaj/vm2/Prototype;->numparams:I

    packed-switch v0, :pswitch_data_0

    aput-object p1, v1, v3

    sget-object v0, Lorg/luaj/vm2/LuaClosure;->NONE:Lorg/luaj/vm2/LuaValue;

    invoke-virtual {p0, v1, v0}, Lorg/luaj/vm2/LuaClosure;->execute([Lorg/luaj/vm2/LuaValue;Lorg/luaj/vm2/Varargs;)Lorg/luaj/vm2/Varargs;

    move-result-object v0

    invoke-virtual {v0}, Lorg/luaj/vm2/Varargs;->arg1()Lorg/luaj/vm2/LuaValue;

    move-result-object v0

    :goto_1
    return-object v0

    :pswitch_0
    invoke-virtual {p0, v1, p1}, Lorg/luaj/vm2/LuaClosure;->execute([Lorg/luaj/vm2/LuaValue;Lorg/luaj/vm2/Varargs;)Lorg/luaj/vm2/Varargs;

    move-result-object v0

    invoke-virtual {v0}, Lorg/luaj/vm2/Varargs;->arg1()Lorg/luaj/vm2/LuaValue;

    move-result-object v0

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final call(Lorg/luaj/vm2/LuaValue;Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/LuaValue;
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lorg/luaj/vm2/LuaClosure;->p:Lorg/luaj/vm2/Prototype;

    iget v0, v0, Lorg/luaj/vm2/Prototype;->maxstacksize:I

    new-array v1, v0, [Lorg/luaj/vm2/LuaValue;

    const/4 v0, 0x2

    :goto_0
    iget-object v2, p0, Lorg/luaj/vm2/LuaClosure;->p:Lorg/luaj/vm2/Prototype;

    iget v2, v2, Lorg/luaj/vm2/Prototype;->numparams:I

    if-ge v0, v2, :cond_0

    sget-object v2, Lorg/luaj/vm2/LuaClosure;->NIL:Lorg/luaj/vm2/LuaValue;

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/luaj/vm2/LuaClosure;->p:Lorg/luaj/vm2/Prototype;

    iget v0, v0, Lorg/luaj/vm2/Prototype;->numparams:I

    packed-switch v0, :pswitch_data_0

    aput-object p1, v1, v3

    const/4 v0, 0x1

    aput-object p2, v1, v0

    sget-object v0, Lorg/luaj/vm2/LuaClosure;->NONE:Lorg/luaj/vm2/LuaValue;

    invoke-virtual {p0, v1, v0}, Lorg/luaj/vm2/LuaClosure;->execute([Lorg/luaj/vm2/LuaValue;Lorg/luaj/vm2/Varargs;)Lorg/luaj/vm2/Varargs;

    move-result-object v0

    invoke-virtual {v0}, Lorg/luaj/vm2/Varargs;->arg1()Lorg/luaj/vm2/LuaValue;

    move-result-object v0

    :goto_1
    return-object v0

    :pswitch_0
    aput-object p1, v1, v3

    invoke-virtual {p0, v1, p2}, Lorg/luaj/vm2/LuaClosure;->execute([Lorg/luaj/vm2/LuaValue;Lorg/luaj/vm2/Varargs;)Lorg/luaj/vm2/Varargs;

    move-result-object v0

    invoke-virtual {v0}, Lorg/luaj/vm2/Varargs;->arg1()Lorg/luaj/vm2/LuaValue;

    move-result-object v0

    goto :goto_1

    :pswitch_1
    iget-object v0, p0, Lorg/luaj/vm2/LuaClosure;->p:Lorg/luaj/vm2/Prototype;

    iget v0, v0, Lorg/luaj/vm2/Prototype;->is_vararg:I

    if-eqz v0, :cond_1

    invoke-static {p1, p2}, Lorg/luaj/vm2/LuaClosure;->varargsOf(Lorg/luaj/vm2/LuaValue;Lorg/luaj/vm2/Varargs;)Lorg/luaj/vm2/Varargs;

    move-result-object v0

    :goto_2
    invoke-virtual {p0, v1, v0}, Lorg/luaj/vm2/LuaClosure;->execute([Lorg/luaj/vm2/LuaValue;Lorg/luaj/vm2/Varargs;)Lorg/luaj/vm2/Varargs;

    move-result-object v0

    invoke-virtual {v0}, Lorg/luaj/vm2/Varargs;->arg1()Lorg/luaj/vm2/LuaValue;

    move-result-object v0

    goto :goto_1

    :cond_1
    sget-object v0, Lorg/luaj/vm2/LuaClosure;->NONE:Lorg/luaj/vm2/LuaValue;

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final call(Lorg/luaj/vm2/LuaValue;Lorg/luaj/vm2/LuaValue;Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/LuaValue;
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lorg/luaj/vm2/LuaClosure;->p:Lorg/luaj/vm2/Prototype;

    iget v0, v0, Lorg/luaj/vm2/Prototype;->maxstacksize:I

    new-array v1, v0, [Lorg/luaj/vm2/LuaValue;

    const/4 v0, 0x3

    :goto_0
    iget-object v2, p0, Lorg/luaj/vm2/LuaClosure;->p:Lorg/luaj/vm2/Prototype;

    iget v2, v2, Lorg/luaj/vm2/Prototype;->numparams:I

    if-ge v0, v2, :cond_0

    sget-object v2, Lorg/luaj/vm2/LuaClosure;->NIL:Lorg/luaj/vm2/LuaValue;

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/luaj/vm2/LuaClosure;->p:Lorg/luaj/vm2/Prototype;

    iget v0, v0, Lorg/luaj/vm2/Prototype;->numparams:I

    packed-switch v0, :pswitch_data_0

    aput-object p1, v1, v3

    aput-object p2, v1, v4

    const/4 v0, 0x2

    aput-object p3, v1, v0

    sget-object v0, Lorg/luaj/vm2/LuaClosure;->NONE:Lorg/luaj/vm2/LuaValue;

    invoke-virtual {p0, v1, v0}, Lorg/luaj/vm2/LuaClosure;->execute([Lorg/luaj/vm2/LuaValue;Lorg/luaj/vm2/Varargs;)Lorg/luaj/vm2/Varargs;

    move-result-object v0

    invoke-virtual {v0}, Lorg/luaj/vm2/Varargs;->arg1()Lorg/luaj/vm2/LuaValue;

    move-result-object v0

    :goto_1
    return-object v0

    :pswitch_0
    aput-object p1, v1, v3

    aput-object p2, v1, v4

    invoke-virtual {p0, v1, p3}, Lorg/luaj/vm2/LuaClosure;->execute([Lorg/luaj/vm2/LuaValue;Lorg/luaj/vm2/Varargs;)Lorg/luaj/vm2/Varargs;

    move-result-object v0

    invoke-virtual {v0}, Lorg/luaj/vm2/Varargs;->arg1()Lorg/luaj/vm2/LuaValue;

    move-result-object v0

    goto :goto_1

    :pswitch_1
    aput-object p1, v1, v3

    iget-object v0, p0, Lorg/luaj/vm2/LuaClosure;->p:Lorg/luaj/vm2/Prototype;

    iget v0, v0, Lorg/luaj/vm2/Prototype;->is_vararg:I

    if-eqz v0, :cond_1

    invoke-static {p2, p3}, Lorg/luaj/vm2/LuaClosure;->varargsOf(Lorg/luaj/vm2/LuaValue;Lorg/luaj/vm2/Varargs;)Lorg/luaj/vm2/Varargs;

    move-result-object v0

    :goto_2
    invoke-virtual {p0, v1, v0}, Lorg/luaj/vm2/LuaClosure;->execute([Lorg/luaj/vm2/LuaValue;Lorg/luaj/vm2/Varargs;)Lorg/luaj/vm2/Varargs;

    move-result-object v0

    invoke-virtual {v0}, Lorg/luaj/vm2/Varargs;->arg1()Lorg/luaj/vm2/LuaValue;

    move-result-object v0

    goto :goto_1

    :cond_1
    sget-object v0, Lorg/luaj/vm2/LuaClosure;->NONE:Lorg/luaj/vm2/LuaValue;

    goto :goto_2

    :pswitch_2
    iget-object v0, p0, Lorg/luaj/vm2/LuaClosure;->p:Lorg/luaj/vm2/Prototype;

    iget v0, v0, Lorg/luaj/vm2/Prototype;->is_vararg:I

    if-eqz v0, :cond_2

    invoke-static {p1, p2, p3}, Lorg/luaj/vm2/LuaClosure;->varargsOf(Lorg/luaj/vm2/LuaValue;Lorg/luaj/vm2/LuaValue;Lorg/luaj/vm2/Varargs;)Lorg/luaj/vm2/Varargs;

    move-result-object v0

    :goto_3
    invoke-virtual {p0, v1, v0}, Lorg/luaj/vm2/LuaClosure;->execute([Lorg/luaj/vm2/LuaValue;Lorg/luaj/vm2/Varargs;)Lorg/luaj/vm2/Varargs;

    move-result-object v0

    invoke-virtual {v0}, Lorg/luaj/vm2/Varargs;->arg1()Lorg/luaj/vm2/LuaValue;

    move-result-object v0

    goto :goto_1

    :cond_2
    sget-object v0, Lorg/luaj/vm2/LuaClosure;->NONE:Lorg/luaj/vm2/LuaValue;

    goto :goto_3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public checkclosure()Lorg/luaj/vm2/LuaClosure;
    .locals 0

    return-object p0
.end method

.method errorHook(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lorg/luaj/vm2/LuaClosure;->globals:Lorg/luaj/vm2/Globals;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-object p1

    :cond_1
    iget-object v0, p0, Lorg/luaj/vm2/LuaClosure;->globals:Lorg/luaj/vm2/Globals;

    iget-object v1, v0, Lorg/luaj/vm2/Globals;->running:Lorg/luaj/vm2/LuaThread;

    iget-object v0, v1, Lorg/luaj/vm2/LuaThread;->errorfunc:Lorg/luaj/vm2/LuaValue;

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/luaj/vm2/LuaClosure;->globals:Lorg/luaj/vm2/Globals;

    iget-object v0, v0, Lorg/luaj/vm2/Globals;->debuglib:Lorg/luaj/vm2/lib/DebugLib;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/luaj/vm2/LuaClosure;->globals:Lorg/luaj/vm2/Globals;

    iget-object v1, v1, Lorg/luaj/vm2/Globals;->debuglib:Lorg/luaj/vm2/lib/DebugLib;

    invoke-virtual {v1, p2}, Lorg/luaj/vm2/lib/DebugLib;->traceback(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    iget-object v2, v1, Lorg/luaj/vm2/LuaThread;->errorfunc:Lorg/luaj/vm2/LuaValue;

    const/4 v0, 0x0

    iput-object v0, v1, Lorg/luaj/vm2/LuaThread;->errorfunc:Lorg/luaj/vm2/LuaValue;

    :try_start_0
    invoke-static {p1}, Lorg/luaj/vm2/LuaValue;->valueOf(Ljava/lang/String;)Lorg/luaj/vm2/LuaString;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/luaj/vm2/LuaValue;->call(Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/LuaValue;

    move-result-object v0

    invoke-virtual {v0}, Lorg/luaj/vm2/LuaValue;->tojstring()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object p1

    iput-object v2, v1, Lorg/luaj/vm2/LuaThread;->errorfunc:Lorg/luaj/vm2/LuaValue;

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo p1, "error in error handling"

    iput-object v2, v1, Lorg/luaj/vm2/LuaThread;->errorfunc:Lorg/luaj/vm2/LuaValue;

    goto :goto_0

    :catchall_0
    move-exception v0

    iput-object v2, v1, Lorg/luaj/vm2/LuaThread;->errorfunc:Lorg/luaj/vm2/LuaValue;

    throw v0
.end method

.method protected execute([Lorg/luaj/vm2/LuaValue;Lorg/luaj/vm2/Varargs;)Lorg/luaj/vm2/Varargs;
    .locals 19

    const/4 v6, 0x0

    const/4 v5, 0x0

    sget-object v4, Lorg/luaj/vm2/LuaClosure;->NONE:Lorg/luaj/vm2/LuaValue;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/luaj/vm2/LuaClosure;->p:Lorg/luaj/vm2/Prototype;

    iget-object v11, v3, Lorg/luaj/vm2/Prototype;->code:[I

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/luaj/vm2/LuaClosure;->p:Lorg/luaj/vm2/Prototype;

    iget-object v12, v3, Lorg/luaj/vm2/Prototype;->k:[Lorg/luaj/vm2/LuaValue;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/luaj/vm2/LuaClosure;->p:Lorg/luaj/vm2/Prototype;

    iget-object v3, v3, Lorg/luaj/vm2/Prototype;->p:[Lorg/luaj/vm2/Prototype;

    array-length v3, v3

    if-lez v3, :cond_4

    move-object/from16 v0, p1

    array-length v3, v0

    new-array v3, v3, [Lorg/luaj/vm2/UpValue;

    :goto_0
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/luaj/vm2/LuaClosure;->globals:Lorg/luaj/vm2/Globals;

    if-eqz v7, :cond_0

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/luaj/vm2/LuaClosure;->globals:Lorg/luaj/vm2/Globals;

    iget-object v7, v7, Lorg/luaj/vm2/Globals;->debuglib:Lorg/luaj/vm2/lib/DebugLib;

    if-eqz v7, :cond_0

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/luaj/vm2/LuaClosure;->globals:Lorg/luaj/vm2/Globals;

    iget-object v7, v7, Lorg/luaj/vm2/Globals;->debuglib:Lorg/luaj/vm2/lib/DebugLib;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    invoke-virtual {v7, v0, v1, v2}, Lorg/luaj/vm2/lib/DebugLib;->onCall(Lorg/luaj/vm2/LuaClosure;Lorg/luaj/vm2/Varargs;[Lorg/luaj/vm2/LuaValue;)V

    :cond_0
    :goto_1
    :try_start_0
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/luaj/vm2/LuaClosure;->globals:Lorg/luaj/vm2/Globals;

    if-eqz v7, :cond_1

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/luaj/vm2/LuaClosure;->globals:Lorg/luaj/vm2/Globals;

    iget-object v7, v7, Lorg/luaj/vm2/Globals;->debuglib:Lorg/luaj/vm2/lib/DebugLib;

    if-eqz v7, :cond_1

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/luaj/vm2/LuaClosure;->globals:Lorg/luaj/vm2/Globals;

    iget-object v7, v7, Lorg/luaj/vm2/Globals;->debuglib:Lorg/luaj/vm2/lib/DebugLib;

    invoke-virtual {v7, v6, v4, v5}, Lorg/luaj/vm2/lib/DebugLib;->onInstruction(ILorg/luaj/vm2/Varargs;I)V

    :cond_1
    aget v9, v11, v6

    shr-int/lit8 v7, v9, 0x6

    and-int/lit16 v10, v7, 0xff

    and-int/lit8 v7, v9, 0x3f

    packed-switch v7, :pswitch_data_0

    :pswitch_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuffer;

    const-string/jumbo v7, "Illegal opcode: "

    invoke-direct {v5, v7}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    and-int/lit8 v7, v9, 0x3f

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Lorg/luaj/vm2/LuaError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catch_0
    move-exception v4

    :try_start_1
    iget-object v5, v4, Lorg/luaj/vm2/LuaError;->traceback:Ljava/lang/String;

    if-nez v5, :cond_2

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/luaj/vm2/LuaClosure;->p:Lorg/luaj/vm2/Prototype;

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5, v6}, Lorg/luaj/vm2/LuaClosure;->a(Lorg/luaj/vm2/LuaError;Lorg/luaj/vm2/Prototype;I)V

    :cond_2
    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v4

    if-eqz v3, :cond_54

    array-length v5, v3

    :cond_3
    :goto_2
    add-int/lit8 v5, v5, -0x1

    if-ltz v5, :cond_54

    aget-object v6, v3, v5

    if-eqz v6, :cond_3

    aget-object v6, v3, v5

    invoke-virtual {v6}, Lorg/luaj/vm2/UpValue;->close()V

    goto :goto_2

    :cond_4
    const/4 v3, 0x0

    goto :goto_0

    :pswitch_1
    ushr-int/lit8 v7, v9, 0x17

    :try_start_2
    aget-object v7, p1, v7

    aput-object v7, p1, v10

    :cond_5
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :pswitch_2
    ushr-int/lit8 v7, v9, 0xe

    aget-object v7, v12, v7

    aput-object v7, p1, v10
    :try_end_2
    .catch Lorg/luaj/vm2/LuaError; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :catch_1
    move-exception v4

    :try_start_3
    new-instance v5, Lorg/luaj/vm2/LuaError;

    invoke-direct {v5, v4}, Lorg/luaj/vm2/LuaError;-><init>(Ljava/lang/Throwable;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/luaj/vm2/LuaClosure;->p:Lorg/luaj/vm2/Prototype;

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v4, v6}, Lorg/luaj/vm2/LuaClosure;->a(Lorg/luaj/vm2/LuaError;Lorg/luaj/vm2/Prototype;I)V

    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :pswitch_3
    ushr-int/lit8 v7, v9, 0x17

    if-eqz v7, :cond_6

    :try_start_4
    sget-object v7, Lorg/luaj/vm2/LuaValue;->TRUE:Lorg/luaj/vm2/LuaBoolean;

    :goto_4
    aput-object v7, p1, v10

    const v7, 0x7fc000

    and-int/2addr v7, v9

    if-eqz v7, :cond_5

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_6
    sget-object v7, Lorg/luaj/vm2/LuaValue;->FALSE:Lorg/luaj/vm2/LuaBoolean;

    goto :goto_4

    :pswitch_4
    ushr-int/lit8 v7, v9, 0x17

    move v9, v10

    :goto_5
    add-int/lit8 v8, v7, -0x1

    if-ltz v7, :cond_5

    add-int/lit8 v7, v9, 0x1

    sget-object v10, Lorg/luaj/vm2/LuaValue;->NIL:Lorg/luaj/vm2/LuaValue;

    aput-object v10, p1, v9

    move v9, v7

    move v7, v8

    goto :goto_5

    :pswitch_5
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/luaj/vm2/LuaClosure;->upValues:[Lorg/luaj/vm2/UpValue;

    ushr-int/lit8 v8, v9, 0x17

    aget-object v7, v7, v8

    invoke-virtual {v7}, Lorg/luaj/vm2/UpValue;->getValue()Lorg/luaj/vm2/LuaValue;

    move-result-object v7

    aput-object v7, p1, v10

    goto :goto_3

    :pswitch_6
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/luaj/vm2/LuaClosure;->upValues:[Lorg/luaj/vm2/UpValue;

    ushr-int/lit8 v8, v9, 0x17

    aget-object v7, v7, v8

    invoke-virtual {v7}, Lorg/luaj/vm2/UpValue;->getValue()Lorg/luaj/vm2/LuaValue;

    move-result-object v8

    shr-int/lit8 v7, v9, 0xe

    and-int/lit16 v7, v7, 0x1ff

    const/16 v9, 0xff

    if-le v7, v9, :cond_7

    and-int/lit16 v7, v7, 0xff

    aget-object v7, v12, v7

    :goto_6
    invoke-virtual {v8, v7}, Lorg/luaj/vm2/LuaValue;->get(Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/LuaValue;

    move-result-object v7

    aput-object v7, p1, v10

    goto :goto_3

    :cond_7
    aget-object v7, p1, v7

    goto :goto_6

    :pswitch_7
    ushr-int/lit8 v7, v9, 0x17

    aget-object v8, p1, v7

    shr-int/lit8 v7, v9, 0xe

    and-int/lit16 v7, v7, 0x1ff

    const/16 v9, 0xff

    if-le v7, v9, :cond_8

    and-int/lit16 v7, v7, 0xff

    aget-object v7, v12, v7

    :goto_7
    invoke-virtual {v8, v7}, Lorg/luaj/vm2/LuaValue;->get(Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/LuaValue;

    move-result-object v7

    aput-object v7, p1, v10

    goto/16 :goto_3

    :cond_8
    aget-object v7, p1, v7

    goto :goto_7

    :pswitch_8
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/luaj/vm2/LuaClosure;->upValues:[Lorg/luaj/vm2/UpValue;

    aget-object v7, v7, v10

    invoke-virtual {v7}, Lorg/luaj/vm2/UpValue;->getValue()Lorg/luaj/vm2/LuaValue;

    move-result-object v10

    ushr-int/lit8 v7, v9, 0x17

    const/16 v8, 0xff

    if-le v7, v8, :cond_9

    and-int/lit16 v7, v7, 0xff

    aget-object v7, v12, v7

    move-object v8, v7

    :goto_8
    shr-int/lit8 v7, v9, 0xe

    and-int/lit16 v7, v7, 0x1ff

    const/16 v9, 0xff

    if-le v7, v9, :cond_a

    and-int/lit16 v7, v7, 0xff

    aget-object v7, v12, v7

    :goto_9
    invoke-virtual {v10, v8, v7}, Lorg/luaj/vm2/LuaValue;->set(Lorg/luaj/vm2/LuaValue;Lorg/luaj/vm2/LuaValue;)V

    goto/16 :goto_3

    :cond_9
    aget-object v7, p1, v7

    move-object v8, v7

    goto :goto_8

    :cond_a
    aget-object v7, p1, v7

    goto :goto_9

    :pswitch_9
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/luaj/vm2/LuaClosure;->upValues:[Lorg/luaj/vm2/UpValue;

    ushr-int/lit8 v8, v9, 0x17

    aget-object v7, v7, v8

    aget-object v8, p1, v10

    invoke-virtual {v7, v8}, Lorg/luaj/vm2/UpValue;->setValue(Lorg/luaj/vm2/LuaValue;)V

    goto/16 :goto_3

    :pswitch_a
    aget-object v10, p1, v10

    ushr-int/lit8 v7, v9, 0x17

    const/16 v8, 0xff

    if-le v7, v8, :cond_b

    and-int/lit16 v7, v7, 0xff

    aget-object v7, v12, v7

    move-object v8, v7

    :goto_a
    shr-int/lit8 v7, v9, 0xe

    and-int/lit16 v7, v7, 0x1ff

    const/16 v9, 0xff

    if-le v7, v9, :cond_c

    and-int/lit16 v7, v7, 0xff

    aget-object v7, v12, v7

    :goto_b
    invoke-virtual {v10, v8, v7}, Lorg/luaj/vm2/LuaValue;->set(Lorg/luaj/vm2/LuaValue;Lorg/luaj/vm2/LuaValue;)V

    goto/16 :goto_3

    :cond_b
    aget-object v7, p1, v7

    move-object v8, v7

    goto :goto_a

    :cond_c
    aget-object v7, p1, v7

    goto :goto_b

    :pswitch_b
    new-instance v7, Lorg/luaj/vm2/LuaTable;

    ushr-int/lit8 v8, v9, 0x17

    shr-int/lit8 v9, v9, 0xe

    and-int/lit16 v9, v9, 0x1ff

    invoke-direct {v7, v8, v9}, Lorg/luaj/vm2/LuaTable;-><init>(II)V

    aput-object v7, p1, v10

    goto/16 :goto_3

    :pswitch_c
    add-int/lit8 v7, v10, 0x1

    ushr-int/lit8 v8, v9, 0x17

    aget-object v8, p1, v8

    aput-object v8, p1, v7

    shr-int/lit8 v7, v9, 0xe

    and-int/lit16 v7, v7, 0x1ff

    const/16 v9, 0xff

    if-le v7, v9, :cond_d

    and-int/lit16 v7, v7, 0xff

    aget-object v7, v12, v7

    :goto_c
    invoke-virtual {v8, v7}, Lorg/luaj/vm2/LuaValue;->get(Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/LuaValue;

    move-result-object v7

    aput-object v7, p1, v10

    goto/16 :goto_3

    :cond_d
    aget-object v7, p1, v7

    goto :goto_c

    :pswitch_d
    ushr-int/lit8 v7, v9, 0x17

    const/16 v8, 0xff

    if-le v7, v8, :cond_e

    and-int/lit16 v7, v7, 0xff

    aget-object v7, v12, v7

    move-object v8, v7

    :goto_d
    shr-int/lit8 v7, v9, 0xe

    and-int/lit16 v7, v7, 0x1ff

    const/16 v9, 0xff

    if-le v7, v9, :cond_f

    and-int/lit16 v7, v7, 0xff

    aget-object v7, v12, v7

    :goto_e
    invoke-virtual {v8, v7}, Lorg/luaj/vm2/LuaValue;->add(Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/LuaValue;

    move-result-object v7

    aput-object v7, p1, v10

    goto/16 :goto_3

    :cond_e
    aget-object v7, p1, v7

    move-object v8, v7

    goto :goto_d

    :cond_f
    aget-object v7, p1, v7

    goto :goto_e

    :pswitch_e
    ushr-int/lit8 v7, v9, 0x17

    const/16 v8, 0xff

    if-le v7, v8, :cond_10

    and-int/lit16 v7, v7, 0xff

    aget-object v7, v12, v7

    move-object v8, v7

    :goto_f
    shr-int/lit8 v7, v9, 0xe

    and-int/lit16 v7, v7, 0x1ff

    const/16 v9, 0xff

    if-le v7, v9, :cond_11

    and-int/lit16 v7, v7, 0xff

    aget-object v7, v12, v7

    :goto_10
    invoke-virtual {v8, v7}, Lorg/luaj/vm2/LuaValue;->sub(Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/LuaValue;

    move-result-object v7

    aput-object v7, p1, v10

    goto/16 :goto_3

    :cond_10
    aget-object v7, p1, v7

    move-object v8, v7

    goto :goto_f

    :cond_11
    aget-object v7, p1, v7

    goto :goto_10

    :pswitch_f
    ushr-int/lit8 v7, v9, 0x17

    const/16 v8, 0xff

    if-le v7, v8, :cond_12

    and-int/lit16 v7, v7, 0xff

    aget-object v7, v12, v7

    move-object v8, v7

    :goto_11
    shr-int/lit8 v7, v9, 0xe

    and-int/lit16 v7, v7, 0x1ff

    const/16 v9, 0xff

    if-le v7, v9, :cond_13

    and-int/lit16 v7, v7, 0xff

    aget-object v7, v12, v7

    :goto_12
    invoke-virtual {v8, v7}, Lorg/luaj/vm2/LuaValue;->mul(Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/LuaValue;

    move-result-object v7

    aput-object v7, p1, v10

    goto/16 :goto_3

    :cond_12
    aget-object v7, p1, v7

    move-object v8, v7

    goto :goto_11

    :cond_13
    aget-object v7, p1, v7

    goto :goto_12

    :pswitch_10
    ushr-int/lit8 v7, v9, 0x17

    const/16 v8, 0xff

    if-le v7, v8, :cond_14

    and-int/lit16 v7, v7, 0xff

    aget-object v7, v12, v7

    move-object v8, v7

    :goto_13
    shr-int/lit8 v7, v9, 0xe

    and-int/lit16 v7, v7, 0x1ff

    const/16 v9, 0xff

    if-le v7, v9, :cond_15

    and-int/lit16 v7, v7, 0xff

    aget-object v7, v12, v7

    :goto_14
    invoke-virtual {v8, v7}, Lorg/luaj/vm2/LuaValue;->div(Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/LuaValue;

    move-result-object v7

    aput-object v7, p1, v10

    goto/16 :goto_3

    :cond_14
    aget-object v7, p1, v7

    move-object v8, v7

    goto :goto_13

    :cond_15
    aget-object v7, p1, v7

    goto :goto_14

    :pswitch_11
    ushr-int/lit8 v7, v9, 0x17

    const/16 v8, 0xff

    if-le v7, v8, :cond_16

    and-int/lit16 v7, v7, 0xff

    aget-object v7, v12, v7

    move-object v8, v7

    :goto_15
    shr-int/lit8 v7, v9, 0xe

    and-int/lit16 v7, v7, 0x1ff

    const/16 v9, 0xff

    if-le v7, v9, :cond_17

    and-int/lit16 v7, v7, 0xff

    aget-object v7, v12, v7

    :goto_16
    invoke-virtual {v8, v7}, Lorg/luaj/vm2/LuaValue;->mod(Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/LuaValue;

    move-result-object v7

    aput-object v7, p1, v10

    goto/16 :goto_3

    :cond_16
    aget-object v7, p1, v7

    move-object v8, v7

    goto :goto_15

    :cond_17
    aget-object v7, p1, v7

    goto :goto_16

    :pswitch_12
    ushr-int/lit8 v7, v9, 0x17

    const/16 v8, 0xff

    if-le v7, v8, :cond_18

    and-int/lit16 v7, v7, 0xff

    aget-object v7, v12, v7

    move-object v8, v7

    :goto_17
    shr-int/lit8 v7, v9, 0xe

    and-int/lit16 v7, v7, 0x1ff

    const/16 v9, 0xff

    if-le v7, v9, :cond_19

    and-int/lit16 v7, v7, 0xff

    aget-object v7, v12, v7

    :goto_18
    invoke-virtual {v8, v7}, Lorg/luaj/vm2/LuaValue;->pow(Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/LuaValue;

    move-result-object v7

    aput-object v7, p1, v10

    goto/16 :goto_3

    :cond_18
    aget-object v7, p1, v7

    move-object v8, v7

    goto :goto_17

    :cond_19
    aget-object v7, p1, v7

    goto :goto_18

    :pswitch_13
    ushr-int/lit8 v7, v9, 0x17

    aget-object v7, p1, v7

    invoke-virtual {v7}, Lorg/luaj/vm2/LuaValue;->neg()Lorg/luaj/vm2/LuaValue;

    move-result-object v7

    aput-object v7, p1, v10

    goto/16 :goto_3

    :pswitch_14
    ushr-int/lit8 v7, v9, 0x17

    aget-object v7, p1, v7

    invoke-virtual {v7}, Lorg/luaj/vm2/LuaValue;->not()Lorg/luaj/vm2/LuaValue;

    move-result-object v7

    aput-object v7, p1, v10

    goto/16 :goto_3

    :pswitch_15
    ushr-int/lit8 v7, v9, 0x17

    aget-object v7, p1, v7

    invoke-virtual {v7}, Lorg/luaj/vm2/LuaValue;->len()Lorg/luaj/vm2/LuaValue;

    move-result-object v7

    aput-object v7, p1, v10

    goto/16 :goto_3

    :pswitch_16
    ushr-int/lit8 v13, v9, 0x17

    shr-int/lit8 v7, v9, 0xe

    and-int/lit16 v8, v7, 0x1ff

    add-int/lit8 v7, v13, 0x1

    if-le v8, v7, :cond_1b

    aget-object v7, p1, v8

    invoke-virtual {v7}, Lorg/luaj/vm2/LuaValue;->buffer()Lorg/luaj/vm2/Buffer;

    move-result-object v7

    :goto_19
    add-int/lit8 v8, v8, -0x1

    if-lt v8, v13, :cond_1a

    aget-object v9, p1, v8

    invoke-virtual {v9, v7}, Lorg/luaj/vm2/LuaValue;->concat(Lorg/luaj/vm2/Buffer;)Lorg/luaj/vm2/Buffer;

    move-result-object v7

    goto :goto_19

    :cond_1a
    invoke-virtual {v7}, Lorg/luaj/vm2/Buffer;->value()Lorg/luaj/vm2/LuaValue;

    move-result-object v7

    aput-object v7, p1, v10

    goto/16 :goto_3

    :cond_1b
    add-int/lit8 v7, v8, -0x1

    aget-object v7, p1, v7

    aget-object v8, p1, v8

    invoke-virtual {v7, v8}, Lorg/luaj/vm2/LuaValue;->concat(Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/LuaValue;

    move-result-object v7

    aput-object v7, p1, v10

    goto/16 :goto_3

    :pswitch_17
    ushr-int/lit8 v7, v9, 0xe

    const v8, 0x1ffff

    sub-int/2addr v7, v8

    add-int/2addr v6, v7

    if-lez v10, :cond_5

    add-int/lit8 v8, v10, -0x1

    array-length v7, v3

    :cond_1c
    :goto_1a
    add-int/lit8 v7, v7, -0x1

    if-ltz v7, :cond_5

    aget-object v9, v3, v7

    if-eqz v9, :cond_1c

    aget-object v9, v3, v7

    iget v9, v9, Lorg/luaj/vm2/UpValue;->index:I

    if-lt v9, v8, :cond_1c

    aget-object v9, v3, v7

    invoke-virtual {v9}, Lorg/luaj/vm2/UpValue;->close()V

    const/4 v9, 0x0

    aput-object v9, v3, v7

    goto :goto_1a

    :pswitch_18
    ushr-int/lit8 v7, v9, 0x17

    const/16 v8, 0xff

    if-le v7, v8, :cond_1d

    and-int/lit16 v7, v7, 0xff

    aget-object v7, v12, v7

    move-object v8, v7

    :goto_1b
    shr-int/lit8 v7, v9, 0xe

    and-int/lit16 v7, v7, 0x1ff

    const/16 v9, 0xff

    if-le v7, v9, :cond_1e

    and-int/lit16 v7, v7, 0xff

    aget-object v7, v12, v7

    :goto_1c
    invoke-virtual {v8, v7}, Lorg/luaj/vm2/LuaValue;->eq_b(Lorg/luaj/vm2/LuaValue;)Z

    move-result v8

    if-eqz v10, :cond_1f

    const/4 v7, 0x1

    :goto_1d
    if-eq v8, v7, :cond_5

    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_3

    :cond_1d
    aget-object v7, p1, v7

    move-object v8, v7

    goto :goto_1b

    :cond_1e
    aget-object v7, p1, v7

    goto :goto_1c

    :cond_1f
    const/4 v7, 0x0

    goto :goto_1d

    :pswitch_19
    ushr-int/lit8 v7, v9, 0x17

    const/16 v8, 0xff

    if-le v7, v8, :cond_20

    and-int/lit16 v7, v7, 0xff

    aget-object v7, v12, v7

    move-object v8, v7

    :goto_1e
    shr-int/lit8 v7, v9, 0xe

    and-int/lit16 v7, v7, 0x1ff

    const/16 v9, 0xff

    if-le v7, v9, :cond_21

    and-int/lit16 v7, v7, 0xff

    aget-object v7, v12, v7

    :goto_1f
    invoke-virtual {v8, v7}, Lorg/luaj/vm2/LuaValue;->lt_b(Lorg/luaj/vm2/LuaValue;)Z

    move-result v8

    if-eqz v10, :cond_22

    const/4 v7, 0x1

    :goto_20
    if-eq v8, v7, :cond_5

    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_3

    :cond_20
    aget-object v7, p1, v7

    move-object v8, v7

    goto :goto_1e

    :cond_21
    aget-object v7, p1, v7

    goto :goto_1f

    :cond_22
    const/4 v7, 0x0

    goto :goto_20

    :pswitch_1a
    ushr-int/lit8 v7, v9, 0x17

    const/16 v8, 0xff

    if-le v7, v8, :cond_23

    and-int/lit16 v7, v7, 0xff

    aget-object v7, v12, v7

    move-object v8, v7

    :goto_21
    shr-int/lit8 v7, v9, 0xe

    and-int/lit16 v7, v7, 0x1ff

    const/16 v9, 0xff

    if-le v7, v9, :cond_24

    and-int/lit16 v7, v7, 0xff

    aget-object v7, v12, v7

    :goto_22
    invoke-virtual {v8, v7}, Lorg/luaj/vm2/LuaValue;->lteq_b(Lorg/luaj/vm2/LuaValue;)Z

    move-result v8

    if-eqz v10, :cond_25

    const/4 v7, 0x1

    :goto_23
    if-eq v8, v7, :cond_5

    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_3

    :cond_23
    aget-object v7, p1, v7

    move-object v8, v7

    goto :goto_21

    :cond_24
    aget-object v7, p1, v7

    goto :goto_22

    :cond_25
    const/4 v7, 0x0

    goto :goto_23

    :pswitch_1b
    aget-object v7, p1, v10

    invoke-virtual {v7}, Lorg/luaj/vm2/LuaValue;->toboolean()Z

    move-result v8

    const v7, 0x7fc000

    and-int/2addr v7, v9

    if-eqz v7, :cond_26

    const/4 v7, 0x1

    :goto_24
    if-eq v8, v7, :cond_5

    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_3

    :cond_26
    const/4 v7, 0x0

    goto :goto_24

    :pswitch_1c
    ushr-int/lit8 v7, v9, 0x17

    aget-object v8, p1, v7

    invoke-virtual {v8}, Lorg/luaj/vm2/LuaValue;->toboolean()Z

    move-result v13

    const v7, 0x7fc000

    and-int/2addr v7, v9

    if-eqz v7, :cond_27

    const/4 v7, 0x1

    :goto_25
    if-eq v13, v7, :cond_28

    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_3

    :cond_27
    const/4 v7, 0x0

    goto :goto_25

    :cond_28
    aput-object v8, p1, v10

    goto/16 :goto_3

    :pswitch_1d
    and-int/lit16 v7, v9, -0x4000

    sparse-switch v7, :sswitch_data_0

    ushr-int/lit8 v8, v9, 0x17

    shr-int/lit8 v7, v9, 0xe

    and-int/lit16 v7, v7, 0x1ff

    if-lez v8, :cond_29

    add-int/lit8 v4, v10, 0x1

    add-int/lit8 v8, v8, -0x1

    move-object/from16 v0, p1

    invoke-static {v0, v4, v8}, Lorg/luaj/vm2/LuaClosure;->varargsOf([Lorg/luaj/vm2/LuaValue;II)Lorg/luaj/vm2/Varargs;

    move-result-object v4

    :goto_26
    aget-object v8, p1, v10

    invoke-virtual {v8, v4}, Lorg/luaj/vm2/LuaValue;->invoke(Lorg/luaj/vm2/Varargs;)Lorg/luaj/vm2/Varargs;

    move-result-object v4

    if-lez v7, :cond_2b

    :goto_27
    add-int/lit8 v7, v7, -0x1

    if-lez v7, :cond_2a

    add-int v8, v10, v7

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v4, v7}, Lorg/luaj/vm2/Varargs;->arg(I)Lorg/luaj/vm2/LuaValue;

    move-result-object v9

    aput-object v9, p1, v8

    goto :goto_27

    :sswitch_0
    aget-object v4, p1, v10

    sget-object v5, Lorg/luaj/vm2/LuaClosure;->NONE:Lorg/luaj/vm2/LuaValue;

    invoke-virtual {v4, v5}, Lorg/luaj/vm2/LuaValue;->invoke(Lorg/luaj/vm2/Varargs;)Lorg/luaj/vm2/Varargs;

    move-result-object v4

    invoke-virtual {v4}, Lorg/luaj/vm2/Varargs;->narg()I

    move-result v5

    add-int/2addr v5, v10

    goto/16 :goto_3

    :sswitch_1
    aget-object v4, p1, v10

    add-int/lit8 v5, v10, 0x1

    aget-object v5, p1, v5

    invoke-virtual {v4, v5}, Lorg/luaj/vm2/LuaValue;->invoke(Lorg/luaj/vm2/Varargs;)Lorg/luaj/vm2/Varargs;

    move-result-object v4

    invoke-virtual {v4}, Lorg/luaj/vm2/Varargs;->narg()I

    move-result v5

    add-int/2addr v5, v10

    goto/16 :goto_3

    :sswitch_2
    aget-object v7, p1, v10

    invoke-virtual {v7}, Lorg/luaj/vm2/LuaValue;->call()Lorg/luaj/vm2/LuaValue;

    goto/16 :goto_3

    :sswitch_3
    aget-object v7, p1, v10

    add-int/lit8 v8, v10, 0x1

    aget-object v8, p1, v8

    invoke-virtual {v7, v8}, Lorg/luaj/vm2/LuaValue;->call(Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/LuaValue;

    goto/16 :goto_3

    :sswitch_4
    aget-object v7, p1, v10

    add-int/lit8 v8, v10, 0x1

    aget-object v8, p1, v8

    add-int/lit8 v9, v10, 0x2

    aget-object v9, p1, v9

    invoke-virtual {v7, v8, v9}, Lorg/luaj/vm2/LuaValue;->call(Lorg/luaj/vm2/LuaValue;Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/LuaValue;

    goto/16 :goto_3

    :sswitch_5
    aget-object v7, p1, v10

    add-int/lit8 v8, v10, 0x1

    aget-object v8, p1, v8

    add-int/lit8 v9, v10, 0x2

    aget-object v9, p1, v9

    add-int/lit8 v10, v10, 0x3

    aget-object v10, p1, v10

    invoke-virtual {v7, v8, v9, v10}, Lorg/luaj/vm2/LuaValue;->call(Lorg/luaj/vm2/LuaValue;Lorg/luaj/vm2/LuaValue;Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/LuaValue;

    goto/16 :goto_3

    :sswitch_6
    aget-object v7, p1, v10

    invoke-virtual {v7}, Lorg/luaj/vm2/LuaValue;->call()Lorg/luaj/vm2/LuaValue;

    move-result-object v7

    aput-object v7, p1, v10

    goto/16 :goto_3

    :sswitch_7
    aget-object v7, p1, v10

    add-int/lit8 v8, v10, 0x1

    aget-object v8, p1, v8

    invoke-virtual {v7, v8}, Lorg/luaj/vm2/LuaValue;->call(Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/LuaValue;

    move-result-object v7

    aput-object v7, p1, v10

    goto/16 :goto_3

    :sswitch_8
    aget-object v7, p1, v10

    add-int/lit8 v8, v10, 0x1

    aget-object v8, p1, v8

    add-int/lit8 v9, v10, 0x2

    aget-object v9, p1, v9

    invoke-virtual {v7, v8, v9}, Lorg/luaj/vm2/LuaValue;->call(Lorg/luaj/vm2/LuaValue;Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/LuaValue;

    move-result-object v7

    aput-object v7, p1, v10

    goto/16 :goto_3

    :sswitch_9
    aget-object v7, p1, v10

    add-int/lit8 v8, v10, 0x1

    aget-object v8, p1, v8

    add-int/lit8 v9, v10, 0x2

    aget-object v9, p1, v9

    add-int/lit8 v13, v10, 0x3

    aget-object v13, p1, v13

    invoke-virtual {v7, v8, v9, v13}, Lorg/luaj/vm2/LuaValue;->call(Lorg/luaj/vm2/LuaValue;Lorg/luaj/vm2/LuaValue;Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/LuaValue;

    move-result-object v7

    aput-object v7, p1, v10

    goto/16 :goto_3

    :cond_29
    add-int/lit8 v8, v10, 0x1

    invoke-virtual {v4}, Lorg/luaj/vm2/Varargs;->narg()I

    move-result v9

    sub-int v9, v5, v9

    add-int/lit8 v13, v10, 0x1

    sub-int/2addr v9, v13

    move-object/from16 v0, p1

    invoke-static {v0, v8, v9, v4}, Lorg/luaj/vm2/LuaClosure;->varargsOf([Lorg/luaj/vm2/LuaValue;IILorg/luaj/vm2/Varargs;)Lorg/luaj/vm2/Varargs;

    move-result-object v4

    goto/16 :goto_26

    :cond_2a
    sget-object v4, Lorg/luaj/vm2/LuaClosure;->NONE:Lorg/luaj/vm2/LuaValue;

    goto/16 :goto_3

    :cond_2b
    invoke-virtual {v4}, Lorg/luaj/vm2/Varargs;->narg()I

    move-result v5

    add-int/2addr v5, v10

    goto/16 :goto_3

    :pswitch_1e
    const/high16 v7, -0x800000    # Float.NEGATIVE_INFINITY

    and-int/2addr v7, v9

    sparse-switch v7, :sswitch_data_1

    ushr-int/lit8 v7, v9, 0x17

    if-lez v7, :cond_39

    add-int/lit8 v4, v10, 0x1

    add-int/lit8 v5, v7, -0x1

    move-object/from16 v0, p1

    invoke-static {v0, v4, v5}, Lorg/luaj/vm2/LuaClosure;->varargsOf([Lorg/luaj/vm2/LuaValue;II)Lorg/luaj/vm2/Varargs;

    move-result-object v4

    move-object v5, v4

    :goto_28
    new-instance v4, Lorg/luaj/vm2/TailcallVarargs;

    aget-object v7, p1, v10

    invoke-direct {v4, v7, v5}, Lorg/luaj/vm2/TailcallVarargs;-><init>(Lorg/luaj/vm2/LuaValue;Lorg/luaj/vm2/Varargs;)V
    :try_end_4
    .catch Lorg/luaj/vm2/LuaError; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v3, :cond_3a

    array-length v5, v3

    :cond_2c
    :goto_29
    add-int/lit8 v5, v5, -0x1

    if-ltz v5, :cond_3a

    aget-object v6, v3, v5

    if-eqz v6, :cond_2c

    aget-object v6, v3, v5

    invoke-virtual {v6}, Lorg/luaj/vm2/UpValue;->close()V

    goto :goto_29

    :sswitch_a
    :try_start_5
    new-instance v4, Lorg/luaj/vm2/TailcallVarargs;

    aget-object v5, p1, v10

    sget-object v7, Lorg/luaj/vm2/LuaClosure;->NONE:Lorg/luaj/vm2/LuaValue;

    invoke-direct {v4, v5, v7}, Lorg/luaj/vm2/TailcallVarargs;-><init>(Lorg/luaj/vm2/LuaValue;Lorg/luaj/vm2/Varargs;)V
    :try_end_5
    .catch Lorg/luaj/vm2/LuaError; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v3, :cond_2e

    array-length v5, v3

    :cond_2d
    :goto_2a
    add-int/lit8 v5, v5, -0x1

    if-ltz v5, :cond_2e

    aget-object v6, v3, v5

    if-eqz v6, :cond_2d

    aget-object v6, v3, v5

    invoke-virtual {v6}, Lorg/luaj/vm2/UpValue;->close()V

    goto :goto_2a

    :cond_2e
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/luaj/vm2/LuaClosure;->globals:Lorg/luaj/vm2/Globals;

    if-eqz v3, :cond_2f

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/luaj/vm2/LuaClosure;->globals:Lorg/luaj/vm2/Globals;

    iget-object v3, v3, Lorg/luaj/vm2/Globals;->debuglib:Lorg/luaj/vm2/lib/DebugLib;

    if-eqz v3, :cond_2f

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/luaj/vm2/LuaClosure;->globals:Lorg/luaj/vm2/Globals;

    iget-object v3, v3, Lorg/luaj/vm2/Globals;->debuglib:Lorg/luaj/vm2/lib/DebugLib;

    invoke-virtual {v3}, Lorg/luaj/vm2/lib/DebugLib;->onReturn()V

    :cond_2f
    move-object v3, v4

    :goto_2b
    return-object v3

    :sswitch_b
    :try_start_6
    new-instance v4, Lorg/luaj/vm2/TailcallVarargs;

    aget-object v5, p1, v10

    add-int/lit8 v7, v10, 0x1

    aget-object v7, p1, v7

    invoke-direct {v4, v5, v7}, Lorg/luaj/vm2/TailcallVarargs;-><init>(Lorg/luaj/vm2/LuaValue;Lorg/luaj/vm2/Varargs;)V
    :try_end_6
    .catch Lorg/luaj/vm2/LuaError; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v3, :cond_31

    array-length v5, v3

    :cond_30
    :goto_2c
    add-int/lit8 v5, v5, -0x1

    if-ltz v5, :cond_31

    aget-object v6, v3, v5

    if-eqz v6, :cond_30

    aget-object v6, v3, v5

    invoke-virtual {v6}, Lorg/luaj/vm2/UpValue;->close()V

    goto :goto_2c

    :cond_31
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/luaj/vm2/LuaClosure;->globals:Lorg/luaj/vm2/Globals;

    if-eqz v3, :cond_32

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/luaj/vm2/LuaClosure;->globals:Lorg/luaj/vm2/Globals;

    iget-object v3, v3, Lorg/luaj/vm2/Globals;->debuglib:Lorg/luaj/vm2/lib/DebugLib;

    if-eqz v3, :cond_32

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/luaj/vm2/LuaClosure;->globals:Lorg/luaj/vm2/Globals;

    iget-object v3, v3, Lorg/luaj/vm2/Globals;->debuglib:Lorg/luaj/vm2/lib/DebugLib;

    invoke-virtual {v3}, Lorg/luaj/vm2/lib/DebugLib;->onReturn()V

    :cond_32
    move-object v3, v4

    goto :goto_2b

    :sswitch_c
    :try_start_7
    new-instance v4, Lorg/luaj/vm2/TailcallVarargs;

    aget-object v5, p1, v10

    add-int/lit8 v7, v10, 0x1

    aget-object v7, p1, v7

    add-int/lit8 v8, v10, 0x2

    aget-object v8, p1, v8

    invoke-static {v7, v8}, Lorg/luaj/vm2/LuaClosure;->varargsOf(Lorg/luaj/vm2/LuaValue;Lorg/luaj/vm2/Varargs;)Lorg/luaj/vm2/Varargs;

    move-result-object v7

    invoke-direct {v4, v5, v7}, Lorg/luaj/vm2/TailcallVarargs;-><init>(Lorg/luaj/vm2/LuaValue;Lorg/luaj/vm2/Varargs;)V
    :try_end_7
    .catch Lorg/luaj/vm2/LuaError; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-eqz v3, :cond_34

    array-length v5, v3

    :cond_33
    :goto_2d
    add-int/lit8 v5, v5, -0x1

    if-ltz v5, :cond_34

    aget-object v6, v3, v5

    if-eqz v6, :cond_33

    aget-object v6, v3, v5

    invoke-virtual {v6}, Lorg/luaj/vm2/UpValue;->close()V

    goto :goto_2d

    :cond_34
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/luaj/vm2/LuaClosure;->globals:Lorg/luaj/vm2/Globals;

    if-eqz v3, :cond_35

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/luaj/vm2/LuaClosure;->globals:Lorg/luaj/vm2/Globals;

    iget-object v3, v3, Lorg/luaj/vm2/Globals;->debuglib:Lorg/luaj/vm2/lib/DebugLib;

    if-eqz v3, :cond_35

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/luaj/vm2/LuaClosure;->globals:Lorg/luaj/vm2/Globals;

    iget-object v3, v3, Lorg/luaj/vm2/Globals;->debuglib:Lorg/luaj/vm2/lib/DebugLib;

    invoke-virtual {v3}, Lorg/luaj/vm2/lib/DebugLib;->onReturn()V

    :cond_35
    move-object v3, v4

    goto :goto_2b

    :sswitch_d
    :try_start_8
    new-instance v4, Lorg/luaj/vm2/TailcallVarargs;

    aget-object v5, p1, v10

    add-int/lit8 v7, v10, 0x1

    aget-object v7, p1, v7

    add-int/lit8 v8, v10, 0x2

    aget-object v8, p1, v8

    add-int/lit8 v9, v10, 0x3

    aget-object v9, p1, v9

    invoke-static {v7, v8, v9}, Lorg/luaj/vm2/LuaClosure;->varargsOf(Lorg/luaj/vm2/LuaValue;Lorg/luaj/vm2/LuaValue;Lorg/luaj/vm2/Varargs;)Lorg/luaj/vm2/Varargs;

    move-result-object v7

    invoke-direct {v4, v5, v7}, Lorg/luaj/vm2/TailcallVarargs;-><init>(Lorg/luaj/vm2/LuaValue;Lorg/luaj/vm2/Varargs;)V
    :try_end_8
    .catch Lorg/luaj/vm2/LuaError; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    if-eqz v3, :cond_37

    array-length v5, v3

    :cond_36
    :goto_2e
    add-int/lit8 v5, v5, -0x1

    if-ltz v5, :cond_37

    aget-object v6, v3, v5

    if-eqz v6, :cond_36

    aget-object v6, v3, v5

    invoke-virtual {v6}, Lorg/luaj/vm2/UpValue;->close()V

    goto :goto_2e

    :cond_37
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/luaj/vm2/LuaClosure;->globals:Lorg/luaj/vm2/Globals;

    if-eqz v3, :cond_38

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/luaj/vm2/LuaClosure;->globals:Lorg/luaj/vm2/Globals;

    iget-object v3, v3, Lorg/luaj/vm2/Globals;->debuglib:Lorg/luaj/vm2/lib/DebugLib;

    if-eqz v3, :cond_38

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/luaj/vm2/LuaClosure;->globals:Lorg/luaj/vm2/Globals;

    iget-object v3, v3, Lorg/luaj/vm2/Globals;->debuglib:Lorg/luaj/vm2/lib/DebugLib;

    invoke-virtual {v3}, Lorg/luaj/vm2/lib/DebugLib;->onReturn()V

    :cond_38
    move-object v3, v4

    goto/16 :goto_2b

    :cond_39
    add-int/lit8 v7, v10, 0x1

    :try_start_9
    invoke-virtual {v4}, Lorg/luaj/vm2/Varargs;->narg()I

    move-result v8

    sub-int/2addr v5, v8

    add-int/lit8 v8, v10, 0x1

    sub-int/2addr v5, v8

    move-object/from16 v0, p1

    invoke-static {v0, v7, v5, v4}, Lorg/luaj/vm2/LuaClosure;->varargsOf([Lorg/luaj/vm2/LuaValue;IILorg/luaj/vm2/Varargs;)Lorg/luaj/vm2/Varargs;
    :try_end_9
    .catch Lorg/luaj/vm2/LuaError; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    move-result-object v4

    move-object v5, v4

    goto/16 :goto_28

    :cond_3a
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/luaj/vm2/LuaClosure;->globals:Lorg/luaj/vm2/Globals;

    if-eqz v3, :cond_3b

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/luaj/vm2/LuaClosure;->globals:Lorg/luaj/vm2/Globals;

    iget-object v3, v3, Lorg/luaj/vm2/Globals;->debuglib:Lorg/luaj/vm2/lib/DebugLib;

    if-eqz v3, :cond_3b

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/luaj/vm2/LuaClosure;->globals:Lorg/luaj/vm2/Globals;

    iget-object v3, v3, Lorg/luaj/vm2/Globals;->debuglib:Lorg/luaj/vm2/lib/DebugLib;

    invoke-virtual {v3}, Lorg/luaj/vm2/lib/DebugLib;->onReturn()V

    :cond_3b
    move-object v3, v4

    goto/16 :goto_2b

    :pswitch_1f
    ushr-int/lit8 v7, v9, 0x17

    packed-switch v7, :pswitch_data_1

    add-int/lit8 v4, v7, -0x1

    :try_start_a
    move-object/from16 v0, p1

    invoke-static {v0, v10, v4}, Lorg/luaj/vm2/LuaClosure;->varargsOf([Lorg/luaj/vm2/LuaValue;II)Lorg/luaj/vm2/Varargs;
    :try_end_a
    .catch Lorg/luaj/vm2/LuaError; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    move-result-object v4

    if-eqz v3, :cond_46

    array-length v5, v3

    :cond_3c
    :goto_2f
    add-int/lit8 v5, v5, -0x1

    if-ltz v5, :cond_46

    aget-object v6, v3, v5

    if-eqz v6, :cond_3c

    aget-object v6, v3, v5

    invoke-virtual {v6}, Lorg/luaj/vm2/UpValue;->close()V

    goto :goto_2f

    :pswitch_20
    :try_start_b
    invoke-virtual {v4}, Lorg/luaj/vm2/Varargs;->narg()I

    move-result v7

    sub-int/2addr v5, v7

    sub-int/2addr v5, v10

    move-object/from16 v0, p1

    invoke-static {v0, v10, v5, v4}, Lorg/luaj/vm2/LuaClosure;->varargsOf([Lorg/luaj/vm2/LuaValue;IILorg/luaj/vm2/Varargs;)Lorg/luaj/vm2/Varargs;
    :try_end_b
    .catch Lorg/luaj/vm2/LuaError; {:try_start_b .. :try_end_b} :catch_0
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    move-result-object v4

    if-eqz v3, :cond_3e

    array-length v5, v3

    :cond_3d
    :goto_30
    add-int/lit8 v5, v5, -0x1

    if-ltz v5, :cond_3e

    aget-object v6, v3, v5

    if-eqz v6, :cond_3d

    aget-object v6, v3, v5

    invoke-virtual {v6}, Lorg/luaj/vm2/UpValue;->close()V

    goto :goto_30

    :cond_3e
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/luaj/vm2/LuaClosure;->globals:Lorg/luaj/vm2/Globals;

    if-eqz v3, :cond_3f

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/luaj/vm2/LuaClosure;->globals:Lorg/luaj/vm2/Globals;

    iget-object v3, v3, Lorg/luaj/vm2/Globals;->debuglib:Lorg/luaj/vm2/lib/DebugLib;

    if-eqz v3, :cond_3f

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/luaj/vm2/LuaClosure;->globals:Lorg/luaj/vm2/Globals;

    iget-object v3, v3, Lorg/luaj/vm2/Globals;->debuglib:Lorg/luaj/vm2/lib/DebugLib;

    invoke-virtual {v3}, Lorg/luaj/vm2/lib/DebugLib;->onReturn()V

    :cond_3f
    move-object v3, v4

    goto/16 :goto_2b

    :pswitch_21
    :try_start_c
    sget-object v4, Lorg/luaj/vm2/LuaClosure;->NONE:Lorg/luaj/vm2/LuaValue;
    :try_end_c
    .catch Lorg/luaj/vm2/LuaError; {:try_start_c .. :try_end_c} :catch_0
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_1
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    if-eqz v3, :cond_41

    array-length v5, v3

    :cond_40
    :goto_31
    add-int/lit8 v5, v5, -0x1

    if-ltz v5, :cond_41

    aget-object v6, v3, v5

    if-eqz v6, :cond_40

    aget-object v6, v3, v5

    invoke-virtual {v6}, Lorg/luaj/vm2/UpValue;->close()V

    goto :goto_31

    :cond_41
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/luaj/vm2/LuaClosure;->globals:Lorg/luaj/vm2/Globals;

    if-eqz v3, :cond_42

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/luaj/vm2/LuaClosure;->globals:Lorg/luaj/vm2/Globals;

    iget-object v3, v3, Lorg/luaj/vm2/Globals;->debuglib:Lorg/luaj/vm2/lib/DebugLib;

    if-eqz v3, :cond_42

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/luaj/vm2/LuaClosure;->globals:Lorg/luaj/vm2/Globals;

    iget-object v3, v3, Lorg/luaj/vm2/Globals;->debuglib:Lorg/luaj/vm2/lib/DebugLib;

    invoke-virtual {v3}, Lorg/luaj/vm2/lib/DebugLib;->onReturn()V

    :cond_42
    move-object v3, v4

    goto/16 :goto_2b

    :pswitch_22
    :try_start_d
    aget-object v4, p1, v10
    :try_end_d
    .catch Lorg/luaj/vm2/LuaError; {:try_start_d .. :try_end_d} :catch_0
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_1
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    if-eqz v3, :cond_44

    array-length v5, v3

    :cond_43
    :goto_32
    add-int/lit8 v5, v5, -0x1

    if-ltz v5, :cond_44

    aget-object v6, v3, v5

    if-eqz v6, :cond_43

    aget-object v6, v3, v5

    invoke-virtual {v6}, Lorg/luaj/vm2/UpValue;->close()V

    goto :goto_32

    :cond_44
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/luaj/vm2/LuaClosure;->globals:Lorg/luaj/vm2/Globals;

    if-eqz v3, :cond_45

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/luaj/vm2/LuaClosure;->globals:Lorg/luaj/vm2/Globals;

    iget-object v3, v3, Lorg/luaj/vm2/Globals;->debuglib:Lorg/luaj/vm2/lib/DebugLib;

    if-eqz v3, :cond_45

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/luaj/vm2/LuaClosure;->globals:Lorg/luaj/vm2/Globals;

    iget-object v3, v3, Lorg/luaj/vm2/Globals;->debuglib:Lorg/luaj/vm2/lib/DebugLib;

    invoke-virtual {v3}, Lorg/luaj/vm2/lib/DebugLib;->onReturn()V

    :cond_45
    move-object v3, v4

    goto/16 :goto_2b

    :cond_46
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/luaj/vm2/LuaClosure;->globals:Lorg/luaj/vm2/Globals;

    if-eqz v3, :cond_47

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/luaj/vm2/LuaClosure;->globals:Lorg/luaj/vm2/Globals;

    iget-object v3, v3, Lorg/luaj/vm2/Globals;->debuglib:Lorg/luaj/vm2/lib/DebugLib;

    if-eqz v3, :cond_47

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/luaj/vm2/LuaClosure;->globals:Lorg/luaj/vm2/Globals;

    iget-object v3, v3, Lorg/luaj/vm2/Globals;->debuglib:Lorg/luaj/vm2/lib/DebugLib;

    invoke-virtual {v3}, Lorg/luaj/vm2/lib/DebugLib;->onReturn()V

    :cond_47
    move-object v3, v4

    goto/16 :goto_2b

    :pswitch_23
    add-int/lit8 v7, v10, 0x1

    :try_start_e
    aget-object v7, p1, v7

    add-int/lit8 v8, v10, 0x2

    aget-object v8, p1, v8

    aget-object v13, p1, v10

    invoke-virtual {v8, v13}, Lorg/luaj/vm2/LuaValue;->add(Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/LuaValue;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v8, v14}, Lorg/luaj/vm2/LuaValue;->gt_b(I)Z

    move-result v8

    if-eqz v8, :cond_48

    invoke-virtual {v13, v7}, Lorg/luaj/vm2/LuaValue;->lteq_b(Lorg/luaj/vm2/LuaValue;)Z

    move-result v7

    if-eqz v7, :cond_5

    :goto_33
    aput-object v13, p1, v10

    add-int/lit8 v7, v10, 0x3

    aput-object v13, p1, v7

    ushr-int/lit8 v7, v9, 0xe

    const v8, 0x1ffff

    sub-int/2addr v7, v8

    add-int/2addr v6, v7

    goto/16 :goto_3

    :cond_48
    invoke-virtual {v13, v7}, Lorg/luaj/vm2/LuaValue;->gteq_b(Lorg/luaj/vm2/LuaValue;)Z

    move-result v7

    if-eqz v7, :cond_5

    goto :goto_33

    :pswitch_24
    aget-object v7, p1, v10

    const-string/jumbo v8, "\'for\' initial value must be a number"

    invoke-virtual {v7, v8}, Lorg/luaj/vm2/LuaValue;->checknumber(Ljava/lang/String;)Lorg/luaj/vm2/LuaNumber;

    move-result-object v7

    add-int/lit8 v8, v10, 0x1

    aget-object v8, p1, v8

    const-string/jumbo v13, "\'for\' limit must be a number"

    invoke-virtual {v8, v13}, Lorg/luaj/vm2/LuaValue;->checknumber(Ljava/lang/String;)Lorg/luaj/vm2/LuaNumber;

    move-result-object v8

    add-int/lit8 v13, v10, 0x2

    aget-object v13, p1, v13

    const-string/jumbo v14, "\'for\' step must be a number"

    invoke-virtual {v13, v14}, Lorg/luaj/vm2/LuaValue;->checknumber(Ljava/lang/String;)Lorg/luaj/vm2/LuaNumber;

    move-result-object v13

    invoke-virtual {v7, v13}, Lorg/luaj/vm2/LuaValue;->sub(Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/LuaValue;

    move-result-object v7

    aput-object v7, p1, v10

    add-int/lit8 v7, v10, 0x1

    aput-object v8, p1, v7

    add-int/lit8 v7, v10, 0x2

    aput-object v13, p1, v7

    ushr-int/lit8 v7, v9, 0xe

    const v8, 0x1ffff

    sub-int/2addr v7, v8

    add-int/2addr v6, v7

    goto/16 :goto_3

    :pswitch_25
    aget-object v4, p1, v10

    add-int/lit8 v7, v10, 0x1

    aget-object v7, p1, v7

    add-int/lit8 v8, v10, 0x2

    aget-object v8, p1, v8

    invoke-static {v7, v8}, Lorg/luaj/vm2/LuaClosure;->varargsOf(Lorg/luaj/vm2/LuaValue;Lorg/luaj/vm2/Varargs;)Lorg/luaj/vm2/Varargs;

    move-result-object v7

    invoke-virtual {v4, v7}, Lorg/luaj/vm2/LuaValue;->invoke(Lorg/luaj/vm2/Varargs;)Lorg/luaj/vm2/Varargs;

    move-result-object v7

    shr-int/lit8 v4, v9, 0xe

    and-int/lit16 v4, v4, 0x1ff

    :goto_34
    add-int/lit8 v4, v4, -0x1

    if-ltz v4, :cond_49

    add-int/lit8 v8, v10, 0x3

    add-int/2addr v8, v4

    add-int/lit8 v9, v4, 0x1

    invoke-virtual {v7, v9}, Lorg/luaj/vm2/Varargs;->arg(I)Lorg/luaj/vm2/LuaValue;

    move-result-object v9

    aput-object v9, p1, v8

    goto :goto_34

    :cond_49
    sget-object v4, Lorg/luaj/vm2/LuaClosure;->NONE:Lorg/luaj/vm2/LuaValue;

    goto/16 :goto_3

    :pswitch_26
    add-int/lit8 v7, v10, 0x1

    aget-object v7, p1, v7

    invoke-virtual {v7}, Lorg/luaj/vm2/LuaValue;->isnil()Z

    move-result v7

    if-nez v7, :cond_5

    add-int/lit8 v7, v10, 0x1

    aget-object v7, p1, v7

    aput-object v7, p1, v10

    ushr-int/lit8 v7, v9, 0xe

    const v8, 0x1ffff

    sub-int/2addr v7, v8

    add-int/2addr v6, v7

    goto/16 :goto_3

    :pswitch_27
    shr-int/lit8 v7, v9, 0xe

    and-int/lit16 v7, v7, 0x1ff

    if-nez v7, :cond_4a

    add-int/lit8 v6, v6, 0x1

    aget v7, v11, v6

    :cond_4a
    add-int/lit8 v7, v7, -0x1

    mul-int/lit8 v8, v7, 0x32

    aget-object v13, p1, v10

    ushr-int/lit8 v9, v9, 0x17

    if-nez v9, :cond_4c

    sub-int v7, v5, v10

    add-int/lit8 v9, v7, -0x1

    invoke-virtual {v4}, Lorg/luaj/vm2/Varargs;->narg()I

    move-result v7

    sub-int v14, v9, v7

    const/4 v7, 0x1

    :goto_35
    if-gt v7, v14, :cond_4b

    add-int v15, v8, v7

    add-int v16, v10, v7

    aget-object v16, p1, v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v15, v0}, Lorg/luaj/vm2/LuaValue;->set(ILorg/luaj/vm2/LuaValue;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_35

    :cond_4b
    :goto_36
    if-gt v7, v9, :cond_5

    add-int v10, v8, v7

    sub-int v15, v7, v14

    invoke-virtual {v4, v15}, Lorg/luaj/vm2/Varargs;->arg(I)Lorg/luaj/vm2/LuaValue;

    move-result-object v15

    invoke-virtual {v13, v10, v15}, Lorg/luaj/vm2/LuaValue;->set(ILorg/luaj/vm2/LuaValue;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_36

    :cond_4c
    add-int v7, v8, v9

    invoke-virtual {v13, v7}, Lorg/luaj/vm2/LuaValue;->presize(I)V

    const/4 v7, 0x1

    :goto_37
    if-gt v7, v9, :cond_5

    add-int v14, v8, v7

    add-int v15, v10, v7

    aget-object v15, p1, v15

    invoke-virtual {v13, v14, v15}, Lorg/luaj/vm2/LuaValue;->set(ILorg/luaj/vm2/LuaValue;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_37

    :pswitch_28
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/luaj/vm2/LuaClosure;->p:Lorg/luaj/vm2/Prototype;

    iget-object v7, v7, Lorg/luaj/vm2/Prototype;->p:[Lorg/luaj/vm2/Prototype;

    ushr-int/lit8 v8, v9, 0xe

    aget-object v7, v7, v8

    new-instance v13, Lorg/luaj/vm2/LuaClosure;

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/luaj/vm2/LuaClosure;->globals:Lorg/luaj/vm2/Globals;

    invoke-direct {v13, v7, v8}, Lorg/luaj/vm2/LuaClosure;-><init>(Lorg/luaj/vm2/Prototype;Lorg/luaj/vm2/LuaValue;)V

    iget-object v14, v7, Lorg/luaj/vm2/Prototype;->upvalues:[Lorg/luaj/vm2/Upvaldesc;

    const/4 v7, 0x0

    array-length v15, v14

    move v9, v7

    :goto_38
    if-ge v9, v15, :cond_52

    aget-object v7, v14, v9

    iget-boolean v7, v7, Lorg/luaj/vm2/Upvaldesc;->instack:Z

    if-eqz v7, :cond_51

    iget-object v0, v13, Lorg/luaj/vm2/LuaClosure;->upValues:[Lorg/luaj/vm2/UpValue;

    move-object/from16 v16, v0

    aget-object v7, v14, v9

    iget-short v0, v7, Lorg/luaj/vm2/Upvaldesc;->idx:S

    move/from16 v17, v0

    array-length v0, v3

    move/from16 v18, v0

    const/4 v7, 0x0

    :goto_39
    move/from16 v0, v18

    if-ge v7, v0, :cond_4e

    aget-object v8, v3, v7

    if-eqz v8, :cond_4d

    aget-object v8, v3, v7

    iget v8, v8, Lorg/luaj/vm2/UpValue;->index:I

    move/from16 v0, v17

    if-ne v8, v0, :cond_4d

    aget-object v7, v3, v7

    :goto_3a
    aput-object v7, v16, v9

    :goto_3b
    add-int/lit8 v7, v9, 0x1

    move v9, v7

    goto :goto_38

    :cond_4d
    add-int/lit8 v7, v7, 0x1

    goto :goto_39

    :cond_4e
    const/4 v7, 0x0

    move v8, v7

    :goto_3c
    move/from16 v0, v18

    if-ge v8, v0, :cond_50

    aget-object v7, v3, v8

    if-nez v7, :cond_4f

    new-instance v7, Lorg/luaj/vm2/UpValue;

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-direct {v7, v0, v1}, Lorg/luaj/vm2/UpValue;-><init>([Lorg/luaj/vm2/LuaValue;I)V

    aput-object v7, v3, v8

    goto :goto_3a

    :cond_4f
    add-int/lit8 v7, v8, 0x1

    move v8, v7

    goto :goto_3c

    :cond_50
    const-string/jumbo v7, "No space for upvalue"

    invoke-static {v7}, Lorg/luaj/vm2/LuaClosure;->error(Ljava/lang/String;)Lorg/luaj/vm2/LuaValue;

    const/4 v7, 0x0

    goto :goto_3a

    :cond_51
    iget-object v7, v13, Lorg/luaj/vm2/LuaClosure;->upValues:[Lorg/luaj/vm2/UpValue;

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/luaj/vm2/LuaClosure;->upValues:[Lorg/luaj/vm2/UpValue;

    aget-object v16, v14, v9

    move-object/from16 v0, v16

    iget-short v0, v0, Lorg/luaj/vm2/Upvaldesc;->idx:S

    move/from16 v16, v0

    aget-object v8, v8, v16

    aput-object v8, v7, v9

    goto :goto_3b

    :cond_52
    aput-object v13, p1, v10

    goto/16 :goto_3

    :pswitch_29
    ushr-int/lit8 v8, v9, 0x17

    if-nez v8, :cond_53

    invoke-virtual/range {p2 .. p2}, Lorg/luaj/vm2/Varargs;->narg()I

    move-result v4

    add-int/2addr v4, v10

    move v5, v4

    move-object/from16 v4, p2

    goto/16 :goto_3

    :cond_53
    const/4 v7, 0x1

    :goto_3d
    if-ge v7, v8, :cond_5

    add-int v9, v10, v7

    add-int/lit8 v9, v9, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Lorg/luaj/vm2/Varargs;->arg(I)Lorg/luaj/vm2/LuaValue;

    move-result-object v13

    aput-object v13, p1, v9

    add-int/lit8 v7, v7, 0x1

    goto :goto_3d

    :pswitch_2a
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "Uexecutable opcode: OP_EXTRAARG"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_e
    .catch Lorg/luaj/vm2/LuaError; {:try_start_e .. :try_end_e} :catch_0
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_1
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    :cond_54
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/luaj/vm2/LuaClosure;->globals:Lorg/luaj/vm2/Globals;

    if-eqz v3, :cond_55

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/luaj/vm2/LuaClosure;->globals:Lorg/luaj/vm2/Globals;

    iget-object v3, v3, Lorg/luaj/vm2/Globals;->debuglib:Lorg/luaj/vm2/lib/DebugLib;

    if-eqz v3, :cond_55

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/luaj/vm2/LuaClosure;->globals:Lorg/luaj/vm2/Globals;

    iget-object v3, v3, Lorg/luaj/vm2/Globals;->debuglib:Lorg/luaj/vm2/lib/DebugLib;

    invoke-virtual {v3}, Lorg/luaj/vm2/lib/DebugLib;->onReturn()V

    :cond_55
    throw v4

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_23
        :pswitch_24
        :pswitch_25
        :pswitch_26
        :pswitch_27
        :pswitch_28
        :pswitch_29
        :pswitch_2a
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x800000 -> :sswitch_0
        0x804000 -> :sswitch_2
        0x808000 -> :sswitch_6
        0x1000000 -> :sswitch_1
        0x1004000 -> :sswitch_3
        0x1008000 -> :sswitch_7
        0x1804000 -> :sswitch_4
        0x1808000 -> :sswitch_8
        0x2004000 -> :sswitch_5
        0x2008000 -> :sswitch_9
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x800000 -> :sswitch_a
        0x1000000 -> :sswitch_b
        0x1800000 -> :sswitch_c
        0x2000000 -> :sswitch_d
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_20
        :pswitch_21
        :pswitch_22
    .end packed-switch
.end method

.method protected getUpvalue(I)Lorg/luaj/vm2/LuaValue;
    .locals 1

    iget-object v0, p0, Lorg/luaj/vm2/LuaClosure;->upValues:[Lorg/luaj/vm2/UpValue;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lorg/luaj/vm2/UpValue;->getValue()Lorg/luaj/vm2/LuaValue;

    move-result-object v0

    return-object v0
.end method

.method public getmetatable()Lorg/luaj/vm2/LuaValue;
    .locals 1

    sget-object v0, Lorg/luaj/vm2/LuaClosure;->s_metatable:Lorg/luaj/vm2/LuaValue;

    return-object v0
.end method

.method public final invoke(Lorg/luaj/vm2/Varargs;)Lorg/luaj/vm2/Varargs;
    .locals 1

    invoke-virtual {p0, p1}, Lorg/luaj/vm2/LuaClosure;->onInvoke(Lorg/luaj/vm2/Varargs;)Lorg/luaj/vm2/Varargs;

    move-result-object v0

    invoke-virtual {v0}, Lorg/luaj/vm2/Varargs;->eval()Lorg/luaj/vm2/Varargs;

    move-result-object v0

    return-object v0
.end method

.method public isclosure()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public name()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    const-string/jumbo v1, "<"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/luaj/vm2/LuaClosure;->p:Lorg/luaj/vm2/Prototype;

    invoke-virtual {v1}, Lorg/luaj/vm2/Prototype;->shortsource()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/luaj/vm2/LuaClosure;->p:Lorg/luaj/vm2/Prototype;

    iget v1, v1, Lorg/luaj/vm2/Prototype;->linedefined:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final onInvoke(Lorg/luaj/vm2/Varargs;)Lorg/luaj/vm2/Varargs;
    .locals 3

    iget-object v0, p0, Lorg/luaj/vm2/LuaClosure;->p:Lorg/luaj/vm2/Prototype;

    iget v0, v0, Lorg/luaj/vm2/Prototype;->maxstacksize:I

    new-array v1, v0, [Lorg/luaj/vm2/LuaValue;

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lorg/luaj/vm2/LuaClosure;->p:Lorg/luaj/vm2/Prototype;

    iget v2, v2, Lorg/luaj/vm2/Prototype;->numparams:I

    if-ge v0, v2, :cond_0

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p1, v2}, Lorg/luaj/vm2/Varargs;->arg(I)Lorg/luaj/vm2/LuaValue;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/luaj/vm2/LuaClosure;->p:Lorg/luaj/vm2/Prototype;

    iget v0, v0, Lorg/luaj/vm2/Prototype;->is_vararg:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/luaj/vm2/LuaClosure;->p:Lorg/luaj/vm2/Prototype;

    iget v0, v0, Lorg/luaj/vm2/Prototype;->numparams:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Lorg/luaj/vm2/Varargs;->subargs(I)Lorg/luaj/vm2/Varargs;

    move-result-object v0

    :goto_1
    invoke-virtual {p0, v1, v0}, Lorg/luaj/vm2/LuaClosure;->execute([Lorg/luaj/vm2/LuaValue;Lorg/luaj/vm2/Varargs;)Lorg/luaj/vm2/Varargs;

    move-result-object v0

    return-object v0

    :cond_1
    sget-object v0, Lorg/luaj/vm2/LuaClosure;->NONE:Lorg/luaj/vm2/LuaValue;

    goto :goto_1
.end method

.method public optclosure(Lorg/luaj/vm2/LuaClosure;)Lorg/luaj/vm2/LuaClosure;
    .locals 0

    return-object p0
.end method

.method protected setUpvalue(ILorg/luaj/vm2/LuaValue;)V
    .locals 1

    iget-object v0, p0, Lorg/luaj/vm2/LuaClosure;->upValues:[Lorg/luaj/vm2/UpValue;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Lorg/luaj/vm2/UpValue;->setValue(Lorg/luaj/vm2/LuaValue;)V

    return-void
.end method

.method public tojstring()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    const-string/jumbo v1, "function: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/luaj/vm2/LuaClosure;->p:Lorg/luaj/vm2/Prototype;

    invoke-virtual {v1}, Lorg/luaj/vm2/Prototype;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
