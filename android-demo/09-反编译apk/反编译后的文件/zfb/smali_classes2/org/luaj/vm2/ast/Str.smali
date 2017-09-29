.class public Lorg/luaj/vm2/ast/Str;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static charString(Ljava/lang/String;)Lorg/luaj/vm2/LuaString;
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/luaj/vm2/ast/Str;->unquote(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lorg/luaj/vm2/LuaString;->valueOf([B)Lorg/luaj/vm2/LuaString;

    move-result-object v0

    return-object v0
.end method

.method public static iso88591bytes(Ljava/lang/String;)[B
    .locals 2

    :try_start_0
    const-string/jumbo v0, "ISO8859-1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "ISO8859-1 not supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static longString(Ljava/lang/String;)Lorg/luaj/vm2/LuaString;
    .locals 2

    const/16 v1, 0x5b

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/luaj/vm2/ast/Str;->iso88591bytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lorg/luaj/vm2/LuaString;->valueOf([B)Lorg/luaj/vm2/LuaString;

    move-result-object v0

    return-object v0
.end method

.method public static quoteString(Ljava/lang/String;)Lorg/luaj/vm2/LuaString;
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/luaj/vm2/ast/Str;->unquote(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lorg/luaj/vm2/LuaString;->valueOf([B)Lorg/luaj/vm2/LuaString;

    move-result-object v0

    return-object v0
.end method

.method public static unquote(Ljava/lang/String;)[B
    .locals 10

    const/16 v9, 0x5c

    const/4 v1, 0x0

    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    array-length v6, v5

    move v0, v1

    :goto_0
    if-ge v0, v6, :cond_2

    aget-char v2, v5, v0

    if-ne v2, v9, :cond_1

    if-ge v0, v6, :cond_1

    add-int/lit8 v0, v0, 0x1

    aget-char v2, v5, v0

    sparse-switch v2, :sswitch_data_0

    aget-char v2, v5, v0

    int-to-byte v2, v2

    invoke-virtual {v4, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :sswitch_0
    add-int/lit8 v2, v0, 0x1

    aget-char v0, v5, v0

    add-int/lit8 v0, v0, -0x30

    move v3, v2

    move v2, v0

    move v0, v1

    :goto_2
    if-ge v3, v6, :cond_0

    const/4 v7, 0x2

    if-ge v0, v7, :cond_0

    aget-char v7, v5, v3

    const/16 v8, 0x30

    if-lt v7, v8, :cond_0

    aget-char v7, v5, v3

    const/16 v8, 0x39

    if-gt v7, v8, :cond_0

    mul-int/lit8 v2, v2, 0xa

    aget-char v7, v5, v3

    add-int/lit8 v7, v7, -0x30

    add-int/2addr v2, v7

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_0
    int-to-byte v0, v2

    invoke-virtual {v4, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    add-int/lit8 v0, v3, -0x1

    goto :goto_1

    :sswitch_1
    const/4 v2, 0x7

    invoke-virtual {v4, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_1

    :sswitch_2
    const/16 v2, 0x8

    invoke-virtual {v4, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_1

    :sswitch_3
    const/16 v2, 0xc

    invoke-virtual {v4, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_1

    :sswitch_4
    const/16 v2, 0xa

    invoke-virtual {v4, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_1

    :sswitch_5
    const/16 v2, 0xd

    invoke-virtual {v4, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_1

    :sswitch_6
    const/16 v2, 0x9

    invoke-virtual {v4, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_1

    :sswitch_7
    const/16 v2, 0xb

    invoke-virtual {v4, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_1

    :sswitch_8
    const/16 v2, 0x22

    invoke-virtual {v4, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_1

    :sswitch_9
    const/16 v2, 0x27

    invoke-virtual {v4, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_1

    :sswitch_a
    invoke-virtual {v4, v9}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_1

    :cond_1
    aget-char v2, v5, v0

    int-to-byte v2, v2

    invoke-virtual {v4, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_1

    :cond_2
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_8
        0x27 -> :sswitch_9
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
        0x5c -> :sswitch_a
        0x61 -> :sswitch_1
        0x62 -> :sswitch_2
        0x66 -> :sswitch_3
        0x6e -> :sswitch_4
        0x72 -> :sswitch_5
        0x74 -> :sswitch_6
        0x76 -> :sswitch_7
    .end sparse-switch
.end method
