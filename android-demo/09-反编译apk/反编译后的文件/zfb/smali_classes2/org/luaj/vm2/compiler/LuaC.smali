.class public Lorg/luaj/vm2/compiler/LuaC;
.super Lorg/luaj/vm2/Lua;

# interfaces
.implements Lorg/luaj/vm2/Globals$Compiler;
.implements Lorg/luaj/vm2/Globals$Loader;


# static fields
.field static final LUAI_MAXUPVAL:I = 0xff

.field static final LUAI_MAXVARS:I = 0xc8

.field public static final MAXSTACK:I = 0xfa

.field static final NO_REG:I = 0xff

.field static final OpArgK:I = 0x3

.field static final OpArgN:I = 0x0

.field static final OpArgR:I = 0x2

.field static final OpArgU:I = 0x1

.field static final iABC:I = 0x0

.field static final iABx:I = 0x1

.field static final iAsBx:I = 0x2

.field public static final instance:Lorg/luaj/vm2/compiler/LuaC;


# instance fields
.field public nCcalls:I

.field strings:Ljava/util/Hashtable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/luaj/vm2/compiler/LuaC;

    invoke-direct {v0}, Lorg/luaj/vm2/compiler/LuaC;-><init>()V

    sput-object v0, Lorg/luaj/vm2/compiler/LuaC;->instance:Lorg/luaj/vm2/compiler/LuaC;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/luaj/vm2/Lua;-><init>()V

    return-void
.end method

.method private constructor <init>(Ljava/util/Hashtable;)V
    .locals 0

    invoke-direct {p0}, Lorg/luaj/vm2/Lua;-><init>()V

    iput-object p1, p0, Lorg/luaj/vm2/compiler/LuaC;->strings:Ljava/util/Hashtable;

    return-void
.end method

.method static CREATE_ABC(IIII)I
    .locals 3

    shl-int/lit8 v0, p0, 0x0

    and-int/lit8 v0, v0, 0x3f

    shl-int/lit8 v1, p1, 0x6

    and-int/lit16 v1, v1, 0x3fc0

    or-int/2addr v0, v1

    shl-int/lit8 v1, p2, 0x17

    const/high16 v2, -0x800000    # Float.NEGATIVE_INFINITY

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    shl-int/lit8 v1, p3, 0xe

    const v2, 0x7fc000

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    return v0
.end method

.method static CREATE_ABx(III)I
    .locals 2

    shl-int/lit8 v0, p0, 0x0

    and-int/lit8 v0, v0, 0x3f

    shl-int/lit8 v1, p1, 0x6

    and-int/lit16 v1, v1, 0x3fc0

    or-int/2addr v0, v1

    shl-int/lit8 v1, p2, 0xe

    and-int/lit16 v1, v1, -0x4000

    or-int/2addr v0, v1

    return v0
.end method

.method static SETARG_A(Lorg/luaj/vm2/compiler/InstructionPtr;I)V
    .locals 2

    invoke-virtual {p0}, Lorg/luaj/vm2/compiler/InstructionPtr;->get()I

    move-result v0

    and-int/lit16 v0, v0, -0x3fc1

    shl-int/lit8 v1, p1, 0x6

    and-int/lit16 v1, v1, 0x3fc0

    or-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lorg/luaj/vm2/compiler/InstructionPtr;->set(I)V

    return-void
.end method

.method static SETARG_A([III)V
    .locals 2

    aget v0, p0, p1

    and-int/lit16 v0, v0, -0x3fc1

    shl-int/lit8 v1, p2, 0x6

    and-int/lit16 v1, v1, 0x3fc0

    or-int/2addr v0, v1

    aput v0, p0, p1

    return-void
.end method

.method static SETARG_B(Lorg/luaj/vm2/compiler/InstructionPtr;I)V
    .locals 3

    invoke-virtual {p0}, Lorg/luaj/vm2/compiler/InstructionPtr;->get()I

    move-result v0

    const v1, 0x7fffff

    and-int/2addr v0, v1

    shl-int/lit8 v1, p1, 0x17

    const/high16 v2, -0x800000    # Float.NEGATIVE_INFINITY

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lorg/luaj/vm2/compiler/InstructionPtr;->set(I)V

    return-void
.end method

.method static SETARG_Bx(Lorg/luaj/vm2/compiler/InstructionPtr;I)V
    .locals 2

    invoke-virtual {p0}, Lorg/luaj/vm2/compiler/InstructionPtr;->get()I

    move-result v0

    and-int/lit16 v0, v0, 0x3fff

    shl-int/lit8 v1, p1, 0xe

    and-int/lit16 v1, v1, -0x4000

    or-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lorg/luaj/vm2/compiler/InstructionPtr;->set(I)V

    return-void
.end method

.method static SETARG_C(Lorg/luaj/vm2/compiler/InstructionPtr;I)V
    .locals 3

    invoke-virtual {p0}, Lorg/luaj/vm2/compiler/InstructionPtr;->get()I

    move-result v0

    const v1, -0x7fc001

    and-int/2addr v0, v1

    shl-int/lit8 v1, p1, 0xe

    const v2, 0x7fc000

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lorg/luaj/vm2/compiler/InstructionPtr;->set(I)V

    return-void
.end method

.method static SETARG_sBx(Lorg/luaj/vm2/compiler/InstructionPtr;I)V
    .locals 1

    const v0, 0x1ffff

    add-int/2addr v0, p1

    invoke-static {p0, v0}, Lorg/luaj/vm2/compiler/LuaC;->SETARG_Bx(Lorg/luaj/vm2/compiler/InstructionPtr;I)V

    return-void
.end method

.method static SET_OPCODE(Lorg/luaj/vm2/compiler/InstructionPtr;I)V
    .locals 2

    invoke-virtual {p0}, Lorg/luaj/vm2/compiler/InstructionPtr;->get()I

    move-result v0

    and-int/lit8 v0, v0, -0x40

    shl-int/lit8 v1, p1, 0x0

    and-int/lit8 v1, v1, 0x3f

    or-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lorg/luaj/vm2/compiler/InstructionPtr;->set(I)V

    return-void
.end method

.method protected static _assert(Z)V
    .locals 2

    if-nez p0, :cond_0

    new-instance v0, Lorg/luaj/vm2/LuaError;

    const-string/jumbo v1, "compiler assert failed"

    invoke-direct {v0, v1}, Lorg/luaj/vm2/LuaError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method static grow([Lorg/luaj/vm2/compiler/LexState$Labeldesc;I)[Lorg/luaj/vm2/compiler/LexState$Labeldesc;
    .locals 1

    if-nez p0, :cond_1

    const/4 v0, 0x2

    new-array p0, v0, [Lorg/luaj/vm2/compiler/LexState$Labeldesc;

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    array-length v0, p0

    if-ge v0, p1, :cond_0

    array-length v0, p0

    mul-int/lit8 v0, v0, 0x2

    invoke-static {p0, v0}, Lorg/luaj/vm2/compiler/LuaC;->realloc([Lorg/luaj/vm2/compiler/LexState$Labeldesc;I)[Lorg/luaj/vm2/compiler/LexState$Labeldesc;

    move-result-object p0

    goto :goto_0
.end method

.method public static install(Lorg/luaj/vm2/Globals;)V
    .locals 1

    sget-object v0, Lorg/luaj/vm2/compiler/LuaC;->instance:Lorg/luaj/vm2/compiler/LuaC;

    iput-object v0, p0, Lorg/luaj/vm2/Globals;->compiler:Lorg/luaj/vm2/Globals$Compiler;

    sget-object v0, Lorg/luaj/vm2/compiler/LuaC;->instance:Lorg/luaj/vm2/compiler/LuaC;

    iput-object v0, p0, Lorg/luaj/vm2/Globals;->loader:Lorg/luaj/vm2/Globals$Loader;

    return-void
.end method

.method static realloc([BI)[B
    .locals 3

    const/4 v2, 0x0

    new-array v0, p1, [B

    if-eqz p0, :cond_0

    array-length v1, p0

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    return-object v0
.end method

.method static realloc([CI)[C
    .locals 3

    const/4 v2, 0x0

    new-array v0, p1, [C

    if-eqz p0, :cond_0

    array-length v1, p0

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    return-object v0
.end method

.method static realloc([II)[I
    .locals 3

    const/4 v2, 0x0

    new-array v0, p1, [I

    if-eqz p0, :cond_0

    array-length v1, p0

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    return-object v0
.end method

.method static realloc([Lorg/luaj/vm2/LocVars;I)[Lorg/luaj/vm2/LocVars;
    .locals 3

    const/4 v2, 0x0

    new-array v0, p1, [Lorg/luaj/vm2/LocVars;

    if-eqz p0, :cond_0

    array-length v1, p0

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    return-object v0
.end method

.method static realloc([Lorg/luaj/vm2/LuaString;I)[Lorg/luaj/vm2/LuaString;
    .locals 3

    const/4 v2, 0x0

    new-array v0, p1, [Lorg/luaj/vm2/LuaString;

    if-eqz p0, :cond_0

    array-length v1, p0

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    return-object v0
.end method

.method static realloc([Lorg/luaj/vm2/LuaValue;I)[Lorg/luaj/vm2/LuaValue;
    .locals 3

    const/4 v2, 0x0

    new-array v0, p1, [Lorg/luaj/vm2/LuaValue;

    if-eqz p0, :cond_0

    array-length v1, p0

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    return-object v0
.end method

.method static realloc([Lorg/luaj/vm2/Prototype;I)[Lorg/luaj/vm2/Prototype;
    .locals 3

    const/4 v2, 0x0

    new-array v0, p1, [Lorg/luaj/vm2/Prototype;

    if-eqz p0, :cond_0

    array-length v1, p0

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    return-object v0
.end method

.method static realloc([Lorg/luaj/vm2/Upvaldesc;I)[Lorg/luaj/vm2/Upvaldesc;
    .locals 3

    const/4 v2, 0x0

    new-array v0, p1, [Lorg/luaj/vm2/Upvaldesc;

    if-eqz p0, :cond_0

    array-length v1, p0

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    return-object v0
.end method

.method static realloc([Lorg/luaj/vm2/compiler/LexState$Labeldesc;I)[Lorg/luaj/vm2/compiler/LexState$Labeldesc;
    .locals 3

    const/4 v2, 0x0

    new-array v0, p1, [Lorg/luaj/vm2/compiler/LexState$Labeldesc;

    if-eqz p0, :cond_0

    array-length v1, p0

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    return-object v0
.end method

.method static realloc([Lorg/luaj/vm2/compiler/LexState$Vardesc;I)[Lorg/luaj/vm2/compiler/LexState$Vardesc;
    .locals 3

    const/4 v2, 0x0

    new-array v0, p1, [Lorg/luaj/vm2/compiler/LexState$Vardesc;

    if-eqz p0, :cond_0

    array-length v1, p0

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    return-object v0
.end method


# virtual methods
.method public cachedLuaString(Lorg/luaj/vm2/LuaString;)Lorg/luaj/vm2/LuaString;
    .locals 1

    iget-object v0, p0, Lorg/luaj/vm2/compiler/LuaC;->strings:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/luaj/vm2/LuaString;

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/luaj/vm2/compiler/LuaC;->strings:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p1

    goto :goto_0
.end method

.method public compile(Ljava/io/InputStream;Ljava/lang/String;)Lorg/luaj/vm2/Prototype;
    .locals 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    new-instance v0, Lorg/luaj/vm2/compiler/LuaC;

    new-instance v3, Ljava/util/Hashtable;

    invoke-direct {v3}, Ljava/util/Hashtable;-><init>()V

    invoke-direct {v0, v3}, Lorg/luaj/vm2/compiler/LuaC;-><init>(Ljava/util/Hashtable;)V

    new-instance v3, Lorg/luaj/vm2/compiler/LexState;

    invoke-direct {v3, v0, p1}, Lorg/luaj/vm2/compiler/LexState;-><init>(Lorg/luaj/vm2/compiler/LuaC;Ljava/io/InputStream;)V

    new-instance v4, Lorg/luaj/vm2/compiler/FuncState;

    invoke-direct {v4}, Lorg/luaj/vm2/compiler/FuncState;-><init>()V

    iput-object v4, v3, Lorg/luaj/vm2/compiler/LexState;->fs:Lorg/luaj/vm2/compiler/FuncState;

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v5

    invoke-static {p2}, Lorg/luaj/vm2/LuaValue;->valueOf(Ljava/lang/String;)Lorg/luaj/vm2/LuaString;

    move-result-object v6

    invoke-virtual {v3, v0, v5, p1, v6}, Lorg/luaj/vm2/compiler/LexState;->setinput(Lorg/luaj/vm2/compiler/LuaC;ILjava/io/InputStream;Lorg/luaj/vm2/LuaString;)V

    new-instance v0, Lorg/luaj/vm2/Prototype;

    invoke-direct {v0}, Lorg/luaj/vm2/Prototype;-><init>()V

    iput-object v0, v4, Lorg/luaj/vm2/compiler/FuncState;->f:Lorg/luaj/vm2/Prototype;

    iget-object v0, v4, Lorg/luaj/vm2/compiler/FuncState;->f:Lorg/luaj/vm2/Prototype;

    invoke-static {p2}, Lorg/luaj/vm2/LuaValue;->valueOf(Ljava/lang/String;)Lorg/luaj/vm2/LuaString;

    move-result-object v5

    iput-object v5, v0, Lorg/luaj/vm2/Prototype;->source:Lorg/luaj/vm2/LuaString;

    invoke-virtual {v3, v4}, Lorg/luaj/vm2/compiler/LexState;->mainfunc(Lorg/luaj/vm2/compiler/FuncState;)V

    iget-object v0, v4, Lorg/luaj/vm2/compiler/FuncState;->prev:Lorg/luaj/vm2/compiler/FuncState;

    if-nez v0, :cond_2

    move v0, v1

    :goto_0
    invoke-static {v0}, Lorg/luaj/vm2/compiler/LuaC;->_assert(Z)V

    iget-object v0, v3, Lorg/luaj/vm2/compiler/LexState;->dyd:Lorg/luaj/vm2/compiler/LexState$Dyndata;

    if-eqz v0, :cond_0

    iget-object v0, v3, Lorg/luaj/vm2/compiler/LexState;->dyd:Lorg/luaj/vm2/compiler/LexState$Dyndata;

    iget v0, v0, Lorg/luaj/vm2/compiler/LexState$Dyndata;->n_actvar:I

    if-nez v0, :cond_1

    iget-object v0, v3, Lorg/luaj/vm2/compiler/LexState;->dyd:Lorg/luaj/vm2/compiler/LexState$Dyndata;

    iget v0, v0, Lorg/luaj/vm2/compiler/LexState$Dyndata;->n_gt:I

    if-nez v0, :cond_1

    iget-object v0, v3, Lorg/luaj/vm2/compiler/LexState;->dyd:Lorg/luaj/vm2/compiler/LexState$Dyndata;

    iget v0, v0, Lorg/luaj/vm2/compiler/LexState$Dyndata;->n_label:I

    if-nez v0, :cond_1

    :cond_0
    move v2, v1

    :cond_1
    invoke-static {v2}, Lorg/luaj/vm2/compiler/LuaC;->_assert(Z)V

    iget-object v0, v4, Lorg/luaj/vm2/compiler/FuncState;->f:Lorg/luaj/vm2/Prototype;

    return-object v0

    :cond_2
    move v0, v2

    goto :goto_0
.end method

.method public load(Lorg/luaj/vm2/Prototype;Ljava/lang/String;Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/LuaFunction;
    .locals 1

    new-instance v0, Lorg/luaj/vm2/LuaClosure;

    invoke-direct {v0, p1, p3}, Lorg/luaj/vm2/LuaClosure;-><init>(Lorg/luaj/vm2/Prototype;Lorg/luaj/vm2/LuaValue;)V

    return-object v0
.end method

.method public load(Ljava/io/InputStream;Ljava/lang/String;Lorg/luaj/vm2/Globals;)Lorg/luaj/vm2/LuaValue;
    .locals 2

    new-instance v0, Lorg/luaj/vm2/LuaClosure;

    invoke-virtual {p0, p1, p2}, Lorg/luaj/vm2/compiler/LuaC;->compile(Ljava/io/InputStream;Ljava/lang/String;)Lorg/luaj/vm2/Prototype;

    move-result-object v1

    invoke-direct {v0, v1, p3}, Lorg/luaj/vm2/LuaClosure;-><init>(Lorg/luaj/vm2/Prototype;Lorg/luaj/vm2/LuaValue;)V

    return-object v0
.end method

.method public newTString(Ljava/lang/String;)Lorg/luaj/vm2/LuaString;
    .locals 1

    invoke-static {p1}, Lorg/luaj/vm2/LuaString;->valueOf(Ljava/lang/String;)Lorg/luaj/vm2/LuaString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/luaj/vm2/compiler/LuaC;->cachedLuaString(Lorg/luaj/vm2/LuaString;)Lorg/luaj/vm2/LuaString;

    move-result-object v0

    return-object v0
.end method

.method public newTString(Lorg/luaj/vm2/LuaString;)Lorg/luaj/vm2/LuaString;
    .locals 1

    invoke-virtual {p0, p1}, Lorg/luaj/vm2/compiler/LuaC;->cachedLuaString(Lorg/luaj/vm2/LuaString;)Lorg/luaj/vm2/LuaString;

    move-result-object v0

    return-object v0
.end method

.method public pushfstring(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    return-object p1
.end method
