.class public Lorg/luaj/vm2/compiler/DumpState;
.super Ljava/lang/Object;


# static fields
.field public static ALLOW_INTEGER_CASTING:Z = false

.field public static final NUMBER_FORMAT_DEFAULT:I = 0x0

.field public static final NUMBER_FORMAT_FLOATS_OR_DOUBLES:I = 0x0

.field public static final NUMBER_FORMAT_INTS_ONLY:I = 0x1

.field public static final NUMBER_FORMAT_NUM_PATCH_INT32:I = 0x4


# instance fields
.field private a:Z

.field private b:I

.field private c:I

.field status:I

.field strip:Z

.field writer:Ljava/io/DataOutputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lorg/luaj/vm2/compiler/DumpState;->ALLOW_INTEGER_CASTING:Z

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Z)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lorg/luaj/vm2/compiler/DumpState;->a:Z

    iput v1, p0, Lorg/luaj/vm2/compiler/DumpState;->b:I

    const/16 v0, 0x8

    iput v0, p0, Lorg/luaj/vm2/compiler/DumpState;->c:I

    new-instance v0, Ljava/io/DataOutputStream;

    invoke-direct {v0, p1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lorg/luaj/vm2/compiler/DumpState;->writer:Ljava/io/DataOutputStream;

    iput-boolean p2, p0, Lorg/luaj/vm2/compiler/DumpState;->strip:Z

    iput v1, p0, Lorg/luaj/vm2/compiler/DumpState;->status:I

    return-void
.end method

.method public static dump(Lorg/luaj/vm2/Prototype;Ljava/io/OutputStream;Z)I
    .locals 1

    new-instance v0, Lorg/luaj/vm2/compiler/DumpState;

    invoke-direct {v0, p1, p2}, Lorg/luaj/vm2/compiler/DumpState;-><init>(Ljava/io/OutputStream;Z)V

    invoke-virtual {v0}, Lorg/luaj/vm2/compiler/DumpState;->dumpHeader()V

    invoke-virtual {v0, p0}, Lorg/luaj/vm2/compiler/DumpState;->dumpFunction(Lorg/luaj/vm2/Prototype;)V

    iget v0, v0, Lorg/luaj/vm2/compiler/DumpState;->status:I

    return v0
.end method

.method public static dump(Lorg/luaj/vm2/Prototype;Ljava/io/OutputStream;ZIZ)I
    .locals 3

    packed-switch p3, :pswitch_data_0

    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string/jumbo v2, "number format not supported: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    new-instance v1, Lorg/luaj/vm2/compiler/DumpState;

    invoke-direct {v1, p1, p2}, Lorg/luaj/vm2/compiler/DumpState;-><init>(Ljava/io/OutputStream;Z)V

    iput-boolean p4, v1, Lorg/luaj/vm2/compiler/DumpState;->a:Z

    iput p3, v1, Lorg/luaj/vm2/compiler/DumpState;->b:I

    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    const/4 v0, 0x4

    :goto_0
    iput v0, v1, Lorg/luaj/vm2/compiler/DumpState;->c:I

    invoke-virtual {v1}, Lorg/luaj/vm2/compiler/DumpState;->dumpHeader()V

    invoke-virtual {v1, p0}, Lorg/luaj/vm2/compiler/DumpState;->dumpFunction(Lorg/luaj/vm2/Prototype;)V

    iget v0, v1, Lorg/luaj/vm2/compiler/DumpState;->status:I

    return v0

    :cond_0
    const/16 v0, 0x8

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method dumpBlock([BI)V
    .locals 2

    iget-object v0, p0, Lorg/luaj/vm2/compiler/DumpState;->writer:Ljava/io/DataOutputStream;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Ljava/io/DataOutputStream;->write([BII)V

    return-void
.end method

.method dumpChar(I)V
    .locals 1

    iget-object v0, p0, Lorg/luaj/vm2/compiler/DumpState;->writer:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->write(I)V

    return-void
.end method

.method dumpCode(Lorg/luaj/vm2/Prototype;)V
    .locals 4

    iget-object v1, p1, Lorg/luaj/vm2/Prototype;->code:[I

    array-length v2, v1

    invoke-virtual {p0, v2}, Lorg/luaj/vm2/compiler/DumpState;->dumpInt(I)V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget v3, v1, v0

    invoke-virtual {p0, v3}, Lorg/luaj/vm2/compiler/DumpState;->dumpInt(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method dumpConstants(Lorg/luaj/vm2/Prototype;)V
    .locals 9

    const/4 v1, 0x1

    const/4 v8, 0x3

    const/4 v2, 0x0

    iget-object v4, p1, Lorg/luaj/vm2/Prototype;->k:[Lorg/luaj/vm2/LuaValue;

    array-length v5, v4

    invoke-virtual {p0, v5}, Lorg/luaj/vm2/compiler/DumpState;->dumpInt(I)V

    move v3, v2

    :goto_0
    if-ge v3, v5, :cond_3

    aget-object v0, v4, v3

    invoke-virtual {v0}, Lorg/luaj/vm2/LuaValue;->type()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    :pswitch_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuffer;

    const-string/jumbo v3, "bad type for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_1
    iget-object v0, p0, Lorg/luaj/vm2/compiler/DumpState;->writer:Ljava/io/DataOutputStream;

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->write(I)V

    :goto_1
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :pswitch_2
    iget-object v6, p0, Lorg/luaj/vm2/compiler/DumpState;->writer:Ljava/io/DataOutputStream;

    invoke-virtual {v6, v1}, Ljava/io/DataOutputStream;->write(I)V

    invoke-virtual {v0}, Lorg/luaj/vm2/LuaValue;->toboolean()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_2
    invoke-virtual {p0, v0}, Lorg/luaj/vm2/compiler/DumpState;->dumpChar(I)V

    goto :goto_1

    :cond_0
    move v0, v2

    goto :goto_2

    :pswitch_3
    iget v6, p0, Lorg/luaj/vm2/compiler/DumpState;->b:I

    packed-switch v6, :pswitch_data_1

    :pswitch_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string/jumbo v2, "number format not supported: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lorg/luaj/vm2/compiler/DumpState;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_5
    iget-object v6, p0, Lorg/luaj/vm2/compiler/DumpState;->writer:Ljava/io/DataOutputStream;

    invoke-virtual {v6, v8}, Ljava/io/DataOutputStream;->write(I)V

    invoke-virtual {v0}, Lorg/luaj/vm2/LuaValue;->todouble()D

    move-result-wide v6

    invoke-virtual {p0, v6, v7}, Lorg/luaj/vm2/compiler/DumpState;->dumpDouble(D)V

    goto :goto_1

    :pswitch_6
    sget-boolean v6, Lorg/luaj/vm2/compiler/DumpState;->ALLOW_INTEGER_CASTING:Z

    if-nez v6, :cond_1

    invoke-virtual {v0}, Lorg/luaj/vm2/LuaValue;->isint()Z

    move-result v6

    if-nez v6, :cond_1

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuffer;

    const-string/jumbo v3, "not an integer: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    iget-object v6, p0, Lorg/luaj/vm2/compiler/DumpState;->writer:Ljava/io/DataOutputStream;

    invoke-virtual {v6, v8}, Ljava/io/DataOutputStream;->write(I)V

    invoke-virtual {v0}, Lorg/luaj/vm2/LuaValue;->toint()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/luaj/vm2/compiler/DumpState;->dumpInt(I)V

    goto :goto_1

    :pswitch_7
    invoke-virtual {v0}, Lorg/luaj/vm2/LuaValue;->isint()Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lorg/luaj/vm2/compiler/DumpState;->writer:Ljava/io/DataOutputStream;

    const/4 v7, -0x2

    invoke-virtual {v6, v7}, Ljava/io/DataOutputStream;->write(I)V

    invoke-virtual {v0}, Lorg/luaj/vm2/LuaValue;->toint()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/luaj/vm2/compiler/DumpState;->dumpInt(I)V

    goto :goto_1

    :cond_2
    iget-object v6, p0, Lorg/luaj/vm2/compiler/DumpState;->writer:Ljava/io/DataOutputStream;

    invoke-virtual {v6, v8}, Ljava/io/DataOutputStream;->write(I)V

    invoke-virtual {v0}, Lorg/luaj/vm2/LuaValue;->todouble()D

    move-result-wide v6

    invoke-virtual {p0, v6, v7}, Lorg/luaj/vm2/compiler/DumpState;->dumpDouble(D)V

    goto/16 :goto_1

    :pswitch_8
    iget-object v6, p0, Lorg/luaj/vm2/compiler/DumpState;->writer:Ljava/io/DataOutputStream;

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Ljava/io/DataOutputStream;->write(I)V

    check-cast v0, Lorg/luaj/vm2/LuaString;

    invoke-virtual {p0, v0}, Lorg/luaj/vm2/compiler/DumpState;->dumpString(Lorg/luaj/vm2/LuaString;)V

    goto/16 :goto_1

    :cond_3
    iget-object v0, p1, Lorg/luaj/vm2/Prototype;->p:[Lorg/luaj/vm2/Prototype;

    array-length v0, v0

    invoke-virtual {p0, v0}, Lorg/luaj/vm2/compiler/DumpState;->dumpInt(I)V

    :goto_3
    if-ge v2, v0, :cond_4

    iget-object v1, p1, Lorg/luaj/vm2/Prototype;->p:[Lorg/luaj/vm2/Prototype;

    aget-object v1, v1, v2

    invoke-virtual {p0, v1}, Lorg/luaj/vm2/compiler/DumpState;->dumpFunction(Lorg/luaj/vm2/Prototype;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_8
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_6
        :pswitch_4
        :pswitch_4
        :pswitch_7
    .end packed-switch
.end method

.method dumpDebug(Lorg/luaj/vm2/Prototype;)V
    .locals 5

    const/4 v1, 0x0

    iget-boolean v0, p0, Lorg/luaj/vm2/compiler/DumpState;->strip:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Lorg/luaj/vm2/compiler/DumpState;->dumpInt(I)V

    :goto_0
    iget-boolean v0, p0, Lorg/luaj/vm2/compiler/DumpState;->strip:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p0, v0}, Lorg/luaj/vm2/compiler/DumpState;->dumpInt(I)V

    move v2, v1

    :goto_2
    if-ge v2, v0, :cond_2

    iget-object v3, p1, Lorg/luaj/vm2/Prototype;->lineinfo:[I

    aget v3, v3, v2

    invoke-virtual {p0, v3}, Lorg/luaj/vm2/compiler/DumpState;->dumpInt(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_0
    iget-object v0, p1, Lorg/luaj/vm2/Prototype;->source:Lorg/luaj/vm2/LuaString;

    invoke-virtual {p0, v0}, Lorg/luaj/vm2/compiler/DumpState;->dumpString(Lorg/luaj/vm2/LuaString;)V

    goto :goto_0

    :cond_1
    iget-object v0, p1, Lorg/luaj/vm2/Prototype;->lineinfo:[I

    array-length v0, v0

    goto :goto_1

    :cond_2
    iget-boolean v0, p0, Lorg/luaj/vm2/compiler/DumpState;->strip:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_3
    invoke-virtual {p0, v0}, Lorg/luaj/vm2/compiler/DumpState;->dumpInt(I)V

    move v2, v1

    :goto_4
    if-ge v2, v0, :cond_4

    iget-object v3, p1, Lorg/luaj/vm2/Prototype;->locvars:[Lorg/luaj/vm2/LocVars;

    aget-object v3, v3, v2

    iget-object v4, v3, Lorg/luaj/vm2/LocVars;->varname:Lorg/luaj/vm2/LuaString;

    invoke-virtual {p0, v4}, Lorg/luaj/vm2/compiler/DumpState;->dumpString(Lorg/luaj/vm2/LuaString;)V

    iget v4, v3, Lorg/luaj/vm2/LocVars;->startpc:I

    invoke-virtual {p0, v4}, Lorg/luaj/vm2/compiler/DumpState;->dumpInt(I)V

    iget v3, v3, Lorg/luaj/vm2/LocVars;->endpc:I

    invoke-virtual {p0, v3}, Lorg/luaj/vm2/compiler/DumpState;->dumpInt(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_3
    iget-object v0, p1, Lorg/luaj/vm2/Prototype;->locvars:[Lorg/luaj/vm2/LocVars;

    array-length v0, v0

    goto :goto_3

    :cond_4
    iget-boolean v0, p0, Lorg/luaj/vm2/compiler/DumpState;->strip:Z

    if-eqz v0, :cond_5

    move v0, v1

    :goto_5
    invoke-virtual {p0, v0}, Lorg/luaj/vm2/compiler/DumpState;->dumpInt(I)V

    :goto_6
    if-ge v1, v0, :cond_6

    iget-object v2, p1, Lorg/luaj/vm2/Prototype;->upvalues:[Lorg/luaj/vm2/Upvaldesc;

    aget-object v2, v2, v1

    iget-object v2, v2, Lorg/luaj/vm2/Upvaldesc;->name:Lorg/luaj/vm2/LuaString;

    invoke-virtual {p0, v2}, Lorg/luaj/vm2/compiler/DumpState;->dumpString(Lorg/luaj/vm2/LuaString;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_5
    iget-object v0, p1, Lorg/luaj/vm2/Prototype;->upvalues:[Lorg/luaj/vm2/Upvaldesc;

    array-length v0, v0

    goto :goto_5

    :cond_6
    return-void
.end method

.method dumpDouble(D)V
    .locals 3

    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    iget-boolean v2, p0, Lorg/luaj/vm2/compiler/DumpState;->a:Z

    if-eqz v2, :cond_0

    long-to-int v2, v0

    invoke-virtual {p0, v2}, Lorg/luaj/vm2/compiler/DumpState;->dumpInt(I)V

    const/16 v2, 0x20

    shr-long/2addr v0, v2

    long-to-int v0, v0

    invoke-virtual {p0, v0}, Lorg/luaj/vm2/compiler/DumpState;->dumpInt(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lorg/luaj/vm2/compiler/DumpState;->writer:Ljava/io/DataOutputStream;

    invoke-virtual {v2, v0, v1}, Ljava/io/DataOutputStream;->writeLong(J)V

    goto :goto_0
.end method

.method dumpFunction(Lorg/luaj/vm2/Prototype;)V
    .locals 1

    iget v0, p1, Lorg/luaj/vm2/Prototype;->linedefined:I

    invoke-virtual {p0, v0}, Lorg/luaj/vm2/compiler/DumpState;->dumpInt(I)V

    iget v0, p1, Lorg/luaj/vm2/Prototype;->lastlinedefined:I

    invoke-virtual {p0, v0}, Lorg/luaj/vm2/compiler/DumpState;->dumpInt(I)V

    iget v0, p1, Lorg/luaj/vm2/Prototype;->numparams:I

    invoke-virtual {p0, v0}, Lorg/luaj/vm2/compiler/DumpState;->dumpChar(I)V

    iget v0, p1, Lorg/luaj/vm2/Prototype;->is_vararg:I

    invoke-virtual {p0, v0}, Lorg/luaj/vm2/compiler/DumpState;->dumpChar(I)V

    iget v0, p1, Lorg/luaj/vm2/Prototype;->maxstacksize:I

    invoke-virtual {p0, v0}, Lorg/luaj/vm2/compiler/DumpState;->dumpChar(I)V

    invoke-virtual {p0, p1}, Lorg/luaj/vm2/compiler/DumpState;->dumpCode(Lorg/luaj/vm2/Prototype;)V

    invoke-virtual {p0, p1}, Lorg/luaj/vm2/compiler/DumpState;->dumpConstants(Lorg/luaj/vm2/Prototype;)V

    invoke-virtual {p0, p1}, Lorg/luaj/vm2/compiler/DumpState;->dumpUpvalues(Lorg/luaj/vm2/Prototype;)V

    invoke-virtual {p0, p1}, Lorg/luaj/vm2/compiler/DumpState;->dumpDebug(Lorg/luaj/vm2/Prototype;)V

    return-void
.end method

.method dumpHeader()V
    .locals 4

    const/4 v0, 0x0

    const/4 v3, 0x4

    iget-object v1, p0, Lorg/luaj/vm2/compiler/DumpState;->writer:Ljava/io/DataOutputStream;

    sget-object v2, Lorg/luaj/vm2/LoadState;->LUA_SIGNATURE:[B

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->write([B)V

    iget-object v1, p0, Lorg/luaj/vm2/compiler/DumpState;->writer:Ljava/io/DataOutputStream;

    const/16 v2, 0x52

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->write(I)V

    iget-object v1, p0, Lorg/luaj/vm2/compiler/DumpState;->writer:Ljava/io/DataOutputStream;

    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->write(I)V

    iget-object v1, p0, Lorg/luaj/vm2/compiler/DumpState;->writer:Ljava/io/DataOutputStream;

    iget-boolean v2, p0, Lorg/luaj/vm2/compiler/DumpState;->a:Z

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->write(I)V

    iget-object v0, p0, Lorg/luaj/vm2/compiler/DumpState;->writer:Ljava/io/DataOutputStream;

    invoke-virtual {v0, v3}, Ljava/io/DataOutputStream;->write(I)V

    iget-object v0, p0, Lorg/luaj/vm2/compiler/DumpState;->writer:Ljava/io/DataOutputStream;

    invoke-virtual {v0, v3}, Ljava/io/DataOutputStream;->write(I)V

    iget-object v0, p0, Lorg/luaj/vm2/compiler/DumpState;->writer:Ljava/io/DataOutputStream;

    invoke-virtual {v0, v3}, Ljava/io/DataOutputStream;->write(I)V

    iget-object v0, p0, Lorg/luaj/vm2/compiler/DumpState;->writer:Ljava/io/DataOutputStream;

    iget v1, p0, Lorg/luaj/vm2/compiler/DumpState;->c:I

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->write(I)V

    iget-object v0, p0, Lorg/luaj/vm2/compiler/DumpState;->writer:Ljava/io/DataOutputStream;

    iget v1, p0, Lorg/luaj/vm2/compiler/DumpState;->b:I

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->write(I)V

    iget-object v0, p0, Lorg/luaj/vm2/compiler/DumpState;->writer:Ljava/io/DataOutputStream;

    sget-object v1, Lorg/luaj/vm2/LoadState;->LUAC_TAIL:[B

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->write([B)V

    return-void
.end method

.method dumpInt(I)V
    .locals 2

    iget-boolean v0, p0, Lorg/luaj/vm2/compiler/DumpState;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/luaj/vm2/compiler/DumpState;->writer:Ljava/io/DataOutputStream;

    and-int/lit16 v1, p1, 0xff

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    iget-object v0, p0, Lorg/luaj/vm2/compiler/DumpState;->writer:Ljava/io/DataOutputStream;

    shr-int/lit8 v1, p1, 0x8

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    iget-object v0, p0, Lorg/luaj/vm2/compiler/DumpState;->writer:Ljava/io/DataOutputStream;

    shr-int/lit8 v1, p1, 0x10

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    iget-object v0, p0, Lorg/luaj/vm2/compiler/DumpState;->writer:Ljava/io/DataOutputStream;

    shr-int/lit8 v1, p1, 0x18

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lorg/luaj/vm2/compiler/DumpState;->writer:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeInt(I)V

    goto :goto_0
.end method

.method dumpString(Lorg/luaj/vm2/LuaString;)V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p1}, Lorg/luaj/vm2/LuaString;->len()Lorg/luaj/vm2/LuaValue;

    move-result-object v0

    invoke-virtual {v0}, Lorg/luaj/vm2/LuaValue;->toint()I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Lorg/luaj/vm2/compiler/DumpState;->dumpInt(I)V

    iget-object v1, p0, Lorg/luaj/vm2/compiler/DumpState;->writer:Ljava/io/DataOutputStream;

    invoke-virtual {p1, v1, v2, v0}, Lorg/luaj/vm2/LuaString;->write(Ljava/io/DataOutputStream;II)V

    iget-object v0, p0, Lorg/luaj/vm2/compiler/DumpState;->writer:Ljava/io/DataOutputStream;

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->write(I)V

    return-void
.end method

.method dumpUpvalues(Lorg/luaj/vm2/Prototype;)V
    .locals 5

    const/4 v1, 0x0

    iget-object v0, p1, Lorg/luaj/vm2/Prototype;->upvalues:[Lorg/luaj/vm2/Upvaldesc;

    array-length v3, v0

    invoke-virtual {p0, v3}, Lorg/luaj/vm2/compiler/DumpState;->dumpInt(I)V

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_1

    iget-object v4, p0, Lorg/luaj/vm2/compiler/DumpState;->writer:Ljava/io/DataOutputStream;

    iget-object v0, p1, Lorg/luaj/vm2/Prototype;->upvalues:[Lorg/luaj/vm2/Upvaldesc;

    aget-object v0, v0, v2

    iget-boolean v0, v0, Lorg/luaj/vm2/Upvaldesc;->instack:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v4, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    iget-object v0, p0, Lorg/luaj/vm2/compiler/DumpState;->writer:Ljava/io/DataOutputStream;

    iget-object v4, p1, Lorg/luaj/vm2/Prototype;->upvalues:[Lorg/luaj/vm2/Upvaldesc;

    aget-object v4, v4, v2

    iget-short v4, v4, Lorg/luaj/vm2/Upvaldesc;->idx:S

    invoke-virtual {v0, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    return-void
.end method
