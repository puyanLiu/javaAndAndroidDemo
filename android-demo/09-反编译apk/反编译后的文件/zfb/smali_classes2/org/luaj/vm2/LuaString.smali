.class public Lorg/luaj/vm2/LuaString;
.super Lorg/luaj/vm2/LuaValue;


# static fields
.field public static final RECENT_STRINGS_CACHE_SIZE:I = 0x80

.field public static final RECENT_STRINGS_MAX_LENGTH:I = 0x20

.field public static s_metatable:Lorg/luaj/vm2/LuaValue;


# instance fields
.field public final m_bytes:[B

.field public final m_length:I

.field public final m_offset:I


# direct methods
.method private constructor <init>([BII)V
    .locals 0

    invoke-direct {p0}, Lorg/luaj/vm2/LuaValue;-><init>()V

    iput-object p1, p0, Lorg/luaj/vm2/LuaString;->m_bytes:[B

    iput p2, p0, Lorg/luaj/vm2/LuaString;->m_offset:I

    iput p3, p0, Lorg/luaj/vm2/LuaString;->m_length:I

    return-void
.end method

.method private a()D
    .locals 3

    invoke-virtual {p0}, Lorg/luaj/vm2/LuaString;->scannumber()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lorg/luaj/vm2/LuaString;->aritherror()Lorg/luaj/vm2/LuaValue;

    :cond_0
    return-wide v0
.end method

.method private a(II)D
    .locals 6

    const-wide/high16 v0, 0x7ff8000000000000L    # NaN

    add-int/lit8 v2, p1, 0x40

    if-le p2, v2, :cond_0

    add-int/lit8 p2, p1, 0x40

    :cond_0
    move v2, p1

    :goto_0
    if-ge v2, p2, :cond_1

    iget-object v3, p0, Lorg/luaj/vm2/LuaString;->m_bytes:[B

    aget-byte v3, v3, v2

    sparse-switch v3, :sswitch_data_0

    :goto_1
    return-wide v0

    :sswitch_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    sub-int v2, p2, p1

    new-array v3, v2, [C

    move v2, p1

    :goto_2
    if-ge v2, p2, :cond_2

    sub-int v4, v2, p1

    iget-object v5, p0, Lorg/luaj/vm2/LuaString;->m_bytes:[B

    aget-byte v5, v5, v2

    int-to-char v5, v5

    aput-char v5, v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    :try_start_0
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([C)V

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    goto :goto_1

    :catch_0
    move-exception v2

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x2b -> :sswitch_0
        0x2d -> :sswitch_0
        0x2e -> :sswitch_0
        0x30 -> :sswitch_0
        0x31 -> :sswitch_0
        0x32 -> :sswitch_0
        0x33 -> :sswitch_0
        0x34 -> :sswitch_0
        0x35 -> :sswitch_0
        0x36 -> :sswitch_0
        0x37 -> :sswitch_0
        0x38 -> :sswitch_0
        0x39 -> :sswitch_0
        0x45 -> :sswitch_0
        0x65 -> :sswitch_0
    .end sparse-switch
.end method

.method private a(III)D
    .locals 11

    const-wide/16 v6, 0x0

    const/16 v3, 0x30

    const-wide/high16 v0, 0x7ff8000000000000L    # NaN

    iget-object v2, p0, Lorg/luaj/vm2/LuaString;->m_bytes:[B

    aget-byte v2, v2, p2

    const/16 v4, 0x2d

    if-ne v2, v4, :cond_3

    const/4 v2, 0x1

    move v8, v2

    :goto_0
    if-eqz v8, :cond_0

    add-int/lit8 p2, p2, 0x1

    :cond_0
    move-wide v4, v6

    :goto_1
    if-ge p2, p3, :cond_7

    iget-object v2, p0, Lorg/luaj/vm2/LuaString;->m_bytes:[B

    aget-byte v9, v2, p2

    const/16 v2, 0xa

    if-le p1, v2, :cond_1

    iget-object v2, p0, Lorg/luaj/vm2/LuaString;->m_bytes:[B

    aget-byte v2, v2, p2

    if-lt v2, v3, :cond_4

    iget-object v2, p0, Lorg/luaj/vm2/LuaString;->m_bytes:[B

    aget-byte v2, v2, p2

    const/16 v10, 0x39

    if-gt v2, v10, :cond_4

    :cond_1
    move v2, v3

    :goto_2
    sub-int v2, v9, v2

    if-ltz v2, :cond_2

    if-lt v2, p1, :cond_6

    :cond_2
    :goto_3
    return-wide v0

    :cond_3
    const/4 v2, 0x0

    move v8, v2

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lorg/luaj/vm2/LuaString;->m_bytes:[B

    aget-byte v2, v2, p2

    const/16 v10, 0x41

    if-lt v2, v10, :cond_5

    iget-object v2, p0, Lorg/luaj/vm2/LuaString;->m_bytes:[B

    aget-byte v2, v2, p2

    const/16 v10, 0x5a

    if-gt v2, v10, :cond_5

    const/16 v2, 0x37

    goto :goto_2

    :cond_5
    const/16 v2, 0x57

    goto :goto_2

    :cond_6
    int-to-long v9, p1

    mul-long/2addr v4, v9

    int-to-long v9, v2

    add-long/2addr v4, v9

    cmp-long v2, v4, v6

    if-ltz v2, :cond_2

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_7
    if-eqz v8, :cond_8

    neg-long v0, v4

    long-to-double v0, v0

    goto :goto_3

    :cond_8
    long-to-double v0, v4

    goto :goto_3
.end method

.method public static decodeAsUtf8([BII)Ljava/lang/String;
    .locals 8

    const/4 v1, 0x0

    add-int v5, p1, p2

    move v2, v1

    move v3, p1

    :goto_0
    if-ge v3, v5, :cond_0

    add-int/lit8 v0, v3, 0x1

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xe0

    sparse-switch v3, :sswitch_data_0

    :goto_1
    add-int/lit8 v2, v2, 0x1

    move v3, v0

    goto :goto_0

    :sswitch_0
    add-int/lit8 v0, v0, 0x1

    :sswitch_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    new-array v6, v2, [C

    move v3, v1

    :goto_2
    if-ge p1, v5, :cond_5

    add-int/lit8 v4, v3, 0x1

    add-int/lit8 v2, p1, 0x1

    aget-byte v0, p0, p1

    if-gez v0, :cond_1

    if-lt v2, v5, :cond_2

    :cond_1
    move v1, v2

    :goto_3
    int-to-char v0, v0

    aput-char v0, v6, v3

    move v3, v4

    move p1, v1

    goto :goto_2

    :cond_2
    const/16 v1, -0x20

    if-lt v0, v1, :cond_3

    add-int/lit8 v1, v2, 0x1

    if-lt v1, v5, :cond_4

    :cond_3
    and-int/lit8 v0, v0, 0x3f

    shl-int/lit8 v0, v0, 0x6

    add-int/lit8 v1, v2, 0x1

    aget-byte v2, p0, v2

    and-int/lit8 v2, v2, 0x3f

    or-int/2addr v0, v2

    goto :goto_3

    :cond_4
    and-int/lit8 v0, v0, 0xf

    shl-int/lit8 v0, v0, 0xc

    add-int/lit8 v7, v2, 0x1

    aget-byte v1, p0, v2

    and-int/lit8 v1, v1, 0x3f

    shl-int/lit8 v1, v1, 0x6

    or-int/2addr v0, v1

    add-int/lit8 v1, v7, 0x1

    aget-byte v2, p0, v7

    and-int/lit8 v2, v2, 0x3f

    or-int/2addr v0, v2

    goto :goto_3

    :cond_5
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v6}, Ljava/lang/String;-><init>([C)V

    return-object v0

    :sswitch_data_0
    .sparse-switch
        0xc0 -> :sswitch_1
        0xe0 -> :sswitch_0
    .end sparse-switch
.end method

.method public static encodeToUtf8([CI[BI)I
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    move v2, p3

    :goto_0
    if-ge v1, p1, :cond_2

    aget-char v3, p0, v1

    const/16 v0, 0x80

    if-ge v3, v0, :cond_0

    add-int/lit8 v0, v2, 0x1

    int-to-byte v3, v3

    aput-byte v3, p2, v2

    :goto_1
    add-int/lit8 v1, v1, 0x1

    move v2, v0

    goto :goto_0

    :cond_0
    const/16 v0, 0x800

    if-ge v3, v0, :cond_1

    add-int/lit8 v4, v2, 0x1

    shr-int/lit8 v0, v3, 0x6

    and-int/lit8 v0, v0, 0x1f

    or-int/lit16 v0, v0, 0xc0

    int-to-byte v0, v0

    aput-byte v0, p2, v2

    add-int/lit8 v0, v4, 0x1

    and-int/lit8 v2, v3, 0x3f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    aput-byte v2, p2, v4

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v2, 0x1

    shr-int/lit8 v4, v3, 0xc

    and-int/lit8 v4, v4, 0xf

    or-int/lit16 v4, v4, 0xe0

    int-to-byte v4, v4

    aput-byte v4, p2, v2

    add-int/lit8 v2, v0, 0x1

    shr-int/lit8 v4, v3, 0x6

    and-int/lit8 v4, v4, 0x3f

    or-int/lit16 v4, v4, 0x80

    int-to-byte v4, v4

    aput-byte v4, p2, v0

    add-int/lit8 v0, v2, 0x1

    and-int/lit8 v3, v3, 0x3f

    or-int/lit16 v3, v3, 0x80

    int-to-byte v3, v3

    aput-byte v3, p2, v2

    goto :goto_1

    :cond_2
    sub-int v0, v2, p3

    return v0
.end method

.method public static equals(Lorg/luaj/vm2/LuaString;ILorg/luaj/vm2/LuaString;II)Z
    .locals 4

    iget-object v0, p0, Lorg/luaj/vm2/LuaString;->m_bytes:[B

    iget v1, p0, Lorg/luaj/vm2/LuaString;->m_offset:I

    add-int/2addr v1, p1

    iget-object v2, p2, Lorg/luaj/vm2/LuaString;->m_bytes:[B

    iget v3, p2, Lorg/luaj/vm2/LuaString;->m_offset:I

    add-int/2addr v3, p3

    invoke-static {v0, v1, v2, v3, p4}, Lorg/luaj/vm2/LuaString;->equals([BI[BII)Z

    move-result v0

    return v0
.end method

.method public static equals([BI[BII)Z
    .locals 5

    const/4 v0, 0x0

    array-length v1, p0

    add-int v2, p1, p4

    if-lt v1, v2, :cond_0

    array-length v1, p2

    add-int v2, p3, p4

    if-ge v1, v2, :cond_2

    :cond_0
    :goto_0
    return v0

    :cond_1
    move p3, v1

    move p1, v2

    :cond_2
    add-int/lit8 p4, p4, -0x1

    if-ltz p4, :cond_3

    add-int/lit8 v2, p1, 0x1

    aget-byte v3, p0, p1

    add-int/lit8 v1, p3, 0x1

    aget-byte v4, p2, p3

    if-eq v3, v4, :cond_1

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static lengthAsUtf8([C)I
    .locals 4

    array-length v0, p0

    move v1, v0

    :goto_0
    add-int/lit8 v2, v0, -0x1

    if-ltz v2, :cond_1

    aget-char v0, p0, v2

    const/16 v3, 0x80

    if-lt v0, v3, :cond_2

    const/16 v3, 0x800

    if-lt v0, v3, :cond_0

    const/4 v0, 0x2

    :goto_1
    add-int/2addr v0, v1

    move v1, v0

    move v0, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    return v1

    :cond_2
    move v0, v2

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/luaj/vm2/LuaString;
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-static {v0}, Lorg/luaj/vm2/LuaString;->lengthAsUtf8([C)I

    move-result v1

    new-array v1, v1, [B

    array-length v2, v0

    invoke-static {v0, v2, v1, v3}, Lorg/luaj/vm2/LuaString;->encodeToUtf8([CI[BI)I

    array-length v0, v1

    invoke-static {v1, v3, v0}, Lorg/luaj/vm2/LuaString;->valueOf([BII)Lorg/luaj/vm2/LuaString;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf([B)Lorg/luaj/vm2/LuaString;
    .locals 2

    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lorg/luaj/vm2/LuaString;->valueOf([BII)Lorg/luaj/vm2/LuaString;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf([BII)Lorg/luaj/vm2/LuaString;
    .locals 3

    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    const/16 v2, 0x20

    if-ge v1, v2, :cond_0

    new-instance v0, Lorg/luaj/vm2/LuaString;

    invoke-direct {v0, p0, p1, p2}, Lorg/luaj/vm2/LuaString;-><init>([BII)V

    sget-object v1, Lorg/luaj/vm2/LuaString$Cache;->instance:Lorg/luaj/vm2/LuaString$Cache;

    invoke-virtual {v1, v0}, Lorg/luaj/vm2/LuaString$Cache;->get(Lorg/luaj/vm2/LuaString;)Lorg/luaj/vm2/LuaString;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    array-length v1, p0

    div-int/lit8 v1, v1, 0x2

    if-lt p2, v1, :cond_1

    new-instance v0, Lorg/luaj/vm2/LuaString;

    invoke-direct {v0, p0, p1, p2}, Lorg/luaj/vm2/LuaString;-><init>([BII)V

    goto :goto_1

    :cond_1
    new-array v1, p2, [B

    invoke-static {p0, p1, v1, v0, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move p1, v0

    move-object p0, v1

    goto :goto_0
.end method

.method public static valueOf([C)Lorg/luaj/vm2/LuaString;
    .locals 2

    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lorg/luaj/vm2/LuaString;->valueOf([CII)Lorg/luaj/vm2/LuaString;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf([CII)Lorg/luaj/vm2/LuaString;
    .locals 4

    const/4 v1, 0x0

    new-array v2, p2, [B

    move v0, v1

    :goto_0
    if-ge v0, p2, :cond_0

    add-int v3, v0, p1

    aget-char v3, p0, v3

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v2, v1, p2}, Lorg/luaj/vm2/LuaString;->valueOf([BII)Lorg/luaj/vm2/LuaString;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public add(D)Lorg/luaj/vm2/LuaValue;
    .locals 2

    invoke-direct {p0}, Lorg/luaj/vm2/LuaString;->a()D

    move-result-wide v0

    add-double/2addr v0, p1

    invoke-static {v0, v1}, Lorg/luaj/vm2/LuaString;->valueOf(D)Lorg/luaj/vm2/LuaNumber;

    move-result-object v0

    return-object v0
.end method

.method public add(I)Lorg/luaj/vm2/LuaValue;
    .locals 4

    invoke-direct {p0}, Lorg/luaj/vm2/LuaString;->a()D

    move-result-wide v0

    int-to-double v2, p1

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Lorg/luaj/vm2/LuaString;->valueOf(D)Lorg/luaj/vm2/LuaNumber;

    move-result-object v0

    return-object v0
.end method

.method public add(Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/LuaValue;
    .locals 3

    invoke-virtual {p0}, Lorg/luaj/vm2/LuaString;->scannumber()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v0, Lorg/luaj/vm2/LuaString;->ADD:Lorg/luaj/vm2/LuaString;

    invoke-virtual {p0, v0, p1}, Lorg/luaj/vm2/LuaString;->arithmt(Lorg/luaj/vm2/LuaValue;Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/LuaValue;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1, v0, v1}, Lorg/luaj/vm2/LuaValue;->add(D)Lorg/luaj/vm2/LuaValue;

    move-result-object v0

    goto :goto_0
.end method

.method public charAt(I)I
    .locals 1

    if-ltz p1, :cond_0

    iget v0, p0, Lorg/luaj/vm2/LuaString;->m_length:I

    if-lt p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_1
    invoke-virtual {p0, p1}, Lorg/luaj/vm2/LuaString;->luaByte(I)I

    move-result v0

    return v0
.end method

.method public checkdouble()D
    .locals 3

    invoke-virtual {p0}, Lorg/luaj/vm2/LuaString;->scannumber()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "number"

    invoke-virtual {p0, v2}, Lorg/luaj/vm2/LuaString;->argerror(Ljava/lang/String;)Lorg/luaj/vm2/LuaValue;

    :cond_0
    return-wide v0
.end method

.method public checkint()I
    .locals 2

    invoke-virtual {p0}, Lorg/luaj/vm2/LuaString;->checkdouble()D

    move-result-wide v0

    double-to-long v0, v0

    long-to-int v0, v0

    return v0
.end method

.method public checkinteger()Lorg/luaj/vm2/LuaInteger;
    .locals 1

    invoke-virtual {p0}, Lorg/luaj/vm2/LuaString;->checkint()I

    move-result v0

    invoke-static {v0}, Lorg/luaj/vm2/LuaString;->valueOf(I)Lorg/luaj/vm2/LuaInteger;

    move-result-object v0

    return-object v0
.end method

.method public checkjstring()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lorg/luaj/vm2/LuaString;->tojstring()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public checklong()J
    .locals 2

    invoke-virtual {p0}, Lorg/luaj/vm2/LuaString;->checkdouble()D

    move-result-wide v0

    double-to-long v0, v0

    return-wide v0
.end method

.method public checknumber()Lorg/luaj/vm2/LuaNumber;
    .locals 2

    invoke-virtual {p0}, Lorg/luaj/vm2/LuaString;->checkdouble()D

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/luaj/vm2/LuaString;->valueOf(D)Lorg/luaj/vm2/LuaNumber;

    move-result-object v0

    return-object v0
.end method

.method public checknumber(Ljava/lang/String;)Lorg/luaj/vm2/LuaNumber;
    .locals 3

    invoke-virtual {p0}, Lorg/luaj/vm2/LuaString;->scannumber()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p1}, Lorg/luaj/vm2/LuaString;->error(Ljava/lang/String;)Lorg/luaj/vm2/LuaValue;

    :cond_0
    invoke-static {v0, v1}, Lorg/luaj/vm2/LuaString;->valueOf(D)Lorg/luaj/vm2/LuaNumber;

    move-result-object v0

    return-object v0
.end method

.method public checkstring()Lorg/luaj/vm2/LuaString;
    .locals 0

    return-object p0
.end method

.method public concat(Lorg/luaj/vm2/Buffer;)Lorg/luaj/vm2/Buffer;
    .locals 1

    invoke-virtual {p1, p0}, Lorg/luaj/vm2/Buffer;->concatTo(Lorg/luaj/vm2/LuaString;)Lorg/luaj/vm2/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public concat(Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/LuaValue;
    .locals 1

    invoke-virtual {p1, p0}, Lorg/luaj/vm2/LuaValue;->concatTo(Lorg/luaj/vm2/LuaString;)Lorg/luaj/vm2/LuaValue;

    move-result-object v0

    return-object v0
.end method

.method public concatTo(Lorg/luaj/vm2/LuaNumber;)Lorg/luaj/vm2/LuaValue;
    .locals 1

    invoke-virtual {p1}, Lorg/luaj/vm2/LuaNumber;->strvalue()Lorg/luaj/vm2/LuaString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/luaj/vm2/LuaString;->concatTo(Lorg/luaj/vm2/LuaString;)Lorg/luaj/vm2/LuaValue;

    move-result-object v0

    return-object v0
.end method

.method public concatTo(Lorg/luaj/vm2/LuaString;)Lorg/luaj/vm2/LuaValue;
    .locals 6

    const/4 v5, 0x0

    iget v0, p1, Lorg/luaj/vm2/LuaString;->m_length:I

    iget v1, p0, Lorg/luaj/vm2/LuaString;->m_length:I

    add-int/2addr v0, v1

    new-array v0, v0, [B

    iget-object v1, p1, Lorg/luaj/vm2/LuaString;->m_bytes:[B

    iget v2, p1, Lorg/luaj/vm2/LuaString;->m_offset:I

    iget v3, p1, Lorg/luaj/vm2/LuaString;->m_length:I

    invoke-static {v1, v2, v0, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lorg/luaj/vm2/LuaString;->m_bytes:[B

    iget v2, p0, Lorg/luaj/vm2/LuaString;->m_offset:I

    iget v3, p1, Lorg/luaj/vm2/LuaString;->m_length:I

    iget v4, p0, Lorg/luaj/vm2/LuaString;->m_length:I

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v1, v0

    invoke-static {v0, v5, v1}, Lorg/luaj/vm2/LuaString;->valueOf([BII)Lorg/luaj/vm2/LuaString;

    move-result-object v0

    return-object v0
.end method

.method public copyInto(I[BII)V
    .locals 2

    iget-object v0, p0, Lorg/luaj/vm2/LuaString;->m_bytes:[B

    iget v1, p0, Lorg/luaj/vm2/LuaString;->m_offset:I

    add-int/2addr v1, p1

    invoke-static {v0, v1, p2, p3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public div(D)Lorg/luaj/vm2/LuaValue;
    .locals 2

    invoke-direct {p0}, Lorg/luaj/vm2/LuaString;->a()D

    move-result-wide v0

    invoke-static {v0, v1, p1, p2}, Lorg/luaj/vm2/LuaDouble;->ddiv(DD)Lorg/luaj/vm2/LuaValue;

    move-result-object v0

    return-object v0
.end method

.method public div(I)Lorg/luaj/vm2/LuaValue;
    .locals 4

    invoke-direct {p0}, Lorg/luaj/vm2/LuaString;->a()D

    move-result-wide v0

    int-to-double v2, p1

    invoke-static {v0, v1, v2, v3}, Lorg/luaj/vm2/LuaDouble;->ddiv(DD)Lorg/luaj/vm2/LuaValue;

    move-result-object v0

    return-object v0
.end method

.method public div(Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/LuaValue;
    .locals 3

    invoke-virtual {p0}, Lorg/luaj/vm2/LuaString;->scannumber()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v0, Lorg/luaj/vm2/LuaString;->DIV:Lorg/luaj/vm2/LuaString;

    invoke-virtual {p0, v0, p1}, Lorg/luaj/vm2/LuaString;->arithmt(Lorg/luaj/vm2/LuaValue;Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/LuaValue;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1, v0, v1}, Lorg/luaj/vm2/LuaValue;->divInto(D)Lorg/luaj/vm2/LuaValue;

    move-result-object v0

    goto :goto_0
.end method

.method public divInto(D)Lorg/luaj/vm2/LuaValue;
    .locals 2

    invoke-direct {p0}, Lorg/luaj/vm2/LuaString;->a()D

    move-result-wide v0

    invoke-static {p1, p2, v0, v1}, Lorg/luaj/vm2/LuaDouble;->ddiv(DD)Lorg/luaj/vm2/LuaValue;

    move-result-object v0

    return-object v0
.end method

.method public eq(Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/LuaValue;
    .locals 1

    invoke-virtual {p1, p0}, Lorg/luaj/vm2/LuaValue;->raweq(Lorg/luaj/vm2/LuaString;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/luaj/vm2/LuaString;->TRUE:Lorg/luaj/vm2/LuaBoolean;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lorg/luaj/vm2/LuaString;->FALSE:Lorg/luaj/vm2/LuaBoolean;

    goto :goto_0
.end method

.method public eq_b(Lorg/luaj/vm2/LuaValue;)Z
    .locals 1

    invoke-virtual {p1, p0}, Lorg/luaj/vm2/LuaValue;->raweq(Lorg/luaj/vm2/LuaString;)Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lorg/luaj/vm2/LuaString;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/luaj/vm2/LuaString;

    invoke-virtual {p0, p1}, Lorg/luaj/vm2/LuaString;->raweq(Lorg/luaj/vm2/LuaString;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public get(Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/LuaValue;
    .locals 1

    sget-object v0, Lorg/luaj/vm2/LuaString;->s_metatable:Lorg/luaj/vm2/LuaValue;

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Lorg/luaj/vm2/LuaString;->gettable(Lorg/luaj/vm2/LuaValue;Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/LuaValue;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lorg/luaj/vm2/lib/StringLib;->instance:Lorg/luaj/vm2/LuaTable;

    invoke-virtual {v0, p1}, Lorg/luaj/vm2/LuaTable;->get(Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/LuaValue;

    move-result-object v0

    goto :goto_0
.end method

.method public getmetatable()Lorg/luaj/vm2/LuaValue;
    .locals 1

    sget-object v0, Lorg/luaj/vm2/LuaString;->s_metatable:Lorg/luaj/vm2/LuaValue;

    return-object v0
.end method

.method public gt(Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/LuaValue;
    .locals 1

    invoke-virtual {p1, p0}, Lorg/luaj/vm2/LuaValue;->strcmp(Lorg/luaj/vm2/LuaString;)I

    move-result v0

    if-gez v0, :cond_0

    sget-object v0, Lorg/luaj/vm2/LuaValue;->TRUE:Lorg/luaj/vm2/LuaBoolean;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lorg/luaj/vm2/LuaString;->FALSE:Lorg/luaj/vm2/LuaBoolean;

    goto :goto_0
.end method

.method public gt_b(D)Z
    .locals 1

    const-string/jumbo v0, "attempt to compare string with number"

    invoke-virtual {p0, v0}, Lorg/luaj/vm2/LuaString;->typerror(Ljava/lang/String;)Lorg/luaj/vm2/LuaValue;

    const/4 v0, 0x0

    return v0
.end method

.method public gt_b(I)Z
    .locals 1

    const-string/jumbo v0, "attempt to compare string with number"

    invoke-virtual {p0, v0}, Lorg/luaj/vm2/LuaString;->typerror(Ljava/lang/String;)Lorg/luaj/vm2/LuaValue;

    const/4 v0, 0x0

    return v0
.end method

.method public gt_b(Lorg/luaj/vm2/LuaValue;)Z
    .locals 1

    invoke-virtual {p1, p0}, Lorg/luaj/vm2/LuaValue;->strcmp(Lorg/luaj/vm2/LuaString;)I

    move-result v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public gteq(Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/LuaValue;
    .locals 1

    invoke-virtual {p1, p0}, Lorg/luaj/vm2/LuaValue;->strcmp(Lorg/luaj/vm2/LuaString;)I

    move-result v0

    if-gtz v0, :cond_0

    sget-object v0, Lorg/luaj/vm2/LuaValue;->TRUE:Lorg/luaj/vm2/LuaBoolean;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lorg/luaj/vm2/LuaString;->FALSE:Lorg/luaj/vm2/LuaBoolean;

    goto :goto_0
.end method

.method public gteq_b(D)Z
    .locals 1

    const-string/jumbo v0, "attempt to compare string with number"

    invoke-virtual {p0, v0}, Lorg/luaj/vm2/LuaString;->typerror(Ljava/lang/String;)Lorg/luaj/vm2/LuaValue;

    const/4 v0, 0x0

    return v0
.end method

.method public gteq_b(I)Z
    .locals 1

    const-string/jumbo v0, "attempt to compare string with number"

    invoke-virtual {p0, v0}, Lorg/luaj/vm2/LuaString;->typerror(Ljava/lang/String;)Lorg/luaj/vm2/LuaValue;

    const/4 v0, 0x0

    return v0
.end method

.method public gteq_b(Lorg/luaj/vm2/LuaValue;)Z
    .locals 1

    invoke-virtual {p1, p0}, Lorg/luaj/vm2/LuaValue;->strcmp(Lorg/luaj/vm2/LuaString;)I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 6

    iget v1, p0, Lorg/luaj/vm2/LuaString;->m_length:I

    iget v0, p0, Lorg/luaj/vm2/LuaString;->m_length:I

    shr-int/lit8 v0, v0, 0x5

    add-int/lit8 v2, v0, 0x1

    iget v0, p0, Lorg/luaj/vm2/LuaString;->m_length:I

    :goto_0
    if-lt v0, v2, :cond_0

    shl-int/lit8 v3, v1, 0x5

    shr-int/lit8 v4, v1, 0x2

    add-int/2addr v3, v4

    iget-object v4, p0, Lorg/luaj/vm2/LuaString;->m_bytes:[B

    iget v5, p0, Lorg/luaj/vm2/LuaString;->m_offset:I

    add-int/2addr v5, v0

    add-int/lit8 v5, v5, -0x1

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    add-int/2addr v3, v4

    xor-int/2addr v1, v3

    sub-int/2addr v0, v2

    goto :goto_0

    :cond_0
    return v1
.end method

.method public indexOf(BI)I
    .locals 2

    :goto_0
    iget v0, p0, Lorg/luaj/vm2/LuaString;->m_length:I

    if-ge p2, v0, :cond_1

    iget-object v0, p0, Lorg/luaj/vm2/LuaString;->m_bytes:[B

    iget v1, p0, Lorg/luaj/vm2/LuaString;->m_offset:I

    add-int/2addr v1, p2

    aget-byte v0, v0, v1

    if-ne v0, p1, :cond_0

    :goto_1
    return p2

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, -0x1

    goto :goto_1
.end method

.method public indexOf(Lorg/luaj/vm2/LuaString;I)I
    .locals 7

    invoke-virtual {p1}, Lorg/luaj/vm2/LuaString;->length()I

    move-result v1

    iget v0, p0, Lorg/luaj/vm2/LuaString;->m_length:I

    sub-int v2, v0, v1

    move v0, p2

    :goto_0
    if-gt v0, v2, :cond_1

    iget-object v3, p0, Lorg/luaj/vm2/LuaString;->m_bytes:[B

    iget v4, p0, Lorg/luaj/vm2/LuaString;->m_offset:I

    add-int/2addr v4, v0

    iget-object v5, p1, Lorg/luaj/vm2/LuaString;->m_bytes:[B

    iget v6, p1, Lorg/luaj/vm2/LuaString;->m_offset:I

    invoke-static {v3, v4, v5, v6, v1}, Lorg/luaj/vm2/LuaString;->equals([BI[BII)Z

    move-result v3

    if-eqz v3, :cond_0

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public indexOfAny(Lorg/luaj/vm2/LuaString;)I
    .locals 6

    iget v0, p0, Lorg/luaj/vm2/LuaString;->m_offset:I

    iget v1, p0, Lorg/luaj/vm2/LuaString;->m_length:I

    add-int v2, v0, v1

    iget v0, p1, Lorg/luaj/vm2/LuaString;->m_offset:I

    iget v1, p1, Lorg/luaj/vm2/LuaString;->m_length:I

    add-int v3, v0, v1

    iget v0, p0, Lorg/luaj/vm2/LuaString;->m_offset:I

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_2

    iget v0, p1, Lorg/luaj/vm2/LuaString;->m_offset:I

    :goto_1
    if-ge v0, v3, :cond_1

    iget-object v4, p0, Lorg/luaj/vm2/LuaString;->m_bytes:[B

    aget-byte v4, v4, v1

    iget-object v5, p1, Lorg/luaj/vm2/LuaString;->m_bytes:[B

    aget-byte v5, v5, v0

    if-ne v4, v5, :cond_0

    iget v0, p0, Lorg/luaj/vm2/LuaString;->m_offset:I

    sub-int v0, v1, v0

    :goto_2
    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    const/4 v0, -0x1

    goto :goto_2
.end method

.method public isValidUtf8()Z
    .locals 6

    const/16 v5, 0x80

    iget v0, p0, Lorg/luaj/vm2/LuaString;->m_offset:I

    iget v1, p0, Lorg/luaj/vm2/LuaString;->m_offset:I

    iget v2, p0, Lorg/luaj/vm2/LuaString;->m_length:I

    add-int/2addr v2, v1

    :cond_0
    :goto_0
    if-ge v0, v2, :cond_3

    iget-object v3, p0, Lorg/luaj/vm2/LuaString;->m_bytes:[B

    add-int/lit8 v1, v0, 0x1

    aget-byte v3, v3, v0

    if-gez v3, :cond_4

    and-int/lit16 v0, v3, 0xe0

    const/16 v4, 0xc0

    if-ne v0, v4, :cond_1

    if-ge v1, v2, :cond_1

    iget-object v4, p0, Lorg/luaj/vm2/LuaString;->m_bytes:[B

    add-int/lit8 v0, v1, 0x1

    aget-byte v1, v4, v1

    and-int/lit16 v1, v1, 0xc0

    if-eq v1, v5, :cond_0

    move v1, v0

    :cond_1
    and-int/lit16 v0, v3, 0xf0

    const/16 v3, 0xe0

    if-ne v0, v3, :cond_2

    add-int/lit8 v0, v1, 0x1

    if-ge v0, v2, :cond_2

    iget-object v0, p0, Lorg/luaj/vm2/LuaString;->m_bytes:[B

    add-int/lit8 v3, v1, 0x1

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xc0

    if-ne v0, v5, :cond_2

    iget-object v1, p0, Lorg/luaj/vm2/LuaString;->m_bytes:[B

    add-int/lit8 v0, v3, 0x1

    aget-byte v1, v1, v3

    and-int/lit16 v1, v1, 0xc0

    if-eq v1, v5, :cond_0

    :cond_2
    const/4 v0, 0x0

    :goto_1
    return v0

    :cond_3
    const/4 v0, 0x1

    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public isint()Z
    .locals 5

    const/4 v0, 0x0

    invoke-virtual {p0}, Lorg/luaj/vm2/LuaString;->scannumber()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    double-to-int v3, v1

    int-to-double v3, v3

    cmpl-double v1, v3, v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public islong()Z
    .locals 5

    const/4 v0, 0x0

    invoke-virtual {p0}, Lorg/luaj/vm2/LuaString;->scannumber()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    double-to-long v3, v1

    long-to-double v3, v3

    cmpl-double v1, v3, v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isnumber()Z
    .locals 2

    invoke-virtual {p0}, Lorg/luaj/vm2/LuaString;->scannumber()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isstring()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public lastIndexOf(Lorg/luaj/vm2/LuaString;)I
    .locals 6

    invoke-virtual {p1}, Lorg/luaj/vm2/LuaString;->length()I

    move-result v1

    iget v0, p0, Lorg/luaj/vm2/LuaString;->m_length:I

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v2, p0, Lorg/luaj/vm2/LuaString;->m_bytes:[B

    iget v3, p0, Lorg/luaj/vm2/LuaString;->m_offset:I

    add-int/2addr v3, v0

    iget-object v4, p1, Lorg/luaj/vm2/LuaString;->m_bytes:[B

    iget v5, p1, Lorg/luaj/vm2/LuaString;->m_offset:I

    invoke-static {v2, v3, v4, v5, v1}, Lorg/luaj/vm2/LuaString;->equals([BI[BII)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public len()Lorg/luaj/vm2/LuaValue;
    .locals 1

    iget v0, p0, Lorg/luaj/vm2/LuaString;->m_length:I

    invoke-static {v0}, Lorg/luaj/vm2/LuaInteger;->valueOf(I)Lorg/luaj/vm2/LuaInteger;

    move-result-object v0

    return-object v0
.end method

.method public length()I
    .locals 1

    iget v0, p0, Lorg/luaj/vm2/LuaString;->m_length:I

    return v0
.end method

.method public lt(Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/LuaValue;
    .locals 1

    invoke-virtual {p1, p0}, Lorg/luaj/vm2/LuaValue;->strcmp(Lorg/luaj/vm2/LuaString;)I

    move-result v0

    if-lez v0, :cond_0

    sget-object v0, Lorg/luaj/vm2/LuaValue;->TRUE:Lorg/luaj/vm2/LuaBoolean;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lorg/luaj/vm2/LuaString;->FALSE:Lorg/luaj/vm2/LuaBoolean;

    goto :goto_0
.end method

.method public lt_b(D)Z
    .locals 1

    const-string/jumbo v0, "attempt to compare string with number"

    invoke-virtual {p0, v0}, Lorg/luaj/vm2/LuaString;->typerror(Ljava/lang/String;)Lorg/luaj/vm2/LuaValue;

    const/4 v0, 0x0

    return v0
.end method

.method public lt_b(I)Z
    .locals 1

    const-string/jumbo v0, "attempt to compare string with number"

    invoke-virtual {p0, v0}, Lorg/luaj/vm2/LuaString;->typerror(Ljava/lang/String;)Lorg/luaj/vm2/LuaValue;

    const/4 v0, 0x0

    return v0
.end method

.method public lt_b(Lorg/luaj/vm2/LuaValue;)Z
    .locals 1

    invoke-virtual {p1, p0}, Lorg/luaj/vm2/LuaValue;->strcmp(Lorg/luaj/vm2/LuaString;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public lteq(Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/LuaValue;
    .locals 1

    invoke-virtual {p1, p0}, Lorg/luaj/vm2/LuaValue;->strcmp(Lorg/luaj/vm2/LuaString;)I

    move-result v0

    if-ltz v0, :cond_0

    sget-object v0, Lorg/luaj/vm2/LuaValue;->TRUE:Lorg/luaj/vm2/LuaBoolean;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lorg/luaj/vm2/LuaString;->FALSE:Lorg/luaj/vm2/LuaBoolean;

    goto :goto_0
.end method

.method public lteq_b(D)Z
    .locals 1

    const-string/jumbo v0, "attempt to compare string with number"

    invoke-virtual {p0, v0}, Lorg/luaj/vm2/LuaString;->typerror(Ljava/lang/String;)Lorg/luaj/vm2/LuaValue;

    const/4 v0, 0x0

    return v0
.end method

.method public lteq_b(I)Z
    .locals 1

    const-string/jumbo v0, "attempt to compare string with number"

    invoke-virtual {p0, v0}, Lorg/luaj/vm2/LuaString;->typerror(Ljava/lang/String;)Lorg/luaj/vm2/LuaValue;

    const/4 v0, 0x0

    return v0
.end method

.method public lteq_b(Lorg/luaj/vm2/LuaValue;)Z
    .locals 1

    invoke-virtual {p1, p0}, Lorg/luaj/vm2/LuaValue;->strcmp(Lorg/luaj/vm2/LuaString;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public luaByte(I)I
    .locals 2

    iget-object v0, p0, Lorg/luaj/vm2/LuaString;->m_bytes:[B

    iget v1, p0, Lorg/luaj/vm2/LuaString;->m_offset:I

    add-int/2addr v1, p1

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public mod(D)Lorg/luaj/vm2/LuaValue;
    .locals 2

    invoke-direct {p0}, Lorg/luaj/vm2/LuaString;->a()D

    move-result-wide v0

    invoke-static {v0, v1, p1, p2}, Lorg/luaj/vm2/LuaDouble;->dmod(DD)Lorg/luaj/vm2/LuaValue;

    move-result-object v0

    return-object v0
.end method

.method public mod(I)Lorg/luaj/vm2/LuaValue;
    .locals 4

    invoke-direct {p0}, Lorg/luaj/vm2/LuaString;->a()D

    move-result-wide v0

    int-to-double v2, p1

    invoke-static {v0, v1, v2, v3}, Lorg/luaj/vm2/LuaDouble;->dmod(DD)Lorg/luaj/vm2/LuaValue;

    move-result-object v0

    return-object v0
.end method

.method public mod(Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/LuaValue;
    .locals 3

    invoke-virtual {p0}, Lorg/luaj/vm2/LuaString;->scannumber()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v0, Lorg/luaj/vm2/LuaString;->MOD:Lorg/luaj/vm2/LuaString;

    invoke-virtual {p0, v0, p1}, Lorg/luaj/vm2/LuaString;->arithmt(Lorg/luaj/vm2/LuaValue;Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/LuaValue;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1, v0, v1}, Lorg/luaj/vm2/LuaValue;->modFrom(D)Lorg/luaj/vm2/LuaValue;

    move-result-object v0

    goto :goto_0
.end method

.method public modFrom(D)Lorg/luaj/vm2/LuaValue;
    .locals 2

    invoke-direct {p0}, Lorg/luaj/vm2/LuaString;->a()D

    move-result-wide v0

    invoke-static {p1, p2, v0, v1}, Lorg/luaj/vm2/LuaDouble;->dmod(DD)Lorg/luaj/vm2/LuaValue;

    move-result-object v0

    return-object v0
.end method

.method public mul(D)Lorg/luaj/vm2/LuaValue;
    .locals 2

    invoke-direct {p0}, Lorg/luaj/vm2/LuaString;->a()D

    move-result-wide v0

    mul-double/2addr v0, p1

    invoke-static {v0, v1}, Lorg/luaj/vm2/LuaString;->valueOf(D)Lorg/luaj/vm2/LuaNumber;

    move-result-object v0

    return-object v0
.end method

.method public mul(I)Lorg/luaj/vm2/LuaValue;
    .locals 4

    invoke-direct {p0}, Lorg/luaj/vm2/LuaString;->a()D

    move-result-wide v0

    int-to-double v2, p1

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Lorg/luaj/vm2/LuaString;->valueOf(D)Lorg/luaj/vm2/LuaNumber;

    move-result-object v0

    return-object v0
.end method

.method public mul(Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/LuaValue;
    .locals 3

    invoke-virtual {p0}, Lorg/luaj/vm2/LuaString;->scannumber()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v0, Lorg/luaj/vm2/LuaString;->MUL:Lorg/luaj/vm2/LuaString;

    invoke-virtual {p0, v0, p1}, Lorg/luaj/vm2/LuaString;->arithmt(Lorg/luaj/vm2/LuaValue;Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/LuaValue;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1, v0, v1}, Lorg/luaj/vm2/LuaValue;->mul(D)Lorg/luaj/vm2/LuaValue;

    move-result-object v0

    goto :goto_0
.end method

.method public neg()Lorg/luaj/vm2/LuaValue;
    .locals 3

    invoke-virtual {p0}, Lorg/luaj/vm2/LuaString;->scannumber()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-super {p0}, Lorg/luaj/vm2/LuaValue;->neg()Lorg/luaj/vm2/LuaValue;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    neg-double v0, v0

    invoke-static {v0, v1}, Lorg/luaj/vm2/LuaString;->valueOf(D)Lorg/luaj/vm2/LuaNumber;

    move-result-object v0

    goto :goto_0
.end method

.method public optdouble(D)D
    .locals 2

    invoke-virtual {p0}, Lorg/luaj/vm2/LuaString;->checknumber()Lorg/luaj/vm2/LuaNumber;

    move-result-object v0

    invoke-virtual {v0}, Lorg/luaj/vm2/LuaNumber;->checkdouble()D

    move-result-wide v0

    return-wide v0
.end method

.method public optint(I)I
    .locals 1

    invoke-virtual {p0}, Lorg/luaj/vm2/LuaString;->checknumber()Lorg/luaj/vm2/LuaNumber;

    move-result-object v0

    invoke-virtual {v0}, Lorg/luaj/vm2/LuaNumber;->checkint()I

    move-result v0

    return v0
.end method

.method public optinteger(Lorg/luaj/vm2/LuaInteger;)Lorg/luaj/vm2/LuaInteger;
    .locals 1

    invoke-virtual {p0}, Lorg/luaj/vm2/LuaString;->checknumber()Lorg/luaj/vm2/LuaNumber;

    move-result-object v0

    invoke-virtual {v0}, Lorg/luaj/vm2/LuaNumber;->checkinteger()Lorg/luaj/vm2/LuaInteger;

    move-result-object v0

    return-object v0
.end method

.method public optjstring(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lorg/luaj/vm2/LuaString;->tojstring()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public optlong(J)J
    .locals 2

    invoke-virtual {p0}, Lorg/luaj/vm2/LuaString;->checknumber()Lorg/luaj/vm2/LuaNumber;

    move-result-object v0

    invoke-virtual {v0}, Lorg/luaj/vm2/LuaNumber;->checklong()J

    move-result-wide v0

    return-wide v0
.end method

.method public optnumber(Lorg/luaj/vm2/LuaNumber;)Lorg/luaj/vm2/LuaNumber;
    .locals 1

    invoke-virtual {p0}, Lorg/luaj/vm2/LuaString;->checknumber()Lorg/luaj/vm2/LuaNumber;

    move-result-object v0

    invoke-virtual {v0}, Lorg/luaj/vm2/LuaNumber;->checknumber()Lorg/luaj/vm2/LuaNumber;

    move-result-object v0

    return-object v0
.end method

.method public optstring(Lorg/luaj/vm2/LuaString;)Lorg/luaj/vm2/LuaString;
    .locals 0

    return-object p0
.end method

.method public pow(D)Lorg/luaj/vm2/LuaValue;
    .locals 2

    invoke-direct {p0}, Lorg/luaj/vm2/LuaString;->a()D

    move-result-wide v0

    invoke-static {v0, v1, p1, p2}, Lorg/luaj/vm2/lib/MathLib;->dpow(DD)Lorg/luaj/vm2/LuaValue;

    move-result-object v0

    return-object v0
.end method

.method public pow(I)Lorg/luaj/vm2/LuaValue;
    .locals 4

    invoke-direct {p0}, Lorg/luaj/vm2/LuaString;->a()D

    move-result-wide v0

    int-to-double v2, p1

    invoke-static {v0, v1, v2, v3}, Lorg/luaj/vm2/lib/MathLib;->dpow(DD)Lorg/luaj/vm2/LuaValue;

    move-result-object v0

    return-object v0
.end method

.method public pow(Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/LuaValue;
    .locals 3

    invoke-virtual {p0}, Lorg/luaj/vm2/LuaString;->scannumber()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v0, Lorg/luaj/vm2/LuaString;->POW:Lorg/luaj/vm2/LuaString;

    invoke-virtual {p0, v0, p1}, Lorg/luaj/vm2/LuaString;->arithmt(Lorg/luaj/vm2/LuaValue;Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/LuaValue;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1, v0, v1}, Lorg/luaj/vm2/LuaValue;->powWith(D)Lorg/luaj/vm2/LuaValue;

    move-result-object v0

    goto :goto_0
.end method

.method public powWith(D)Lorg/luaj/vm2/LuaValue;
    .locals 2

    invoke-direct {p0}, Lorg/luaj/vm2/LuaString;->a()D

    move-result-wide v0

    invoke-static {p1, p2, v0, v1}, Lorg/luaj/vm2/lib/MathLib;->dpow(DD)Lorg/luaj/vm2/LuaValue;

    move-result-object v0

    return-object v0
.end method

.method public powWith(I)Lorg/luaj/vm2/LuaValue;
    .locals 4

    int-to-double v0, p1

    invoke-direct {p0}, Lorg/luaj/vm2/LuaString;->a()D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lorg/luaj/vm2/lib/MathLib;->dpow(DD)Lorg/luaj/vm2/LuaValue;

    move-result-object v0

    return-object v0
.end method

.method public printToStream(Ljava/io/PrintStream;)V
    .locals 4

    const/4 v0, 0x0

    iget v1, p0, Lorg/luaj/vm2/LuaString;->m_length:I

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v2, p0, Lorg/luaj/vm2/LuaString;->m_bytes:[B

    iget v3, p0, Lorg/luaj/vm2/LuaString;->m_offset:I

    add-int/2addr v3, v0

    aget-byte v2, v2, v3

    int-to-char v2, v2

    invoke-virtual {p1, v2}, Ljava/io/PrintStream;->print(C)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public raweq(Lorg/luaj/vm2/LuaString;)Z
    .locals 6

    const/4 v2, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    move v1, v2

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget v0, p1, Lorg/luaj/vm2/LuaString;->m_length:I

    iget v3, p0, Lorg/luaj/vm2/LuaString;->m_length:I

    if-ne v0, v3, :cond_0

    iget-object v0, p1, Lorg/luaj/vm2/LuaString;->m_bytes:[B

    iget-object v3, p0, Lorg/luaj/vm2/LuaString;->m_bytes:[B

    if-ne v0, v3, :cond_2

    iget v0, p1, Lorg/luaj/vm2/LuaString;->m_offset:I

    iget v3, p0, Lorg/luaj/vm2/LuaString;->m_offset:I

    if-ne v0, v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lorg/luaj/vm2/LuaString;->hashCode()I

    move-result v0

    invoke-virtual {p0}, Lorg/luaj/vm2/LuaString;->hashCode()I

    move-result v3

    if-ne v0, v3, :cond_0

    move v0, v1

    :goto_1
    iget v3, p0, Lorg/luaj/vm2/LuaString;->m_length:I

    if-ge v0, v3, :cond_3

    iget-object v3, p1, Lorg/luaj/vm2/LuaString;->m_bytes:[B

    iget v4, p1, Lorg/luaj/vm2/LuaString;->m_offset:I

    add-int/2addr v4, v0

    aget-byte v3, v3, v4

    iget-object v4, p0, Lorg/luaj/vm2/LuaString;->m_bytes:[B

    iget v5, p0, Lorg/luaj/vm2/LuaString;->m_offset:I

    add-int/2addr v5, v0

    aget-byte v4, v4, v5

    if-ne v3, v4, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public raweq(Lorg/luaj/vm2/LuaValue;)Z
    .locals 1

    invoke-virtual {p1, p0}, Lorg/luaj/vm2/LuaValue;->raweq(Lorg/luaj/vm2/LuaString;)Z

    move-result v0

    return v0
.end method

.method public rawlen()I
    .locals 1

    iget v0, p0, Lorg/luaj/vm2/LuaString;->m_length:I

    return v0
.end method

.method public scannumber()D
    .locals 5

    const/16 v4, 0x20

    iget v1, p0, Lorg/luaj/vm2/LuaString;->m_offset:I

    iget v0, p0, Lorg/luaj/vm2/LuaString;->m_offset:I

    iget v2, p0, Lorg/luaj/vm2/LuaString;->m_length:I

    add-int/2addr v0, v2

    move v3, v1

    :goto_0
    if-ge v3, v0, :cond_5

    iget-object v1, p0, Lorg/luaj/vm2/LuaString;->m_bytes:[B

    aget-byte v1, v1, v3

    if-ne v1, v4, :cond_5

    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_0

    :goto_1
    if-ge v3, v2, :cond_0

    iget-object v0, p0, Lorg/luaj/vm2/LuaString;->m_bytes:[B

    add-int/lit8 v1, v2, -0x1

    aget-byte v0, v0, v1

    if-ne v0, v4, :cond_0

    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_1

    :cond_0
    if-lt v3, v2, :cond_2

    const-wide/high16 v0, 0x7ff8000000000000L    # NaN

    :cond_1
    :goto_2
    return-wide v0

    :cond_2
    iget-object v0, p0, Lorg/luaj/vm2/LuaString;->m_bytes:[B

    aget-byte v0, v0, v3

    const/16 v1, 0x30

    if-ne v0, v1, :cond_4

    add-int/lit8 v0, v3, 0x1

    if-ge v0, v2, :cond_4

    iget-object v0, p0, Lorg/luaj/vm2/LuaString;->m_bytes:[B

    add-int/lit8 v1, v3, 0x1

    aget-byte v0, v0, v1

    const/16 v1, 0x78

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lorg/luaj/vm2/LuaString;->m_bytes:[B

    add-int/lit8 v1, v3, 0x1

    aget-byte v0, v0, v1

    const/16 v1, 0x58

    if-ne v0, v1, :cond_4

    :cond_3
    const/16 v0, 0x10

    add-int/lit8 v1, v3, 0x2

    invoke-direct {p0, v0, v1, v2}, Lorg/luaj/vm2/LuaString;->a(III)D

    move-result-wide v0

    goto :goto_2

    :cond_4
    const/16 v0, 0xa

    invoke-direct {p0, v0, v3, v2}, Lorg/luaj/vm2/LuaString;->a(III)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-direct {p0, v3, v2}, Lorg/luaj/vm2/LuaString;->a(II)D

    move-result-wide v0

    goto :goto_2

    :cond_5
    move v2, v0

    goto :goto_1
.end method

.method public scannumber(I)D
    .locals 7

    const/16 v6, 0x20

    const-wide/high16 v0, 0x7ff8000000000000L    # NaN

    const/4 v2, 0x2

    if-lt p1, v2, :cond_0

    const/16 v2, 0x24

    if-le p1, v2, :cond_1

    :cond_0
    :goto_0
    return-wide v0

    :cond_1
    iget v3, p0, Lorg/luaj/vm2/LuaString;->m_offset:I

    iget v2, p0, Lorg/luaj/vm2/LuaString;->m_offset:I

    iget v4, p0, Lorg/luaj/vm2/LuaString;->m_length:I

    add-int/2addr v2, v4

    :goto_1
    if-ge v3, v2, :cond_2

    iget-object v4, p0, Lorg/luaj/vm2/LuaString;->m_bytes:[B

    aget-byte v4, v4, v3

    if-ne v4, v6, :cond_2

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    if-ge v3, v2, :cond_3

    iget-object v4, p0, Lorg/luaj/vm2/LuaString;->m_bytes:[B

    add-int/lit8 v5, v2, -0x1

    aget-byte v4, v4, v5

    if-ne v4, v6, :cond_3

    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    :cond_3
    if-ge v3, v2, :cond_0

    invoke-direct {p0, p1, v3, v2}, Lorg/luaj/vm2/LuaString;->a(III)D

    move-result-wide v0

    goto :goto_0
.end method

.method public strcmp(Lorg/luaj/vm2/LuaString;)I
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Lorg/luaj/vm2/LuaString;->m_length:I

    if-ge v1, v2, :cond_1

    iget v2, p1, Lorg/luaj/vm2/LuaString;->m_length:I

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lorg/luaj/vm2/LuaString;->m_bytes:[B

    iget v3, p0, Lorg/luaj/vm2/LuaString;->m_offset:I

    add-int/2addr v3, v1

    aget-byte v2, v2, v3

    iget-object v3, p1, Lorg/luaj/vm2/LuaString;->m_bytes:[B

    iget v4, p1, Lorg/luaj/vm2/LuaString;->m_offset:I

    add-int/2addr v4, v0

    aget-byte v3, v3, v4

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lorg/luaj/vm2/LuaString;->m_bytes:[B

    iget v3, p0, Lorg/luaj/vm2/LuaString;->m_offset:I

    add-int/2addr v1, v3

    aget-byte v1, v2, v1

    iget-object v2, p1, Lorg/luaj/vm2/LuaString;->m_bytes:[B

    iget v3, p1, Lorg/luaj/vm2/LuaString;->m_offset:I

    add-int/2addr v0, v3

    aget-byte v0, v2, v0

    sub-int v0, v1, v0

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget v0, p0, Lorg/luaj/vm2/LuaString;->m_length:I

    iget v1, p1, Lorg/luaj/vm2/LuaString;->m_length:I

    sub-int/2addr v0, v1

    goto :goto_1
.end method

.method public strcmp(Lorg/luaj/vm2/LuaValue;)I
    .locals 1

    invoke-virtual {p1, p0}, Lorg/luaj/vm2/LuaValue;->strcmp(Lorg/luaj/vm2/LuaString;)I

    move-result v0

    neg-int v0, v0

    return v0
.end method

.method public strvalue()Lorg/luaj/vm2/LuaString;
    .locals 0

    return-object p0
.end method

.method public sub(D)Lorg/luaj/vm2/LuaValue;
    .locals 2

    invoke-direct {p0}, Lorg/luaj/vm2/LuaString;->a()D

    move-result-wide v0

    sub-double/2addr v0, p1

    invoke-static {v0, v1}, Lorg/luaj/vm2/LuaString;->valueOf(D)Lorg/luaj/vm2/LuaNumber;

    move-result-object v0

    return-object v0
.end method

.method public sub(I)Lorg/luaj/vm2/LuaValue;
    .locals 4

    invoke-direct {p0}, Lorg/luaj/vm2/LuaString;->a()D

    move-result-wide v0

    int-to-double v2, p1

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Lorg/luaj/vm2/LuaString;->valueOf(D)Lorg/luaj/vm2/LuaNumber;

    move-result-object v0

    return-object v0
.end method

.method public sub(Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/LuaValue;
    .locals 3

    invoke-virtual {p0}, Lorg/luaj/vm2/LuaString;->scannumber()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v0, Lorg/luaj/vm2/LuaString;->SUB:Lorg/luaj/vm2/LuaString;

    invoke-virtual {p0, v0, p1}, Lorg/luaj/vm2/LuaString;->arithmt(Lorg/luaj/vm2/LuaValue;Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/LuaValue;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1, v0, v1}, Lorg/luaj/vm2/LuaValue;->subFrom(D)Lorg/luaj/vm2/LuaValue;

    move-result-object v0

    goto :goto_0
.end method

.method public subFrom(D)Lorg/luaj/vm2/LuaValue;
    .locals 2

    invoke-direct {p0}, Lorg/luaj/vm2/LuaString;->a()D

    move-result-wide v0

    sub-double v0, p1, v0

    invoke-static {v0, v1}, Lorg/luaj/vm2/LuaString;->valueOf(D)Lorg/luaj/vm2/LuaNumber;

    move-result-object v0

    return-object v0
.end method

.method public substring(II)Lorg/luaj/vm2/LuaString;
    .locals 3

    iget-object v0, p0, Lorg/luaj/vm2/LuaString;->m_bytes:[B

    iget v1, p0, Lorg/luaj/vm2/LuaString;->m_offset:I

    add-int/2addr v1, p1

    sub-int v2, p2, p1

    invoke-static {v0, v1, v2}, Lorg/luaj/vm2/LuaString;->valueOf([BII)Lorg/luaj/vm2/LuaString;

    move-result-object v0

    return-object v0
.end method

.method public toInputStream()Ljava/io/InputStream;
    .locals 4

    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lorg/luaj/vm2/LuaString;->m_bytes:[B

    iget v2, p0, Lorg/luaj/vm2/LuaString;->m_offset:I

    iget v3, p0, Lorg/luaj/vm2/LuaString;->m_length:I

    invoke-direct {v0, v1, v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    return-object v0
.end method

.method public tobyte()B
    .locals 1

    invoke-virtual {p0}, Lorg/luaj/vm2/LuaString;->toint()I

    move-result v0

    int-to-byte v0, v0

    return v0
.end method

.method public tochar()C
    .locals 1

    invoke-virtual {p0}, Lorg/luaj/vm2/LuaString;->toint()I

    move-result v0

    int-to-char v0, v0

    return v0
.end method

.method public todouble()D
    .locals 3

    invoke-virtual {p0}, Lorg/luaj/vm2/LuaString;->scannumber()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-eqz v2, :cond_0

    const-wide/16 v0, 0x0

    :cond_0
    return-wide v0
.end method

.method public tofloat()F
    .locals 2

    invoke-virtual {p0}, Lorg/luaj/vm2/LuaString;->todouble()D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public toint()I
    .locals 2

    invoke-virtual {p0}, Lorg/luaj/vm2/LuaString;->tolong()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public tojstring()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lorg/luaj/vm2/LuaString;->m_bytes:[B

    iget v1, p0, Lorg/luaj/vm2/LuaString;->m_offset:I

    iget v2, p0, Lorg/luaj/vm2/LuaString;->m_length:I

    invoke-static {v0, v1, v2}, Lorg/luaj/vm2/LuaString;->decodeAsUtf8([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public tolong()J
    .locals 2

    invoke-virtual {p0}, Lorg/luaj/vm2/LuaString;->todouble()D

    move-result-wide v0

    double-to-long v0, v0

    return-wide v0
.end method

.method public tonumber()Lorg/luaj/vm2/LuaValue;
    .locals 3

    invoke-virtual {p0}, Lorg/luaj/vm2/LuaString;->scannumber()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v0, Lorg/luaj/vm2/LuaString;->NIL:Lorg/luaj/vm2/LuaValue;

    :goto_0
    return-object v0

    :cond_0
    invoke-static {v0, v1}, Lorg/luaj/vm2/LuaString;->valueOf(D)Lorg/luaj/vm2/LuaNumber;

    move-result-object v0

    goto :goto_0
.end method

.method public tonumber(I)Lorg/luaj/vm2/LuaValue;
    .locals 3

    invoke-virtual {p0, p1}, Lorg/luaj/vm2/LuaString;->scannumber(I)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v0, Lorg/luaj/vm2/LuaString;->NIL:Lorg/luaj/vm2/LuaValue;

    :goto_0
    return-object v0

    :cond_0
    invoke-static {v0, v1}, Lorg/luaj/vm2/LuaString;->valueOf(D)Lorg/luaj/vm2/LuaNumber;

    move-result-object v0

    goto :goto_0
.end method

.method public toshort()S
    .locals 1

    invoke-virtual {p0}, Lorg/luaj/vm2/LuaString;->toint()I

    move-result v0

    int-to-short v0, v0

    return v0
.end method

.method public tostring()Lorg/luaj/vm2/LuaValue;
    .locals 0

    return-object p0
.end method

.method public type()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public typename()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "string"

    return-object v0
.end method

.method public write(Ljava/io/DataOutputStream;II)V
    .locals 2

    iget-object v0, p0, Lorg/luaj/vm2/LuaString;->m_bytes:[B

    iget v1, p0, Lorg/luaj/vm2/LuaString;->m_offset:I

    add-int/2addr v1, p2

    invoke-virtual {p1, v0, v1, p3}, Ljava/io/DataOutputStream;->write([BII)V

    return-void
.end method
