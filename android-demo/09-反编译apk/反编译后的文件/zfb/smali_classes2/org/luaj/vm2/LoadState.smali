.class public Lorg/luaj/vm2/LoadState;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/luaj/vm2/Globals$Undumper;


# static fields
.field public static final LUAC_FORMAT:I = 0x0

.field public static final LUAC_HEADERSIZE:I = 0xc

.field public static final LUAC_TAIL:[B

.field public static final LUAC_VERSION:I = 0x52

.field public static final LUA_SIGNATURE:[B

.field public static final LUA_TBOOLEAN:I = 0x1

.field public static final LUA_TFUNCTION:I = 0x6

.field public static final LUA_TINT:I = -0x2

.field public static final LUA_TLIGHTUSERDATA:I = 0x2

.field public static final LUA_TNIL:I = 0x0

.field public static final LUA_TNONE:I = -0x1

.field public static final LUA_TNUMBER:I = 0x3

.field public static final LUA_TSTRING:I = 0x4

.field public static final LUA_TTABLE:I = 0x5

.field public static final LUA_TTHREAD:I = 0x8

.field public static final LUA_TUSERDATA:I = 0x7

.field public static final LUA_TVALUE:I = 0x9

.field public static final NUMBER_FORMAT_FLOATS_OR_DOUBLES:I = 0x0

.field public static final NUMBER_FORMAT_INTS_ONLY:I = 0x1

.field public static final NUMBER_FORMAT_NUM_PATCH_INT32:I = 0x4

.field public static final SOURCE_BINARY_STRING:Ljava/lang/String; = "binary string"

.field public static encoding:Ljava/lang/String;

.field private static final i:[Lorg/luaj/vm2/LuaValue;

.field public static final instance:Lorg/luaj/vm2/Globals$Undumper;

.field private static final j:[Lorg/luaj/vm2/Prototype;

.field private static final k:[Lorg/luaj/vm2/LocVars;

.field private static final l:[Lorg/luaj/vm2/LuaString;

.field private static final m:[Lorg/luaj/vm2/Upvaldesc;

.field private static final n:[I


# instance fields
.field private a:I

.field private b:I

.field private c:Z

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field public final is:Ljava/io/DataInputStream;

.field name:Ljava/lang/String;

.field private o:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    new-instance v0, Lorg/luaj/vm2/LoadState;

    invoke-direct {v0}, Lorg/luaj/vm2/LoadState;-><init>()V

    sput-object v0, Lorg/luaj/vm2/LoadState;->instance:Lorg/luaj/vm2/Globals$Undumper;

    const/4 v0, 0x0

    sput-object v0, Lorg/luaj/vm2/LoadState;->encoding:Ljava/lang/String;

    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/luaj/vm2/LoadState;->LUA_SIGNATURE:[B

    const/4 v0, 0x6

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lorg/luaj/vm2/LoadState;->LUAC_TAIL:[B

    new-array v0, v1, [Lorg/luaj/vm2/LuaValue;

    sput-object v0, Lorg/luaj/vm2/LoadState;->i:[Lorg/luaj/vm2/LuaValue;

    new-array v0, v1, [Lorg/luaj/vm2/Prototype;

    sput-object v0, Lorg/luaj/vm2/LoadState;->j:[Lorg/luaj/vm2/Prototype;

    new-array v0, v1, [Lorg/luaj/vm2/LocVars;

    sput-object v0, Lorg/luaj/vm2/LoadState;->k:[Lorg/luaj/vm2/LocVars;

    new-array v0, v1, [Lorg/luaj/vm2/LuaString;

    sput-object v0, Lorg/luaj/vm2/LoadState;->l:[Lorg/luaj/vm2/LuaString;

    new-array v0, v1, [Lorg/luaj/vm2/Upvaldesc;

    sput-object v0, Lorg/luaj/vm2/LoadState;->m:[Lorg/luaj/vm2/Upvaldesc;

    new-array v0, v1, [I

    sput-object v0, Lorg/luaj/vm2/LoadState;->n:[I

    return-void

    :array_0
    .array-data 1
        0x1bt
        0x4ct
        0x75t
        0x61t
    .end array-data

    :array_1
    .array-data 1
        0x19t
        -0x6dt
        0xdt
        0xat
        0x1at
        0xat
    .end array-data
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x200

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/luaj/vm2/LoadState;->o:[B

    const-string/jumbo v0, ""

    iput-object v0, p0, Lorg/luaj/vm2/LoadState;->name:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/luaj/vm2/LoadState;->is:Ljava/io/DataInputStream;

    return-void
.end method

.method private constructor <init>(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x200

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/luaj/vm2/LoadState;->o:[B

    iput-object p2, p0, Lorg/luaj/vm2/LoadState;->name:Ljava/lang/String;

    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lorg/luaj/vm2/LoadState;->is:Ljava/io/DataInputStream;

    return-void
.end method

.method public static getSourceName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "@"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "="

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_1
    :goto_0
    return-object p0

    :cond_2
    const-string/jumbo v0, "\u001b"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo p0, "binary string"

    goto :goto_0
.end method

.method public static install(Lorg/luaj/vm2/Globals;)V
    .locals 1

    sget-object v0, Lorg/luaj/vm2/LoadState;->instance:Lorg/luaj/vm2/Globals$Undumper;

    iput-object v0, p0, Lorg/luaj/vm2/Globals;->undumper:Lorg/luaj/vm2/Globals$Undumper;

    return-void
.end method

.method public static longBitsToLuaNumber(J)Lorg/luaj/vm2/LuaValue;
    .locals 10

    const-wide/16 v8, 0x1

    const-wide/16 v6, 0x0

    const-wide v0, 0x7fffffffffffffffL

    and-long/2addr v0, p0

    cmp-long v0, v0, v6

    if-nez v0, :cond_0

    sget-object v0, Lorg/luaj/vm2/LuaValue;->ZERO:Lorg/luaj/vm2/LuaNumber;

    :goto_0
    return-object v0

    :cond_0
    const/16 v0, 0x34

    shr-long v0, p0, v0

    const-wide/16 v2, 0x7ff

    and-long/2addr v0, v2

    long-to-int v0, v0

    add-int/lit16 v0, v0, -0x3ff

    if-ltz v0, :cond_2

    const/16 v1, 0x1f

    if-ge v0, v1, :cond_2

    const-wide v1, 0xfffffffffffffL

    and-long/2addr v1, p0

    rsub-int/lit8 v3, v0, 0x34

    shl-long v4, v8, v3

    sub-long/2addr v4, v8

    and-long/2addr v4, v1

    cmp-long v4, v4, v6

    if-nez v4, :cond_2

    shr-long/2addr v1, v3

    long-to-int v1, v1

    const/4 v2, 0x1

    shl-int v0, v2, v0

    or-int/2addr v0, v1

    const/16 v1, 0x3f

    shr-long v1, p0, v1

    cmp-long v1, v1, v6

    if-eqz v1, :cond_1

    neg-int v0, v0

    :cond_1
    invoke-static {v0}, Lorg/luaj/vm2/LuaInteger;->valueOf(I)Lorg/luaj/vm2/LuaInteger;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-static {p0, p1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/luaj/vm2/LuaValue;->valueOf(D)Lorg/luaj/vm2/LuaNumber;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method loadConstants(Lorg/luaj/vm2/Prototype;)V
    .locals 5

    const/4 v2, 0x0

    invoke-virtual {p0}, Lorg/luaj/vm2/LoadState;->loadInt()I

    move-result v4

    if-lez v4, :cond_0

    new-array v0, v4, [Lorg/luaj/vm2/LuaValue;

    :goto_0
    move v3, v2

    :goto_1
    if-ge v3, v4, :cond_2

    iget-object v1, p0, Lorg/luaj/vm2/LoadState;->is:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readByte()B

    move-result v1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "bad constant"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget-object v0, Lorg/luaj/vm2/LoadState;->i:[Lorg/luaj/vm2/LuaValue;

    goto :goto_0

    :pswitch_1
    sget-object v1, Lorg/luaj/vm2/LuaValue;->NIL:Lorg/luaj/vm2/LuaValue;

    aput-object v1, v0, v3

    :goto_2
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_1

    :pswitch_2
    iget-object v1, p0, Lorg/luaj/vm2/LoadState;->is:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lorg/luaj/vm2/LuaValue;->TRUE:Lorg/luaj/vm2/LuaBoolean;

    :goto_3
    aput-object v1, v0, v3

    goto :goto_2

    :cond_1
    sget-object v1, Lorg/luaj/vm2/LuaValue;->FALSE:Lorg/luaj/vm2/LuaBoolean;

    goto :goto_3

    :pswitch_3
    invoke-virtual {p0}, Lorg/luaj/vm2/LoadState;->loadInt()I

    move-result v1

    invoke-static {v1}, Lorg/luaj/vm2/LuaInteger;->valueOf(I)Lorg/luaj/vm2/LuaInteger;

    move-result-object v1

    aput-object v1, v0, v3

    goto :goto_2

    :pswitch_4
    invoke-virtual {p0}, Lorg/luaj/vm2/LoadState;->loadNumber()Lorg/luaj/vm2/LuaValue;

    move-result-object v1

    aput-object v1, v0, v3

    goto :goto_2

    :pswitch_5
    invoke-virtual {p0}, Lorg/luaj/vm2/LoadState;->loadString()Lorg/luaj/vm2/LuaString;

    move-result-object v1

    aput-object v1, v0, v3

    goto :goto_2

    :cond_2
    iput-object v0, p1, Lorg/luaj/vm2/Prototype;->k:[Lorg/luaj/vm2/LuaValue;

    invoke-virtual {p0}, Lorg/luaj/vm2/LoadState;->loadInt()I

    move-result v3

    if-lez v3, :cond_3

    new-array v0, v3, [Lorg/luaj/vm2/Prototype;

    :goto_4
    move v1, v2

    :goto_5
    if-ge v1, v3, :cond_4

    iget-object v2, p1, Lorg/luaj/vm2/Prototype;->source:Lorg/luaj/vm2/LuaString;

    invoke-virtual {p0, v2}, Lorg/luaj/vm2/LoadState;->loadFunction(Lorg/luaj/vm2/LuaString;)Lorg/luaj/vm2/Prototype;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_3
    sget-object v0, Lorg/luaj/vm2/LoadState;->j:[Lorg/luaj/vm2/Prototype;

    goto :goto_4

    :cond_4
    iput-object v0, p1, Lorg/luaj/vm2/Prototype;->p:[Lorg/luaj/vm2/Prototype;

    return-void

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method loadDebug(Lorg/luaj/vm2/Prototype;)V
    .locals 8

    const/4 v1, 0x0

    invoke-virtual {p0}, Lorg/luaj/vm2/LoadState;->loadString()Lorg/luaj/vm2/LuaString;

    move-result-object v0

    iput-object v0, p1, Lorg/luaj/vm2/Prototype;->source:Lorg/luaj/vm2/LuaString;

    invoke-virtual {p0}, Lorg/luaj/vm2/LoadState;->loadIntArray()[I

    move-result-object v0

    iput-object v0, p1, Lorg/luaj/vm2/Prototype;->lineinfo:[I

    invoke-virtual {p0}, Lorg/luaj/vm2/LoadState;->loadInt()I

    move-result v2

    if-lez v2, :cond_0

    new-array v0, v2, [Lorg/luaj/vm2/LocVars;

    :goto_0
    iput-object v0, p1, Lorg/luaj/vm2/Prototype;->locvars:[Lorg/luaj/vm2/LocVars;

    move v0, v1

    :goto_1
    if-ge v0, v2, :cond_1

    invoke-virtual {p0}, Lorg/luaj/vm2/LoadState;->loadString()Lorg/luaj/vm2/LuaString;

    move-result-object v3

    invoke-virtual {p0}, Lorg/luaj/vm2/LoadState;->loadInt()I

    move-result v4

    invoke-virtual {p0}, Lorg/luaj/vm2/LoadState;->loadInt()I

    move-result v5

    iget-object v6, p1, Lorg/luaj/vm2/Prototype;->locvars:[Lorg/luaj/vm2/LocVars;

    new-instance v7, Lorg/luaj/vm2/LocVars;

    invoke-direct {v7, v3, v4, v5}, Lorg/luaj/vm2/LocVars;-><init>(Lorg/luaj/vm2/LuaString;II)V

    aput-object v7, v6, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    sget-object v0, Lorg/luaj/vm2/LoadState;->k:[Lorg/luaj/vm2/LocVars;

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lorg/luaj/vm2/LoadState;->loadInt()I

    move-result v2

    move v0, v1

    :goto_2
    if-ge v0, v2, :cond_2

    iget-object v1, p1, Lorg/luaj/vm2/Prototype;->upvalues:[Lorg/luaj/vm2/Upvaldesc;

    aget-object v1, v1, v0

    invoke-virtual {p0}, Lorg/luaj/vm2/LoadState;->loadString()Lorg/luaj/vm2/LuaString;

    move-result-object v3

    iput-object v3, v1, Lorg/luaj/vm2/Upvaldesc;->name:Lorg/luaj/vm2/LuaString;

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public loadFunction(Lorg/luaj/vm2/LuaString;)Lorg/luaj/vm2/Prototype;
    .locals 2

    new-instance v0, Lorg/luaj/vm2/Prototype;

    invoke-direct {v0}, Lorg/luaj/vm2/Prototype;-><init>()V

    invoke-virtual {p0}, Lorg/luaj/vm2/LoadState;->loadInt()I

    move-result v1

    iput v1, v0, Lorg/luaj/vm2/Prototype;->linedefined:I

    invoke-virtual {p0}, Lorg/luaj/vm2/LoadState;->loadInt()I

    move-result v1

    iput v1, v0, Lorg/luaj/vm2/Prototype;->lastlinedefined:I

    iget-object v1, p0, Lorg/luaj/vm2/LoadState;->is:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v1

    iput v1, v0, Lorg/luaj/vm2/Prototype;->numparams:I

    iget-object v1, p0, Lorg/luaj/vm2/LoadState;->is:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v1

    iput v1, v0, Lorg/luaj/vm2/Prototype;->is_vararg:I

    iget-object v1, p0, Lorg/luaj/vm2/LoadState;->is:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v1

    iput v1, v0, Lorg/luaj/vm2/Prototype;->maxstacksize:I

    invoke-virtual {p0}, Lorg/luaj/vm2/LoadState;->loadIntArray()[I

    move-result-object v1

    iput-object v1, v0, Lorg/luaj/vm2/Prototype;->code:[I

    invoke-virtual {p0, v0}, Lorg/luaj/vm2/LoadState;->loadConstants(Lorg/luaj/vm2/Prototype;)V

    invoke-virtual {p0, v0}, Lorg/luaj/vm2/LoadState;->loadUpvalues(Lorg/luaj/vm2/Prototype;)V

    invoke-virtual {p0, v0}, Lorg/luaj/vm2/LoadState;->loadDebug(Lorg/luaj/vm2/Prototype;)V

    return-object v0
.end method

.method public loadHeader()V
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/luaj/vm2/LoadState;->is:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    iput v0, p0, Lorg/luaj/vm2/LoadState;->a:I

    iget-object v0, p0, Lorg/luaj/vm2/LoadState;->is:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    iput v0, p0, Lorg/luaj/vm2/LoadState;->b:I

    iget-object v0, p0, Lorg/luaj/vm2/LoadState;->is:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lorg/luaj/vm2/LoadState;->c:Z

    iget-object v0, p0, Lorg/luaj/vm2/LoadState;->is:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    iput v0, p0, Lorg/luaj/vm2/LoadState;->d:I

    iget-object v0, p0, Lorg/luaj/vm2/LoadState;->is:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    iput v0, p0, Lorg/luaj/vm2/LoadState;->e:I

    iget-object v0, p0, Lorg/luaj/vm2/LoadState;->is:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    iput v0, p0, Lorg/luaj/vm2/LoadState;->f:I

    iget-object v0, p0, Lorg/luaj/vm2/LoadState;->is:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    iput v0, p0, Lorg/luaj/vm2/LoadState;->g:I

    iget-object v0, p0, Lorg/luaj/vm2/LoadState;->is:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    iput v0, p0, Lorg/luaj/vm2/LoadState;->h:I

    :goto_1
    sget-object v0, Lorg/luaj/vm2/LoadState;->LUAC_TAIL:[B

    array-length v0, v0

    if-ge v1, v0, :cond_2

    iget-object v0, p0, Lorg/luaj/vm2/LoadState;->is:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    sget-object v2, Lorg/luaj/vm2/LoadState;->LUAC_TAIL:[B

    aget-byte v2, v2, v1

    if-eq v0, v2, :cond_1

    new-instance v0, Lorg/luaj/vm2/LuaError;

    new-instance v2, Ljava/lang/StringBuffer;

    const-string/jumbo v3, "Unexpeted byte in luac tail of header, index="

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/luaj/vm2/LuaError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method loadInt()I
    .locals 7

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lorg/luaj/vm2/LoadState;->is:Ljava/io/DataInputStream;

    iget-object v1, p0, Lorg/luaj/vm2/LoadState;->o:[B

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/DataInputStream;->readFully([BII)V

    iget-boolean v0, p0, Lorg/luaj/vm2/LoadState;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/luaj/vm2/LoadState;->o:[B

    aget-byte v0, v0, v6

    shl-int/lit8 v0, v0, 0x18

    iget-object v1, p0, Lorg/luaj/vm2/LoadState;->o:[B

    aget-byte v1, v1, v5

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    iget-object v1, p0, Lorg/luaj/vm2/LoadState;->o:[B

    aget-byte v1, v1, v4

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    iget-object v1, p0, Lorg/luaj/vm2/LoadState;->o:[B

    aget-byte v1, v1, v3

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/luaj/vm2/LoadState;->o:[B

    aget-byte v0, v0, v3

    shl-int/lit8 v0, v0, 0x18

    iget-object v1, p0, Lorg/luaj/vm2/LoadState;->o:[B

    aget-byte v1, v1, v4

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    iget-object v1, p0, Lorg/luaj/vm2/LoadState;->o:[B

    aget-byte v1, v1, v5

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    iget-object v1, p0, Lorg/luaj/vm2/LoadState;->o:[B

    aget-byte v1, v1, v6

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    goto :goto_0
.end method

.method loadInt64()J
    .locals 6

    iget-boolean v0, p0, Lorg/luaj/vm2/LoadState;->c:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/luaj/vm2/LoadState;->loadInt()I

    move-result v1

    invoke-virtual {p0}, Lorg/luaj/vm2/LoadState;->loadInt()I

    move-result v0

    :goto_0
    int-to-long v2, v0

    const/16 v0, 0x20

    shl-long/2addr v2, v0

    int-to-long v0, v1

    const-wide v4, 0xffffffffL

    and-long/2addr v0, v4

    or-long/2addr v0, v2

    return-wide v0

    :cond_0
    invoke-virtual {p0}, Lorg/luaj/vm2/LoadState;->loadInt()I

    move-result v0

    invoke-virtual {p0}, Lorg/luaj/vm2/LoadState;->loadInt()I

    move-result v1

    goto :goto_0
.end method

.method loadIntArray()[I
    .locals 7

    const/4 v0, 0x0

    invoke-virtual {p0}, Lorg/luaj/vm2/LoadState;->loadInt()I

    move-result v4

    if-nez v4, :cond_0

    sget-object v0, Lorg/luaj/vm2/LoadState;->n:[I

    :goto_0
    return-object v0

    :cond_0
    shl-int/lit8 v1, v4, 0x2

    iget-object v2, p0, Lorg/luaj/vm2/LoadState;->o:[B

    array-length v2, v2

    if-ge v2, v1, :cond_1

    new-array v2, v1, [B

    iput-object v2, p0, Lorg/luaj/vm2/LoadState;->o:[B

    :cond_1
    iget-object v2, p0, Lorg/luaj/vm2/LoadState;->is:Ljava/io/DataInputStream;

    iget-object v3, p0, Lorg/luaj/vm2/LoadState;->o:[B

    invoke-virtual {v2, v3, v0, v1}, Ljava/io/DataInputStream;->readFully([BII)V

    new-array v1, v4, [I

    move v2, v0

    move v3, v0

    :goto_1
    if-ge v3, v4, :cond_3

    iget-boolean v0, p0, Lorg/luaj/vm2/LoadState;->c:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/luaj/vm2/LoadState;->o:[B

    add-int/lit8 v5, v2, 0x3

    aget-byte v0, v0, v5

    shl-int/lit8 v0, v0, 0x18

    iget-object v5, p0, Lorg/luaj/vm2/LoadState;->o:[B

    add-int/lit8 v6, v2, 0x2

    aget-byte v5, v5, v6

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v0, v5

    iget-object v5, p0, Lorg/luaj/vm2/LoadState;->o:[B

    add-int/lit8 v6, v2, 0x1

    aget-byte v5, v5, v6

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v0, v5

    iget-object v5, p0, Lorg/luaj/vm2/LoadState;->o:[B

    add-int/lit8 v6, v2, 0x0

    aget-byte v5, v5, v6

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v0, v5

    :goto_2
    aput v0, v1, v3

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v0, v2, 0x4

    move v2, v0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lorg/luaj/vm2/LoadState;->o:[B

    add-int/lit8 v5, v2, 0x0

    aget-byte v0, v0, v5

    shl-int/lit8 v0, v0, 0x18

    iget-object v5, p0, Lorg/luaj/vm2/LoadState;->o:[B

    add-int/lit8 v6, v2, 0x1

    aget-byte v5, v5, v6

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v0, v5

    iget-object v5, p0, Lorg/luaj/vm2/LoadState;->o:[B

    add-int/lit8 v6, v2, 0x2

    aget-byte v5, v5, v6

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v0, v5

    iget-object v5, p0, Lorg/luaj/vm2/LoadState;->o:[B

    add-int/lit8 v6, v2, 0x3

    aget-byte v5, v5, v6

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v0, v5

    goto :goto_2

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method

.method loadNumber()Lorg/luaj/vm2/LuaValue;
    .locals 2

    iget v0, p0, Lorg/luaj/vm2/LoadState;->h:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lorg/luaj/vm2/LoadState;->loadInt()I

    move-result v0

    invoke-static {v0}, Lorg/luaj/vm2/LuaInteger;->valueOf(I)Lorg/luaj/vm2/LuaInteger;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/luaj/vm2/LoadState;->loadInt64()J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/luaj/vm2/LoadState;->longBitsToLuaNumber(J)Lorg/luaj/vm2/LuaValue;

    move-result-object v0

    goto :goto_0
.end method

.method loadString()Lorg/luaj/vm2/LuaString;
    .locals 4

    const/4 v3, 0x0

    iget v0, p0, Lorg/luaj/vm2/LoadState;->e:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lorg/luaj/vm2/LoadState;->loadInt64()J

    move-result-wide v0

    long-to-int v0, v0

    :goto_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_1
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/luaj/vm2/LoadState;->loadInt()I

    move-result v0

    goto :goto_0

    :cond_1
    new-array v1, v0, [B

    iget-object v2, p0, Lorg/luaj/vm2/LoadState;->is:Ljava/io/DataInputStream;

    invoke-virtual {v2, v1, v3, v0}, Ljava/io/DataInputStream;->readFully([BII)V

    array-length v0, v1

    add-int/lit8 v0, v0, -0x1

    invoke-static {v1, v3, v0}, Lorg/luaj/vm2/LuaString;->valueOf([BII)Lorg/luaj/vm2/LuaString;

    move-result-object v0

    goto :goto_1
.end method

.method loadUpvalues(Lorg/luaj/vm2/Prototype;)V
    .locals 8

    const/4 v1, 0x0

    invoke-virtual {p0}, Lorg/luaj/vm2/LoadState;->loadInt()I

    move-result v3

    if-lez v3, :cond_0

    new-array v0, v3, [Lorg/luaj/vm2/Upvaldesc;

    :goto_0
    iput-object v0, p1, Lorg/luaj/vm2/Prototype;->upvalues:[Lorg/luaj/vm2/Upvaldesc;

    move v2, v1

    :goto_1
    if-ge v2, v3, :cond_2

    iget-object v0, p0, Lorg/luaj/vm2/LoadState;->is:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_2
    iget-object v4, p0, Lorg/luaj/vm2/LoadState;->is:Ljava/io/DataInputStream;

    invoke-virtual {v4}, Ljava/io/DataInputStream;->readByte()B

    move-result v4

    and-int/lit16 v4, v4, 0xff

    iget-object v5, p1, Lorg/luaj/vm2/Prototype;->upvalues:[Lorg/luaj/vm2/Upvaldesc;

    new-instance v6, Lorg/luaj/vm2/Upvaldesc;

    const/4 v7, 0x0

    invoke-direct {v6, v7, v0, v4}, Lorg/luaj/vm2/Upvaldesc;-><init>(Lorg/luaj/vm2/LuaString;ZI)V

    aput-object v6, v5, v2

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_0
    sget-object v0, Lorg/luaj/vm2/LoadState;->m:[Lorg/luaj/vm2/Upvaldesc;

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public undump(Ljava/io/InputStream;Ljava/lang/String;)Lorg/luaj/vm2/Prototype;
    .locals 3

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    sget-object v1, Lorg/luaj/vm2/LoadState;->LUA_SIGNATURE:[B

    const/4 v2, 0x0

    aget-byte v1, v1, v2

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    sget-object v1, Lorg/luaj/vm2/LoadState;->LUA_SIGNATURE:[B

    const/4 v2, 0x1

    aget-byte v1, v1, v2

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    sget-object v1, Lorg/luaj/vm2/LoadState;->LUA_SIGNATURE:[B

    const/4 v2, 0x2

    aget-byte v1, v1, v2

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    sget-object v1, Lorg/luaj/vm2/LoadState;->LUA_SIGNATURE:[B

    const/4 v2, 0x3

    aget-byte v1, v1, v2

    if-eq v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    invoke-static {p2}, Lorg/luaj/vm2/LoadState;->getSourceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/luaj/vm2/LoadState;

    invoke-direct {v1, p1, v0}, Lorg/luaj/vm2/LoadState;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/luaj/vm2/LoadState;->loadHeader()V

    iget v2, v1, Lorg/luaj/vm2/LoadState;->h:I

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    new-instance v0, Lorg/luaj/vm2/LuaError;

    const-string/jumbo v1, "unsupported int size"

    invoke-direct {v0, v1}, Lorg/luaj/vm2/LuaError;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    invoke-static {v0}, Lorg/luaj/vm2/LuaString;->valueOf(Ljava/lang/String;)Lorg/luaj/vm2/LuaString;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/luaj/vm2/LoadState;->loadFunction(Lorg/luaj/vm2/LuaString;)Lorg/luaj/vm2/Prototype;

    move-result-object v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
