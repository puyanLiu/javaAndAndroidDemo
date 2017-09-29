.class public Lorg/luaj/vm2/lib/StringLib;
.super Lorg/luaj/vm2/lib/TwoArgFunction;


# static fields
.field private static final a:Lorg/luaj/vm2/LuaString;

.field private static final b:[B

.field static class$org$luaj$vm2$lib$StringLib$StringLib1:Ljava/lang/Class;

.field static class$org$luaj$vm2$lib$StringLib$StringLibV:Ljava/lang/Class;

.field public static instance:Lorg/luaj/vm2/LuaTable;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const/16 v9, 0x100

    const/16 v3, 0x40

    const/16 v8, 0xc

    const/16 v7, 0x20

    const/4 v1, 0x0

    const-string/jumbo v0, "^$*+?.([%-"

    invoke-static {v0}, Lorg/luaj/vm2/lib/StringLib;->valueOf(Ljava/lang/String;)Lorg/luaj/vm2/LuaString;

    move-result-object v0

    sput-object v0, Lorg/luaj/vm2/lib/StringLib;->a:Lorg/luaj/vm2/LuaString;

    new-array v0, v9, [B

    sput-object v0, Lorg/luaj/vm2/lib/StringLib;->b:[B

    move v4, v1

    :goto_0
    if-ge v4, v9, :cond_d

    int-to-char v5, v4

    sget-object v6, Lorg/luaj/vm2/lib/StringLib;->b:[B

    invoke-static {v5}, Ljava/lang/Character;->isDigit(C)Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v0, 0x8

    :goto_1
    invoke-static {v5}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v2

    if-eqz v2, :cond_a

    const/4 v2, 0x2

    :goto_2
    or-int/2addr v2, v0

    invoke-static {v5}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x4

    :goto_3
    or-int/2addr v2, v0

    if-lt v5, v7, :cond_0

    const/16 v0, 0x7f

    if-ne v5, v0, :cond_c

    :cond_0
    move v0, v3

    :goto_4
    or-int/2addr v0, v2

    int-to-byte v0, v0

    aput-byte v0, v6, v4

    const/16 v0, 0x61

    if-lt v5, v0, :cond_1

    const/16 v0, 0x66

    if-le v5, v0, :cond_3

    :cond_1
    const/16 v0, 0x41

    if-lt v5, v0, :cond_2

    const/16 v0, 0x46

    if-le v5, v0, :cond_3

    :cond_2
    const/16 v0, 0x30

    if-lt v5, v0, :cond_4

    const/16 v0, 0x39

    if-gt v5, v0, :cond_4

    :cond_3
    sget-object v0, Lorg/luaj/vm2/lib/StringLib;->b:[B

    aget-byte v2, v0, v4

    or-int/lit8 v2, v2, -0x80

    int-to-byte v2, v2

    aput-byte v2, v0, v4

    :cond_4
    const/16 v0, 0x21

    if-lt v5, v0, :cond_5

    const/16 v0, 0x2f

    if-le v5, v0, :cond_6

    :cond_5
    const/16 v0, 0x3a

    if-lt v5, v0, :cond_7

    if-gt v5, v3, :cond_7

    :cond_6
    sget-object v0, Lorg/luaj/vm2/lib/StringLib;->b:[B

    aget-byte v2, v0, v4

    or-int/lit8 v2, v2, 0x10

    int-to-byte v2, v2

    aput-byte v2, v0, v4

    :cond_7
    sget-object v0, Lorg/luaj/vm2/lib/StringLib;->b:[B

    aget-byte v0, v0, v4

    and-int/lit8 v0, v0, 0x6

    if-eqz v0, :cond_8

    sget-object v0, Lorg/luaj/vm2/lib/StringLib;->b:[B

    aget-byte v2, v0, v4

    or-int/lit8 v2, v2, 0x1

    int-to-byte v2, v2

    aput-byte v2, v0, v4

    :cond_8
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_0

    :cond_9
    move v0, v1

    goto :goto_1

    :cond_a
    move v2, v1

    goto :goto_2

    :cond_b
    move v0, v1

    goto :goto_3

    :cond_c
    move v0, v1

    goto :goto_4

    :cond_d
    sget-object v0, Lorg/luaj/vm2/lib/StringLib;->b:[B

    aput-byte v7, v0, v7

    sget-object v0, Lorg/luaj/vm2/lib/StringLib;->b:[B

    const/16 v1, 0xd

    aget-byte v2, v0, v1

    or-int/lit8 v2, v2, 0x20

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    sget-object v0, Lorg/luaj/vm2/lib/StringLib;->b:[B

    const/16 v1, 0xa

    aget-byte v2, v0, v1

    or-int/lit8 v2, v2, 0x20

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    sget-object v0, Lorg/luaj/vm2/lib/StringLib;->b:[B

    const/16 v1, 0x9

    aget-byte v2, v0, v1

    or-int/lit8 v2, v2, 0x20

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    sget-object v0, Lorg/luaj/vm2/lib/StringLib;->b:[B

    aget-byte v1, v0, v8

    or-int/lit8 v1, v1, 0x20

    int-to-byte v1, v1

    aput-byte v1, v0, v8

    sget-object v0, Lorg/luaj/vm2/lib/StringLib;->b:[B

    aget-byte v1, v0, v8

    or-int/lit8 v1, v1, 0x20

    int-to-byte v1, v1

    aput-byte v1, v0, v8

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/luaj/vm2/lib/TwoArgFunction;-><init>()V

    return-void
.end method

.method private static a(II)I
    .locals 1

    if-ltz p0, :cond_0

    :goto_0
    return p0

    :cond_0
    add-int v0, p1, p0

    add-int/lit8 p0, v0, 0x1

    goto :goto_0
.end method

.method static access$100()[B
    .locals 1

    sget-object v0, Lorg/luaj/vm2/lib/StringLib;->b:[B

    return-object v0
.end method

.method static byte_(Lorg/luaj/vm2/Varargs;)Lorg/luaj/vm2/Varargs;
    .locals 6

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lorg/luaj/vm2/Varargs;->checkstring(I)Lorg/luaj/vm2/LuaString;

    move-result-object v4

    iget v0, v4, Lorg/luaj/vm2/LuaString;->m_length:I

    const/4 v1, 0x2

    invoke-virtual {p0, v1, v2}, Lorg/luaj/vm2/Varargs;->optint(II)I

    move-result v1

    invoke-static {v1, v0}, Lorg/luaj/vm2/lib/StringLib;->a(II)I

    move-result v3

    const/4 v1, 0x3

    invoke-virtual {p0, v1, v3}, Lorg/luaj/vm2/Varargs;->optint(II)I

    move-result v1

    invoke-static {v1, v0}, Lorg/luaj/vm2/lib/StringLib;->a(II)I

    move-result v1

    if-gtz v3, :cond_4

    :goto_0
    if-le v1, v0, :cond_3

    :goto_1
    if-le v2, v0, :cond_0

    sget-object v0, Lorg/luaj/vm2/lib/StringLib;->NONE:Lorg/luaj/vm2/LuaValue;

    :goto_2
    return-object v0

    :cond_0
    sub-int v1, v0, v2

    add-int/lit8 v1, v1, 0x1

    add-int v3, v2, v1

    if-gt v3, v0, :cond_1

    const-string/jumbo v0, "string slice too long"

    invoke-static {v0}, Lorg/luaj/vm2/lib/StringLib;->error(Ljava/lang/String;)Lorg/luaj/vm2/LuaValue;

    :cond_1
    new-array v3, v1, [Lorg/luaj/vm2/LuaValue;

    const/4 v0, 0x0

    :goto_3
    if-ge v0, v1, :cond_2

    add-int v5, v2, v0

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Lorg/luaj/vm2/LuaString;->luaByte(I)I

    move-result v5

    invoke-static {v5}, Lorg/luaj/vm2/lib/StringLib;->valueOf(I)Lorg/luaj/vm2/LuaInteger;

    move-result-object v5

    aput-object v5, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_2
    invoke-static {v3}, Lorg/luaj/vm2/lib/StringLib;->varargsOf([Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/Varargs;

    move-result-object v0

    goto :goto_2

    :cond_3
    move v0, v1

    goto :goto_1

    :cond_4
    move v2, v3

    goto :goto_0
.end method

.method public static char_(Lorg/luaj/vm2/Varargs;)Lorg/luaj/vm2/Varargs;
    .locals 6

    invoke-virtual {p0}, Lorg/luaj/vm2/Varargs;->narg()I

    move-result v2

    new-array v3, v2, [B

    const/4 v1, 0x0

    const/4 v0, 0x1

    :goto_0
    if-ge v1, v2, :cond_2

    invoke-virtual {p0, v0}, Lorg/luaj/vm2/Varargs;->checkint(I)I

    move-result v4

    if-ltz v4, :cond_0

    const/16 v5, 0x100

    if-lt v4, v5, :cond_1

    :cond_0
    const-string/jumbo v5, "invalid value"

    invoke-static {v0, v5}, Lorg/luaj/vm2/lib/StringLib;->argerror(ILjava/lang/String;)Lorg/luaj/vm2/LuaValue;

    :cond_1
    int-to-byte v4, v4

    aput-byte v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-static {v3}, Lorg/luaj/vm2/LuaString;->valueOf([B)Lorg/luaj/vm2/LuaString;

    move-result-object v0

    return-object v0
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2

    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static dump(Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/LuaValue;
    .locals 3

    invoke-virtual {p0}, Lorg/luaj/vm2/LuaValue;->checkfunction()Lorg/luaj/vm2/LuaFunction;

    move-result-object v0

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :try_start_0
    check-cast v0, Lorg/luaj/vm2/LuaClosure;

    iget-object v0, v0, Lorg/luaj/vm2/LuaClosure;->p:Lorg/luaj/vm2/Prototype;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lorg/luaj/vm2/compiler/DumpState;->dump(Lorg/luaj/vm2/Prototype;Ljava/io/OutputStream;Z)I

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Lorg/luaj/vm2/LuaString;->valueOf([B)Lorg/luaj/vm2/LuaString;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/luaj/vm2/lib/StringLib;->error(Ljava/lang/String;)Lorg/luaj/vm2/LuaValue;

    move-result-object v0

    goto :goto_0
.end method

.method static find(Lorg/luaj/vm2/Varargs;)Lorg/luaj/vm2/Varargs;
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lorg/luaj/vm2/lib/StringLib;->str_find_aux(Lorg/luaj/vm2/Varargs;Z)Lorg/luaj/vm2/Varargs;

    move-result-object v0

    return-object v0
.end method

.method static format(Lorg/luaj/vm2/Varargs;)Lorg/luaj/vm2/Varargs;
    .locals 15

    const/16 v14, 0x30

    const/16 v13, 0x25

    const/16 v12, 0x22

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0}, Lorg/luaj/vm2/Varargs;->checkstring(I)Lorg/luaj/vm2/LuaString;

    move-result-object v4

    invoke-virtual {v4}, Lorg/luaj/vm2/LuaString;->length()I

    move-result v5

    new-instance v6, Lorg/luaj/vm2/Buffer;

    invoke-direct {v6, v5}, Lorg/luaj/vm2/Buffer;-><init>(I)V

    move v3, v0

    move v0, v1

    :goto_0
    if-ge v0, v5, :cond_7

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v4, v0}, Lorg/luaj/vm2/LuaString;->luaByte(I)I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    int-to-byte v0, v0

    invoke-virtual {v6, v0}, Lorg/luaj/vm2/Buffer;->append(B)Lorg/luaj/vm2/Buffer;

    move v0, v2

    goto :goto_0

    :sswitch_0
    const-string/jumbo v0, "\n"

    invoke-virtual {v6, v0}, Lorg/luaj/vm2/Buffer;->append(Ljava/lang/String;)Lorg/luaj/vm2/Buffer;

    move v0, v2

    goto :goto_0

    :sswitch_1
    if-ge v2, v5, :cond_8

    invoke-virtual {v4, v2}, Lorg/luaj/vm2/LuaString;->luaByte(I)I

    move-result v0

    if-ne v0, v13, :cond_0

    add-int/lit8 v0, v2, 0x1

    invoke-virtual {v6, v13}, Lorg/luaj/vm2/Buffer;->append(B)Lorg/luaj/vm2/Buffer;

    goto :goto_0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    new-instance v0, Lorg/luaj/vm2/lib/StringLib$FormatDesc;

    invoke-direct {v0, p0, v4, v2}, Lorg/luaj/vm2/lib/StringLib$FormatDesc;-><init>(Lorg/luaj/vm2/Varargs;Lorg/luaj/vm2/LuaString;I)V

    iget v7, v0, Lorg/luaj/vm2/lib/StringLib$FormatDesc;->length:I

    add-int/2addr v2, v7

    iget v7, v0, Lorg/luaj/vm2/lib/StringLib$FormatDesc;->conversion:I

    sparse-switch v7, :sswitch_data_1

    new-instance v7, Ljava/lang/StringBuffer;

    const-string/jumbo v8, "invalid option \'%"

    invoke-direct {v7, v8}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget v0, v0, Lorg/luaj/vm2/lib/StringLib$FormatDesc;->conversion:I

    int-to-char v0, v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v7, "\' to \'format\'"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/luaj/vm2/lib/StringLib;->error(Ljava/lang/String;)Lorg/luaj/vm2/LuaValue;

    move v0, v2

    goto :goto_0

    :sswitch_2
    invoke-virtual {p0, v3}, Lorg/luaj/vm2/Varargs;->checkint(I)I

    move-result v7

    int-to-byte v7, v7

    invoke-virtual {v0, v6, v7}, Lorg/luaj/vm2/lib/StringLib$FormatDesc;->format(Lorg/luaj/vm2/Buffer;B)V

    move v0, v2

    goto :goto_0

    :sswitch_3
    invoke-virtual {p0, v3}, Lorg/luaj/vm2/Varargs;->checkint(I)I

    move-result v7

    int-to-long v7, v7

    invoke-virtual {v0, v6, v7, v8}, Lorg/luaj/vm2/lib/StringLib$FormatDesc;->format(Lorg/luaj/vm2/Buffer;J)V

    move v0, v2

    goto :goto_0

    :sswitch_4
    invoke-virtual {p0, v3}, Lorg/luaj/vm2/Varargs;->checklong(I)J

    move-result-wide v7

    invoke-virtual {v0, v6, v7, v8}, Lorg/luaj/vm2/lib/StringLib$FormatDesc;->format(Lorg/luaj/vm2/Buffer;J)V

    move v0, v2

    goto :goto_0

    :sswitch_5
    invoke-virtual {p0, v3}, Lorg/luaj/vm2/Varargs;->checkdouble(I)D

    move-result-wide v7

    invoke-virtual {v0, v6, v7, v8}, Lorg/luaj/vm2/lib/StringLib$FormatDesc;->format(Lorg/luaj/vm2/Buffer;D)V

    move v0, v2

    goto :goto_0

    :sswitch_6
    invoke-virtual {p0, v3}, Lorg/luaj/vm2/Varargs;->checkstring(I)Lorg/luaj/vm2/LuaString;

    move-result-object v7

    invoke-virtual {v6, v12}, Lorg/luaj/vm2/Buffer;->append(B)Lorg/luaj/vm2/Buffer;

    invoke-virtual {v7}, Lorg/luaj/vm2/LuaString;->length()I

    move-result v8

    move v0, v1

    :goto_1
    if-ge v0, v8, :cond_5

    invoke-virtual {v7, v0}, Lorg/luaj/vm2/LuaString;->luaByte(I)I

    move-result v9

    sparse-switch v9, :sswitch_data_2

    const/16 v10, 0x1f

    if-le v9, v10, :cond_1

    const/16 v10, 0x7f

    if-ne v9, v10, :cond_4

    :cond_1
    const/16 v10, 0x5c

    invoke-virtual {v6, v10}, Lorg/luaj/vm2/Buffer;->append(B)Lorg/luaj/vm2/Buffer;

    add-int/lit8 v10, v0, 0x1

    if-eq v10, v8, :cond_2

    add-int/lit8 v10, v0, 0x1

    invoke-virtual {v7, v10}, Lorg/luaj/vm2/LuaString;->luaByte(I)I

    move-result v10

    if-lt v10, v14, :cond_2

    add-int/lit8 v10, v0, 0x1

    invoke-virtual {v7, v10}, Lorg/luaj/vm2/LuaString;->luaByte(I)I

    move-result v10

    const/16 v11, 0x39

    if-le v10, v11, :cond_3

    :cond_2
    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Lorg/luaj/vm2/Buffer;->append(Ljava/lang/String;)Lorg/luaj/vm2/Buffer;

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :sswitch_7
    const/16 v10, 0x5c

    invoke-virtual {v6, v10}, Lorg/luaj/vm2/Buffer;->append(B)Lorg/luaj/vm2/Buffer;

    int-to-byte v9, v9

    invoke-virtual {v6, v9}, Lorg/luaj/vm2/Buffer;->append(B)Lorg/luaj/vm2/Buffer;

    goto :goto_2

    :cond_3
    invoke-virtual {v6, v14}, Lorg/luaj/vm2/Buffer;->append(B)Lorg/luaj/vm2/Buffer;

    div-int/lit8 v10, v9, 0xa

    add-int/lit8 v10, v10, 0x30

    int-to-byte v10, v10

    invoke-virtual {v6, v10}, Lorg/luaj/vm2/Buffer;->append(B)Lorg/luaj/vm2/Buffer;

    rem-int/lit8 v9, v9, 0xa

    add-int/lit8 v9, v9, 0x30

    int-to-byte v9, v9

    invoke-virtual {v6, v9}, Lorg/luaj/vm2/Buffer;->append(B)Lorg/luaj/vm2/Buffer;

    goto :goto_2

    :cond_4
    int-to-byte v9, v9

    invoke-virtual {v6, v9}, Lorg/luaj/vm2/Buffer;->append(B)Lorg/luaj/vm2/Buffer;

    goto :goto_2

    :cond_5
    invoke-virtual {v6, v12}, Lorg/luaj/vm2/Buffer;->append(B)Lorg/luaj/vm2/Buffer;

    move v0, v2

    goto/16 :goto_0

    :sswitch_8
    invoke-virtual {p0, v3}, Lorg/luaj/vm2/Varargs;->checkstring(I)Lorg/luaj/vm2/LuaString;

    move-result-object v7

    invoke-static {v0}, Lorg/luaj/vm2/lib/StringLib$FormatDesc;->access$000(Lorg/luaj/vm2/lib/StringLib$FormatDesc;)I

    move-result v8

    const/4 v9, -0x1

    if-ne v8, v9, :cond_6

    invoke-virtual {v7}, Lorg/luaj/vm2/LuaString;->length()I

    move-result v8

    const/16 v9, 0x64

    if-lt v8, v9, :cond_6

    invoke-virtual {v6, v7}, Lorg/luaj/vm2/Buffer;->append(Lorg/luaj/vm2/LuaString;)Lorg/luaj/vm2/Buffer;

    move v0, v2

    goto/16 :goto_0

    :cond_6
    invoke-virtual {v0, v6, v7}, Lorg/luaj/vm2/lib/StringLib$FormatDesc;->format(Lorg/luaj/vm2/Buffer;Lorg/luaj/vm2/LuaString;)V

    move v0, v2

    goto/16 :goto_0

    :cond_7
    invoke-virtual {v6}, Lorg/luaj/vm2/Buffer;->tostring()Lorg/luaj/vm2/LuaString;

    move-result-object v0

    return-object v0

    :cond_8
    move v0, v2

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0x25 -> :sswitch_1
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x45 -> :sswitch_5
        0x47 -> :sswitch_5
        0x58 -> :sswitch_4
        0x63 -> :sswitch_2
        0x64 -> :sswitch_3
        0x65 -> :sswitch_5
        0x66 -> :sswitch_5
        0x67 -> :sswitch_5
        0x69 -> :sswitch_3
        0x6f -> :sswitch_4
        0x71 -> :sswitch_6
        0x73 -> :sswitch_8
        0x75 -> :sswitch_4
        0x78 -> :sswitch_4
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        0xa -> :sswitch_7
        0x22 -> :sswitch_7
        0x5c -> :sswitch_7
    .end sparse-switch
.end method

.method static gmatch(Lorg/luaj/vm2/Varargs;)Lorg/luaj/vm2/Varargs;
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/luaj/vm2/Varargs;->checkstring(I)Lorg/luaj/vm2/LuaString;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lorg/luaj/vm2/Varargs;->checkstring(I)Lorg/luaj/vm2/LuaString;

    move-result-object v1

    new-instance v2, Lorg/luaj/vm2/lib/StringLib$GMatchAux;

    invoke-direct {v2, p0, v0, v1}, Lorg/luaj/vm2/lib/StringLib$GMatchAux;-><init>(Lorg/luaj/vm2/Varargs;Lorg/luaj/vm2/LuaString;Lorg/luaj/vm2/LuaString;)V

    return-object v2
.end method

.method static gsub(Lorg/luaj/vm2/Varargs;)Lorg/luaj/vm2/Varargs;
    .locals 14

    const/4 v13, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v1}, Lorg/luaj/vm2/Varargs;->checkstring(I)Lorg/luaj/vm2/LuaString;

    move-result-object v7

    invoke-virtual {v7}, Lorg/luaj/vm2/LuaString;->length()I

    move-result v8

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lorg/luaj/vm2/Varargs;->checkstring(I)Lorg/luaj/vm2/LuaString;

    move-result-object v3

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lorg/luaj/vm2/Varargs;->arg(I)Lorg/luaj/vm2/LuaValue;

    move-result-object v9

    const/4 v0, 0x4

    add-int/lit8 v4, v8, 0x1

    invoke-virtual {p0, v0, v4}, Lorg/luaj/vm2/Varargs;->optint(II)I

    move-result v10

    invoke-virtual {v3}, Lorg/luaj/vm2/LuaString;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {v3, v2}, Lorg/luaj/vm2/LuaString;->charAt(I)I

    move-result v0

    const/16 v4, 0x5e

    if-ne v0, v4, :cond_0

    move v0, v1

    :goto_0
    new-instance v11, Lorg/luaj/vm2/Buffer;

    invoke-direct {v11, v8}, Lorg/luaj/vm2/Buffer;-><init>(I)V

    new-instance v12, Lorg/luaj/vm2/lib/StringLib$MatchState;

    invoke-direct {v12, p0, v7, v3}, Lorg/luaj/vm2/lib/StringLib$MatchState;-><init>(Lorg/luaj/vm2/Varargs;Lorg/luaj/vm2/LuaString;Lorg/luaj/vm2/LuaString;)V

    move v4, v2

    move v5, v2

    :goto_1
    if-ge v4, v10, :cond_6

    invoke-virtual {v12}, Lorg/luaj/vm2/lib/StringLib$MatchState;->reset()V

    if-eqz v0, :cond_1

    move v3, v1

    :goto_2
    invoke-virtual {v12, v5, v3}, Lorg/luaj/vm2/lib/StringLib$MatchState;->match(II)I

    move-result v6

    if-eq v6, v13, :cond_5

    add-int/lit8 v3, v4, 0x1

    invoke-virtual {v12, v11, v5, v6, v9}, Lorg/luaj/vm2/lib/StringLib$MatchState;->add_value(Lorg/luaj/vm2/Buffer;IILorg/luaj/vm2/LuaValue;)V

    :goto_3
    if-eq v6, v13, :cond_2

    if-le v6, v5, :cond_2

    move v4, v6

    :goto_4
    if-eqz v0, :cond_3

    move v0, v3

    move v1, v4

    :goto_5
    invoke-virtual {v7, v1, v8}, Lorg/luaj/vm2/LuaString;->substring(II)Lorg/luaj/vm2/LuaString;

    move-result-object v1

    invoke-virtual {v11, v1}, Lorg/luaj/vm2/Buffer;->append(Lorg/luaj/vm2/LuaString;)Lorg/luaj/vm2/Buffer;

    invoke-virtual {v11}, Lorg/luaj/vm2/Buffer;->tostring()Lorg/luaj/vm2/LuaString;

    move-result-object v1

    invoke-static {v0}, Lorg/luaj/vm2/lib/StringLib;->valueOf(I)Lorg/luaj/vm2/LuaInteger;

    move-result-object v0

    invoke-static {v1, v0}, Lorg/luaj/vm2/lib/StringLib;->varargsOf(Lorg/luaj/vm2/LuaValue;Lorg/luaj/vm2/Varargs;)Lorg/luaj/vm2/Varargs;

    move-result-object v0

    return-object v0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v3, v2

    goto :goto_2

    :cond_2
    if-ge v5, v8, :cond_4

    add-int/lit8 v4, v5, 0x1

    invoke-virtual {v7, v5}, Lorg/luaj/vm2/LuaString;->luaByte(I)I

    move-result v5

    int-to-byte v5, v5

    invoke-virtual {v11, v5}, Lorg/luaj/vm2/Buffer;->append(B)Lorg/luaj/vm2/Buffer;

    goto :goto_4

    :cond_3
    move v5, v4

    move v4, v3

    goto :goto_1

    :cond_4
    move v0, v3

    move v1, v5

    goto :goto_5

    :cond_5
    move v3, v4

    goto :goto_3

    :cond_6
    move v0, v4

    move v1, v5

    goto :goto_5
.end method

.method static len(Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/LuaValue;
    .locals 1

    invoke-virtual {p0}, Lorg/luaj/vm2/LuaValue;->checkstring()Lorg/luaj/vm2/LuaString;

    move-result-object v0

    invoke-virtual {v0}, Lorg/luaj/vm2/LuaString;->len()Lorg/luaj/vm2/LuaValue;

    move-result-object v0

    return-object v0
.end method

.method static lower(Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/LuaValue;
    .locals 1

    invoke-virtual {p0}, Lorg/luaj/vm2/LuaValue;->checkjstring()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/luaj/vm2/lib/StringLib;->valueOf(Ljava/lang/String;)Lorg/luaj/vm2/LuaString;

    move-result-object v0

    return-object v0
.end method

.method static match(Lorg/luaj/vm2/Varargs;)Lorg/luaj/vm2/Varargs;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/luaj/vm2/lib/StringLib;->str_find_aux(Lorg/luaj/vm2/Varargs;Z)Lorg/luaj/vm2/Varargs;

    move-result-object v0

    return-object v0
.end method

.method static rep(Lorg/luaj/vm2/Varargs;)Lorg/luaj/vm2/Varargs;
    .locals 6

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/luaj/vm2/Varargs;->checkstring(I)Lorg/luaj/vm2/LuaString;

    move-result-object v2

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lorg/luaj/vm2/Varargs;->checkint(I)I

    move-result v0

    invoke-virtual {v2}, Lorg/luaj/vm2/LuaString;->length()I

    move-result v3

    mul-int/2addr v0, v3

    new-array v3, v0, [B

    invoke-virtual {v2}, Lorg/luaj/vm2/LuaString;->length()I

    move-result v4

    move v0, v1

    :goto_0
    array-length v5, v3

    if-ge v0, v5, :cond_0

    invoke-virtual {v2, v1, v3, v0, v4}, Lorg/luaj/vm2/LuaString;->copyInto(I[BII)V

    add-int/2addr v0, v4

    goto :goto_0

    :cond_0
    invoke-static {v3}, Lorg/luaj/vm2/LuaString;->valueOf([B)Lorg/luaj/vm2/LuaString;

    move-result-object v0

    return-object v0
.end method

.method static reverse(Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/LuaValue;
    .locals 6

    invoke-virtual {p0}, Lorg/luaj/vm2/LuaValue;->checkstring()Lorg/luaj/vm2/LuaString;

    move-result-object v2

    invoke-virtual {v2}, Lorg/luaj/vm2/LuaString;->length()I

    move-result v3

    new-array v4, v3, [B

    const/4 v1, 0x0

    add-int/lit8 v0, v3, -0x1

    :goto_0
    if-ge v1, v3, :cond_0

    invoke-virtual {v2, v1}, Lorg/luaj/vm2/LuaString;->luaByte(I)I

    move-result v5

    int-to-byte v5, v5

    aput-byte v5, v4, v0

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    invoke-static {v4}, Lorg/luaj/vm2/LuaString;->valueOf([B)Lorg/luaj/vm2/LuaString;

    move-result-object v0

    return-object v0
.end method

.method static str_find_aux(Lorg/luaj/vm2/Varargs;Z)Lorg/luaj/vm2/Varargs;
    .locals 10

    const/4 v9, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v1}, Lorg/luaj/vm2/Varargs;->checkstring(I)Lorg/luaj/vm2/LuaString;

    move-result-object v6

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lorg/luaj/vm2/Varargs;->checkstring(I)Lorg/luaj/vm2/LuaString;

    move-result-object v3

    const/4 v0, 0x3

    invoke-virtual {p0, v0, v1}, Lorg/luaj/vm2/Varargs;->optint(II)I

    move-result v4

    if-lez v4, :cond_2

    add-int/lit8 v0, v4, -0x1

    invoke-virtual {v6}, Lorg/luaj/vm2/LuaString;->length()I

    move-result v4

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    :cond_0
    :goto_0
    if-eqz p1, :cond_3

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lorg/luaj/vm2/Varargs;->arg(I)Lorg/luaj/vm2/LuaValue;

    move-result-object v0

    invoke-virtual {v0}, Lorg/luaj/vm2/LuaValue;->toboolean()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lorg/luaj/vm2/lib/StringLib;->a:Lorg/luaj/vm2/LuaString;

    invoke-virtual {v3, v0}, Lorg/luaj/vm2/LuaString;->indexOfAny(Lorg/luaj/vm2/LuaString;)I

    move-result v0

    if-ne v0, v9, :cond_3

    :cond_1
    move v0, v1

    :goto_1
    if-eqz v0, :cond_4

    invoke-virtual {v6, v3, v4}, Lorg/luaj/vm2/LuaString;->indexOf(Lorg/luaj/vm2/LuaString;I)I

    move-result v0

    if-eq v0, v9, :cond_7

    add-int/lit8 v1, v0, 0x1

    invoke-static {v1}, Lorg/luaj/vm2/lib/StringLib;->valueOf(I)Lorg/luaj/vm2/LuaInteger;

    move-result-object v1

    invoke-virtual {v3}, Lorg/luaj/vm2/LuaString;->length()I

    move-result v2

    add-int/2addr v0, v2

    invoke-static {v0}, Lorg/luaj/vm2/lib/StringLib;->valueOf(I)Lorg/luaj/vm2/LuaInteger;

    move-result-object v0

    invoke-static {v1, v0}, Lorg/luaj/vm2/lib/StringLib;->varargsOf(Lorg/luaj/vm2/LuaValue;Lorg/luaj/vm2/Varargs;)Lorg/luaj/vm2/Varargs;

    move-result-object v0

    :goto_2
    return-object v0

    :cond_2
    if-gez v4, :cond_0

    invoke-virtual {v6}, Lorg/luaj/vm2/LuaString;->length()I

    move-result v0

    add-int/2addr v0, v4

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v4

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_1

    :cond_4
    new-instance v7, Lorg/luaj/vm2/lib/StringLib$MatchState;

    invoke-direct {v7, p0, v6, v3}, Lorg/luaj/vm2/lib/StringLib$MatchState;-><init>(Lorg/luaj/vm2/Varargs;Lorg/luaj/vm2/LuaString;Lorg/luaj/vm2/LuaString;)V

    invoke-virtual {v3, v2}, Lorg/luaj/vm2/LuaString;->luaByte(I)I

    move-result v0

    const/16 v3, 0x5e

    if-ne v0, v3, :cond_9

    move v0, v1

    move v3, v1

    :goto_3
    invoke-virtual {v7}, Lorg/luaj/vm2/lib/StringLib$MatchState;->reset()V

    invoke-virtual {v7, v4, v0}, Lorg/luaj/vm2/lib/StringLib$MatchState;->match(II)I

    move-result v5

    if-eq v5, v9, :cond_6

    if-eqz p1, :cond_5

    add-int/lit8 v0, v4, 0x1

    invoke-static {v0}, Lorg/luaj/vm2/lib/StringLib;->valueOf(I)Lorg/luaj/vm2/LuaInteger;

    move-result-object v0

    invoke-static {v5}, Lorg/luaj/vm2/lib/StringLib;->valueOf(I)Lorg/luaj/vm2/LuaInteger;

    move-result-object v1

    invoke-virtual {v7, v2, v4, v5}, Lorg/luaj/vm2/lib/StringLib$MatchState;->push_captures(ZII)Lorg/luaj/vm2/Varargs;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/luaj/vm2/lib/StringLib;->varargsOf(Lorg/luaj/vm2/LuaValue;Lorg/luaj/vm2/LuaValue;Lorg/luaj/vm2/Varargs;)Lorg/luaj/vm2/Varargs;

    move-result-object v0

    goto :goto_2

    :cond_5
    invoke-virtual {v7, v1, v4, v5}, Lorg/luaj/vm2/lib/StringLib$MatchState;->push_captures(ZII)Lorg/luaj/vm2/Varargs;

    move-result-object v0

    goto :goto_2

    :cond_6
    add-int/lit8 v5, v4, 0x1

    invoke-virtual {v6}, Lorg/luaj/vm2/LuaString;->length()I

    move-result v8

    if-ge v4, v8, :cond_7

    if-eqz v3, :cond_8

    :cond_7
    sget-object v0, Lorg/luaj/vm2/lib/StringLib;->NIL:Lorg/luaj/vm2/LuaValue;

    goto :goto_2

    :cond_8
    move v4, v5

    goto :goto_3

    :cond_9
    move v0, v2

    move v3, v2

    goto :goto_3
.end method

.method static sub(Lorg/luaj/vm2/Varargs;)Lorg/luaj/vm2/Varargs;
    .locals 6

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lorg/luaj/vm2/Varargs;->checkstring(I)Lorg/luaj/vm2/LuaString;

    move-result-object v4

    invoke-virtual {v4}, Lorg/luaj/vm2/LuaString;->length()I

    move-result v0

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lorg/luaj/vm2/Varargs;->checkint(I)I

    move-result v1

    invoke-static {v1, v0}, Lorg/luaj/vm2/lib/StringLib;->a(II)I

    move-result v3

    const/4 v1, 0x3

    const/4 v5, -0x1

    invoke-virtual {p0, v1, v5}, Lorg/luaj/vm2/Varargs;->optint(II)I

    move-result v1

    invoke-static {v1, v0}, Lorg/luaj/vm2/lib/StringLib;->a(II)I

    move-result v1

    if-gtz v3, :cond_2

    :goto_0
    if-le v1, v0, :cond_1

    :goto_1
    if-gt v2, v0, :cond_0

    add-int/lit8 v1, v2, -0x1

    invoke-virtual {v4, v1, v0}, Lorg/luaj/vm2/LuaString;->substring(II)Lorg/luaj/vm2/LuaString;

    move-result-object v0

    :goto_2
    return-object v0

    :cond_0
    sget-object v0, Lorg/luaj/vm2/lib/StringLib;->EMPTYSTRING:Lorg/luaj/vm2/LuaString;

    goto :goto_2

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    move v2, v3

    goto :goto_0
.end method

.method static upper(Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/LuaValue;
    .locals 1

    invoke-virtual {p0}, Lorg/luaj/vm2/LuaValue;->checkjstring()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/luaj/vm2/lib/StringLib;->valueOf(Ljava/lang/String;)Lorg/luaj/vm2/LuaString;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public call(Lorg/luaj/vm2/LuaValue;Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/LuaValue;
    .locals 9

    const/4 v8, 0x4

    const/4 v4, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    new-instance v1, Lorg/luaj/vm2/LuaTable;

    invoke-direct {v1}, Lorg/luaj/vm2/LuaTable;-><init>()V

    sget-object v0, Lorg/luaj/vm2/lib/StringLib;->class$org$luaj$vm2$lib$StringLib$StringLib1:Ljava/lang/Class;

    if-nez v0, :cond_1

    const-string/jumbo v0, "org.luaj.vm2.lib.StringLib$StringLib1"

    invoke-static {v0}, Lorg/luaj/vm2/lib/StringLib;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/luaj/vm2/lib/StringLib;->class$org$luaj$vm2$lib$StringLib$StringLib1:Ljava/lang/Class;

    :goto_0
    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "dump"

    aput-object v3, v2, v5

    const-string/jumbo v3, "len"

    aput-object v3, v2, v6

    const-string/jumbo v3, "lower"

    aput-object v3, v2, v7

    const-string/jumbo v3, "reverse"

    aput-object v3, v2, v4

    const-string/jumbo v3, "upper"

    aput-object v3, v2, v8

    invoke-virtual {p0, v1, v0, v2}, Lorg/luaj/vm2/lib/StringLib;->bind(Lorg/luaj/vm2/LuaValue;Ljava/lang/Class;[Ljava/lang/String;)V

    sget-object v0, Lorg/luaj/vm2/lib/StringLib;->class$org$luaj$vm2$lib$StringLib$StringLibV:Ljava/lang/Class;

    if-nez v0, :cond_2

    const-string/jumbo v0, "org.luaj.vm2.lib.StringLib$StringLibV"

    invoke-static {v0}, Lorg/luaj/vm2/lib/StringLib;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/luaj/vm2/lib/StringLib;->class$org$luaj$vm2$lib$StringLib$StringLibV:Ljava/lang/Class;

    :goto_1
    const/16 v2, 0x9

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "byte"

    aput-object v3, v2, v5

    const-string/jumbo v3, "char"

    aput-object v3, v2, v6

    const-string/jumbo v3, "find"

    aput-object v3, v2, v7

    const-string/jumbo v3, "format"

    aput-object v3, v2, v4

    const-string/jumbo v3, "gmatch"

    aput-object v3, v2, v8

    const/4 v3, 0x5

    const-string/jumbo v4, "gsub"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string/jumbo v4, "match"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string/jumbo v4, "rep"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string/jumbo v4, "sub"

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v0, v2}, Lorg/luaj/vm2/lib/StringLib;->bind(Lorg/luaj/vm2/LuaValue;Ljava/lang/Class;[Ljava/lang/String;)V

    const-string/jumbo v0, "string"

    invoke-virtual {p2, v0, v1}, Lorg/luaj/vm2/LuaValue;->set(Ljava/lang/String;Lorg/luaj/vm2/LuaValue;)V

    sput-object v1, Lorg/luaj/vm2/lib/StringLib;->instance:Lorg/luaj/vm2/LuaTable;

    sget-object v0, Lorg/luaj/vm2/LuaString;->s_metatable:Lorg/luaj/vm2/LuaValue;

    if-nez v0, :cond_0

    new-array v0, v7, [Lorg/luaj/vm2/LuaValue;

    sget-object v2, Lorg/luaj/vm2/lib/StringLib;->INDEX:Lorg/luaj/vm2/LuaString;

    aput-object v2, v0, v5

    aput-object v1, v0, v6

    invoke-static {v0}, Lorg/luaj/vm2/lib/StringLib;->tableOf([Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/LuaTable;

    move-result-object v0

    sput-object v0, Lorg/luaj/vm2/LuaString;->s_metatable:Lorg/luaj/vm2/LuaValue;

    :cond_0
    const-string/jumbo v0, "package"

    invoke-virtual {p2, v0}, Lorg/luaj/vm2/LuaValue;->get(Ljava/lang/String;)Lorg/luaj/vm2/LuaValue;

    move-result-object v0

    const-string/jumbo v2, "loaded"

    invoke-virtual {v0, v2}, Lorg/luaj/vm2/LuaValue;->get(Ljava/lang/String;)Lorg/luaj/vm2/LuaValue;

    move-result-object v0

    const-string/jumbo v2, "string"

    invoke-virtual {v0, v2, v1}, Lorg/luaj/vm2/LuaValue;->set(Ljava/lang/String;Lorg/luaj/vm2/LuaValue;)V

    return-object v1

    :cond_1
    sget-object v0, Lorg/luaj/vm2/lib/StringLib;->class$org$luaj$vm2$lib$StringLib$StringLib1:Ljava/lang/Class;

    goto/16 :goto_0

    :cond_2
    sget-object v0, Lorg/luaj/vm2/lib/StringLib;->class$org$luaj$vm2$lib$StringLib$StringLibV:Ljava/lang/Class;

    goto :goto_1
.end method
