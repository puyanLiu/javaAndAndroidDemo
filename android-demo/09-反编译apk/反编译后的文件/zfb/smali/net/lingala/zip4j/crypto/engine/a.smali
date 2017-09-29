.class public final Lnet/lingala/zip4j/crypto/engine/a;
.super Ljava/lang/Object;
.source "AESEngine.java"


# static fields
.field private static final g:[B

.field private static final h:[I

.field private static final i:[I


# instance fields
.field private a:I

.field private b:[[I

.field private c:I

.field private d:I

.field private e:I

.field private f:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x100

    .line 197
    new-array v0, v1, [B

    fill-array-data v0, :array_0

    sput-object v0, Lnet/lingala/zip4j/crypto/engine/a;->g:[B

    .line 232
    const/16 v0, 0x1e

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lnet/lingala/zip4j/crypto/engine/a;->h:[I

    .line 236
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Lnet/lingala/zip4j/crypto/engine/a;->i:[I

    return-void

    .line 197
    :array_0
    .array-data 1
        0x63t
        0x7ct
        0x77t
        0x7bt
        -0xet
        0x6bt
        0x6ft
        -0x3bt
        0x30t
        0x1t
        0x67t
        0x2bt
        -0x2t
        -0x29t
        -0x55t
        0x76t
        -0x36t
        -0x7et
        -0x37t
        0x7dt
        -0x6t
        0x59t
        0x47t
        -0x10t
        -0x53t
        -0x2ct
        -0x5et
        -0x51t
        -0x64t
        -0x5ct
        0x72t
        -0x40t
        -0x49t
        -0x3t
        -0x6dt
        0x26t
        0x36t
        0x3ft
        -0x9t
        -0x34t
        0x34t
        -0x5bt
        -0x1bt
        -0xft
        0x71t
        -0x28t
        0x31t
        0x15t
        0x4t
        -0x39t
        0x23t
        -0x3dt
        0x18t
        -0x6at
        0x5t
        -0x66t
        0x7t
        0x12t
        -0x80t
        -0x1et
        -0x15t
        0x27t
        -0x4et
        0x75t
        0x9t
        -0x7dt
        0x2ct
        0x1at
        0x1bt
        0x6et
        0x5at
        -0x60t
        0x52t
        0x3bt
        -0x2at
        -0x4dt
        0x29t
        -0x1dt
        0x2ft
        -0x7ct
        0x53t
        -0x2ft
        0x0t
        -0x13t
        0x20t
        -0x4t
        -0x4ft
        0x5bt
        0x6at
        -0x35t
        -0x42t
        0x39t
        0x4at
        0x4ct
        0x58t
        -0x31t
        -0x30t
        -0x11t
        -0x56t
        -0x5t
        0x43t
        0x4dt
        0x33t
        -0x7bt
        0x45t
        -0x7t
        0x2t
        0x7ft
        0x50t
        0x3ct
        -0x61t
        -0x58t
        0x51t
        -0x5dt
        0x40t
        -0x71t
        -0x6et
        -0x63t
        0x38t
        -0xbt
        -0x44t
        -0x4at
        -0x26t
        0x21t
        0x10t
        -0x1t
        -0xdt
        -0x2et
        -0x33t
        0xct
        0x13t
        -0x14t
        0x5ft
        -0x69t
        0x44t
        0x17t
        -0x3ct
        -0x59t
        0x7et
        0x3dt
        0x64t
        0x5dt
        0x19t
        0x73t
        0x60t
        -0x7ft
        0x4ft
        -0x24t
        0x22t
        0x2at
        -0x70t
        -0x78t
        0x46t
        -0x12t
        -0x48t
        0x14t
        -0x22t
        0x5et
        0xbt
        -0x25t
        -0x20t
        0x32t
        0x3at
        0xat
        0x49t
        0x6t
        0x24t
        0x5ct
        -0x3et
        -0x2dt
        -0x54t
        0x62t
        -0x6ft
        -0x6bt
        -0x1ct
        0x79t
        -0x19t
        -0x38t
        0x37t
        0x6dt
        -0x73t
        -0x2bt
        0x4et
        -0x57t
        0x6ct
        0x56t
        -0xct
        -0x16t
        0x65t
        0x7at
        -0x52t
        0x8t
        -0x46t
        0x78t
        0x25t
        0x2et
        0x1ct
        -0x5at
        -0x4ct
        -0x3at
        -0x18t
        -0x23t
        0x74t
        0x1ft
        0x4bt
        -0x43t
        -0x75t
        -0x76t
        0x70t
        0x3et
        -0x4bt
        0x66t
        0x48t
        0x3t
        -0xat
        0xet
        0x61t
        0x35t
        0x57t
        -0x47t
        -0x7at
        -0x3ft
        0x1dt
        -0x62t
        -0x1ft
        -0x8t
        -0x68t
        0x11t
        0x69t
        -0x27t
        -0x72t
        -0x6ct
        -0x65t
        0x1et
        -0x79t
        -0x17t
        -0x32t
        0x55t
        0x28t
        -0x21t
        -0x74t
        -0x5ft
        -0x77t
        0xdt
        -0x41t
        -0x1at
        0x42t
        0x68t
        0x41t
        -0x67t
        0x2dt
        0xft
        -0x50t
        0x54t
        -0x45t
        0x16t
    .end array-data

    .line 232
    :array_1
    .array-data 4
        0x1
        0x2
        0x4
        0x8
        0x10
        0x20
        0x40
        0x80
        0x1b
        0x36
        0x6c
        0xd8
        0xab
        0x4d
        0x9a
        0x2f
        0x5e
        0xbc
        0x63
        0xc6
        0x97
        0x35
        0x6a
        0xd4
        0xb3
        0x7d
        0xfa
        0xef
        0xc5
        0x91
    .end array-data

    .line 236
    :array_2
    .array-data 4
        -0x5a9c9c3a
        -0x7b838308
        -0x66888812
        -0x7284840a
        0xdf2f2ff
        -0x4294942a
        -0x4e909022
        0x54c5c591
        0x50303060
        0x3010102
        -0x56989832
        0x7d2b2b56
        0x19fefee7
        0x62d7d7b5
        -0x195454b3
        -0x65898914
        0x45caca8f
        -0x627d7de1
        0x40c9c989
        -0x78828206
        0x15fafaef
        -0x14a6a64e
        -0x36b8b872
        0xbf0f0fb
        -0x135252bf
        0x67d4d4b3
        -0x25d5da1
        -0x155050bb
        -0x406363dd
        -0x85b5bad
        -0x698d8d1c
        0x5bc0c09b
        -0x3d48488b
        0x1cfdfde1
        -0x516c6cc3
        0x6a26264c
        0x5a36366c
        0x413f3f7e
        0x2f7f7f5
        0x4fcccc83
        0x5c343468
        -0xb5a5aaf
        0x34e5e5d1
        0x8f1f1f9
        -0x6c8e8e1e
        0x73d8d8ab
        0x53313162
        0x3f15152a
        0xc040408
        0x52c7c795
        0x65232346
        0x5ec3c39d
        0x28181830
        -0x5e6969c9
        0xf05050a
        -0x4a6565d1
        0x907070e
        0x36121224
        -0x647f7fe5
        0x3de2e2df
        0x26ebebcd
        0x6927274e
        -0x324d4d81
        -0x608a8a16
        0x1b090912
        -0x617c7ce3
        0x742c2c58
        0x2e1a1a34
        0x2d1b1b36
        -0x4d919124
        -0x11a5a54c
        -0x45f5fa5
        -0x9adad5c
        0x4d3b3b76    # 1.96327264E8f
        0x61d6d6b7
        -0x314c4c83
        0x7b292952
        0x3ee3e3dd
        0x712f2f5e
        -0x687b7bed
        -0xaacac5a
        0x68d1d1b9
        0x0
        0x2cededc1
        0x60202040
        0x1ffcfce3
        -0x374e4e87
        -0x12a4a44a
        -0x4195952c
        0x46cbcb8d
        -0x26414199
        0x4b393972    # 1.2138866E7f
        -0x21b5b56c
        -0x2bb3b368
        -0x17a7a750
        0x4acfcf85    # 6809538.5f
        0x6bd0d0bb
        0x2aefefc5
        -0x1a5555b1
        0x16fbfbed
        -0x3abcbc7a
        -0x28b2b266
        0x55333366
        -0x6b7a7aef
        -0x30baba76
        0x10f9f9e9
        0x6020204
        -0x7e808002
        -0xfafaf60
        0x443c3c78
        -0x456060db
        -0x1c5757b5
        -0xcaeae5e
        -0x15c5ca3
        -0x3fbfbf80
        -0x757070fb
        -0x526d6dc1
        -0x436262df
        0x48383870    # 188641.75f
        0x4f5f5f1
        -0x2043439d
        -0x3e494989
        0x75dadaaf
        0x63212142
        0x30101020
        0x1affffe5
        0xef3f3fd
        0x6dd2d2bf
        0x4ccdcd81    # 1.07899912E8f
        0x140c0c18
        0x35131326
        0x2fececc3
        -0x1ea0a042
        -0x5d6868cb
        -0x33bbbb78    # -5.14504E7f
        0x3917172e
        0x57c4c493
        -0xd5858ab
        -0x7d818104
        0x473d3d7a
        -0x539b9b38
        -0x18a2a246
        0x2b191932
        -0x6a8c8c1a
        -0x5f9f9f40
        -0x677e7ee7
        -0x2eb0b062
        0x7fdcdca3
        0x66222244
        0x7e2a2a54
        -0x546f6fc5
        -0x7c7777f5
        -0x35b9b974    # -3248547.0f
        0x29eeeec7
        -0x2c474795
        0x3c141428
        0x79dedea7
        -0x1da1a144
        0x1d0b0b16
        0x76dbdbad
        0x3be0e0db
        0x56323264
        0x4e3a3a74
        0x1e0a0a14
        -0x24b6b66e
        0xa06060c
        0x6c242448
        -0x1ba3a348
        0x5dc2c29f
        0x6ed3d3bd
        -0x105353bd
        -0x599d9d3c
        -0x576e6ec7
        -0x5b6a6acf
        0x37e4e4d3
        -0x7486860e
        0x32e7e7d5
        0x43c8c88b
        0x5937376e
        -0x48929226
        -0x737272ff
        0x64d5d5b1
        -0x2db1b164
        -0x1f5656b7
        -0x4b939328
        -0x5a9a954
        0x7f4f4f3
        0x25eaeacf
        -0x509a9a36
        -0x7185850c
        -0x165151b9
        0x18080810
        -0x2a454591
        -0x77878710
        0x6f25254a
        0x722e2e5c
        0x241c1c38
        -0xe5959a9
        -0x384b4b8d
        0x51c6c697
        0x23e8e8cb
        0x7cdddda1
        -0x638b8b18
        0x211f1f3e
        -0x22b4b46a
        -0x2342429f
        -0x797474f3
        -0x7a7575f1
        -0x6f8f8f20
        0x423e3e7c
        -0x3b4a4a8f
        -0x55999934
        -0x27b7b770
        0x5030306
        0x1f6f6f7
        0x120e0e1c
        -0x5c9e9e3e
        0x5f35356a
        -0x6a8a852
        -0x2f464697
        -0x6e7979e9
        0x58c1c199
        0x271d1d3a
        -0x466161d9
        0x38e1e1d9
        0x13f8f8eb
        -0x4c6767d5
        0x33111122
        -0x4496962e
        0x70d9d9a9
        -0x767171f9
        -0x586b6bcd
        -0x496464d3
        0x221e1e3c
        -0x6d7878eb
        0x20e9e9c9
        0x49cece87
        -0xaaaa56
        0x78282850
        0x7adfdfa5
        -0x707373fd
        -0x75e5ea7
        -0x7f7676f7
        0x170d0d1a
        -0x2540409b
        0x31e6e6d7
        -0x39bdbd7c
        -0x47979730
        -0x3cbebe7e
        -0x4f6666d7
        0x772d2d5a
        0x110f0f1e
        -0x344f4f85    # -2.315903E7f
        -0x3abab58
        -0x29444493
        0x3a16162c
    .end array-data
.end method

.method public constructor <init>([B)V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/lingala/zip4j/crypto/engine/a;->b:[[I

    .line 34
    invoke-direct {p0, p1}, Lnet/lingala/zip4j/crypto/engine/a;->a([B)[[I

    move-result-object v0

    iput-object v0, p0, Lnet/lingala/zip4j/crypto/engine/a;->b:[[I

    .line 35
    return-void
.end method

.method private static a(I)I
    .locals 3

    .prologue
    .line 194
    sget-object v0, Lnet/lingala/zip4j/crypto/engine/a;->g:[B

    and-int/lit16 v1, p0, 0xff

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    sget-object v1, Lnet/lingala/zip4j/crypto/engine/a;->g:[B

    shr-int/lit8 v2, p0, 0x8

    and-int/lit16 v2, v2, 0xff

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    sget-object v1, Lnet/lingala/zip4j/crypto/engine/a;->g:[B

    shr-int/lit8 v2, p0, 0x10

    and-int/lit16 v2, v2, 0xff

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    sget-object v1, Lnet/lingala/zip4j/crypto/engine/a;->g:[B

    shr-int/lit8 v2, p0, 0x18

    and-int/lit16 v2, v2, 0xff

    aget-byte v1, v1, v2

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    return v0
.end method

.method private static a(II)I
    .locals 2

    .prologue
    .line 190
    ushr-int v0, p0, p1

    neg-int v1, p1

    shl-int v1, p0, v1

    or-int/2addr v0, v1

    return v0
.end method

.method private a([B)[[I
    .locals 12

    .prologue
    const/16 v11, 0x8

    const/4 v10, 0x6

    const/4 v1, 0x0

    const/4 v9, 0x4

    .line 42
    array-length v0, p1

    div-int/lit8 v3, v0, 0x4

    .line 45
    if-eq v3, v9, :cond_0

    if-eq v3, v10, :cond_0

    if-ne v3, v11, :cond_1

    :cond_0
    mul-int/lit8 v0, v3, 0x4

    array-length v2, p1

    if-eq v0, v2, :cond_2

    .line 47
    :cond_1
    new-instance v0, Lnet/lingala/zip4j/exception/a;

    const-string/jumbo v1, "invalid key length (not 128/192/256)"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/a;-><init>(Ljava/lang/String;)V

    throw v0

    .line 50
    :cond_2
    add-int/lit8 v0, v3, 0x6

    iput v0, p0, Lnet/lingala/zip4j/crypto/engine/a;->a:I

    .line 51
    iget v0, p0, Lnet/lingala/zip4j/crypto/engine/a;->a:I

    add-int/lit8 v0, v0, 0x1

    filled-new-array {v0, v9}, [I

    move-result-object v0

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    move v2, v1

    .line 55
    :goto_0
    array-length v4, p1

    if-ge v1, v4, :cond_3

    .line 57
    shr-int/lit8 v4, v2, 0x2

    aget-object v4, v0, v4

    and-int/lit8 v5, v2, 0x3

    aget-byte v6, p1, v1

    and-int/lit16 v6, v6, 0xff

    add-int/lit8 v7, v1, 0x1

    aget-byte v7, p1, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v6, v7

    add-int/lit8 v7, v1, 0x2

    aget-byte v7, p1, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x10

    or-int/2addr v6, v7

    add-int/lit8 v7, v1, 0x3

    aget-byte v7, p1, v7

    shl-int/lit8 v7, v7, 0x18

    or-int/2addr v6, v7

    aput v6, v4, v5

    .line 58
    add-int/lit8 v1, v1, 0x4

    .line 59
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 62
    :cond_3
    iget v1, p0, Lnet/lingala/zip4j/crypto/engine/a;->a:I

    add-int/lit8 v1, v1, 0x1

    shl-int/lit8 v4, v1, 0x2

    move v2, v3

    .line 63
    :goto_1
    if-ge v2, v4, :cond_6

    .line 65
    add-int/lit8 v1, v2, -0x1

    shr-int/lit8 v1, v1, 0x2

    aget-object v1, v0, v1

    add-int/lit8 v5, v2, -0x1

    and-int/lit8 v5, v5, 0x3

    aget v1, v1, v5

    .line 66
    rem-int v5, v2, v3

    if-nez v5, :cond_5

    .line 68
    invoke-static {v1, v11}, Lnet/lingala/zip4j/crypto/engine/a;->a(II)I

    move-result v1

    invoke-static {v1}, Lnet/lingala/zip4j/crypto/engine/a;->a(I)I

    move-result v1

    sget-object v5, Lnet/lingala/zip4j/crypto/engine/a;->h:[I

    div-int v6, v2, v3

    add-int/lit8 v6, v6, -0x1

    aget v5, v5, v6

    xor-int/2addr v1, v5

    .line 75
    :cond_4
    :goto_2
    shr-int/lit8 v5, v2, 0x2

    aget-object v5, v0, v5

    and-int/lit8 v6, v2, 0x3

    sub-int v7, v2, v3

    shr-int/lit8 v7, v7, 0x2

    aget-object v7, v0, v7

    sub-int v8, v2, v3

    and-int/lit8 v8, v8, 0x3

    aget v7, v7, v8

    xor-int/2addr v1, v7

    aput v1, v5, v6

    .line 63
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    .line 70
    :cond_5
    if-le v3, v10, :cond_4

    rem-int v5, v2, v3

    if-ne v5, v9, :cond_4

    .line 72
    invoke-static {v1}, Lnet/lingala/zip4j/crypto/engine/a;->a(I)I

    move-result v1

    goto :goto_2

    .line 77
    :cond_6
    return-object v0
.end method


# virtual methods
.method public final a([B[B)I
    .locals 9

    .prologue
    .line 85
    iget-object v0, p0, Lnet/lingala/zip4j/crypto/engine/a;->b:[[I

    if-nez v0, :cond_0

    .line 87
    new-instance v0, Lnet/lingala/zip4j/exception/a;

    const-string/jumbo v1, "AES engine not initialised"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/a;-><init>(Ljava/lang/String;)V

    throw v0

    .line 90
    :cond_0
    const/16 v0, 0x10

    array-length v1, p1

    if-le v0, v1, :cond_1

    .line 92
    new-instance v0, Lnet/lingala/zip4j/exception/a;

    const-string/jumbo v1, "input buffer too short"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/a;-><init>(Ljava/lang/String;)V

    throw v0

    .line 95
    :cond_1
    const/16 v0, 0x10

    array-length v1, p2

    if-le v0, v1, :cond_2

    .line 97
    new-instance v0, Lnet/lingala/zip4j/exception/a;

    const-string/jumbo v1, "output buffer too short"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/a;-><init>(Ljava/lang/String;)V

    throw v0

    .line 100
    :cond_2
    const/4 v0, 0x0

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Lnet/lingala/zip4j/crypto/engine/a;->c:I

    iget v0, p0, Lnet/lingala/zip4j/crypto/engine/a;->c:I

    const/4 v1, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    iput v0, p0, Lnet/lingala/zip4j/crypto/engine/a;->c:I

    iget v0, p0, Lnet/lingala/zip4j/crypto/engine/a;->c:I

    const/4 v1, 0x2

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    iput v0, p0, Lnet/lingala/zip4j/crypto/engine/a;->c:I

    iget v0, p0, Lnet/lingala/zip4j/crypto/engine/a;->c:I

    const/4 v1, 0x3

    aget-byte v1, p1, v1

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    iput v0, p0, Lnet/lingala/zip4j/crypto/engine/a;->c:I

    const/4 v0, 0x4

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Lnet/lingala/zip4j/crypto/engine/a;->d:I

    iget v0, p0, Lnet/lingala/zip4j/crypto/engine/a;->d:I

    const/4 v1, 0x5

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    iput v0, p0, Lnet/lingala/zip4j/crypto/engine/a;->d:I

    iget v0, p0, Lnet/lingala/zip4j/crypto/engine/a;->d:I

    const/4 v1, 0x6

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    iput v0, p0, Lnet/lingala/zip4j/crypto/engine/a;->d:I

    iget v0, p0, Lnet/lingala/zip4j/crypto/engine/a;->d:I

    const/4 v1, 0x7

    aget-byte v1, p1, v1

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    iput v0, p0, Lnet/lingala/zip4j/crypto/engine/a;->d:I

    const/16 v0, 0x8

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Lnet/lingala/zip4j/crypto/engine/a;->e:I

    iget v0, p0, Lnet/lingala/zip4j/crypto/engine/a;->e:I

    const/16 v1, 0x9

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    iput v0, p0, Lnet/lingala/zip4j/crypto/engine/a;->e:I

    iget v0, p0, Lnet/lingala/zip4j/crypto/engine/a;->e:I

    const/16 v1, 0xa

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    iput v0, p0, Lnet/lingala/zip4j/crypto/engine/a;->e:I

    iget v0, p0, Lnet/lingala/zip4j/crypto/engine/a;->e:I

    const/16 v1, 0xb

    aget-byte v1, p1, v1

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    iput v0, p0, Lnet/lingala/zip4j/crypto/engine/a;->e:I

    const/16 v0, 0xc

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Lnet/lingala/zip4j/crypto/engine/a;->f:I

    iget v0, p0, Lnet/lingala/zip4j/crypto/engine/a;->f:I

    const/16 v1, 0xd

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    iput v0, p0, Lnet/lingala/zip4j/crypto/engine/a;->f:I

    iget v0, p0, Lnet/lingala/zip4j/crypto/engine/a;->f:I

    const/16 v1, 0xe

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    iput v0, p0, Lnet/lingala/zip4j/crypto/engine/a;->f:I

    iget v0, p0, Lnet/lingala/zip4j/crypto/engine/a;->f:I

    const/16 v1, 0xf

    aget-byte v1, p1, v1

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    iput v0, p0, Lnet/lingala/zip4j/crypto/engine/a;->f:I

    .line 101
    iget-object v1, p0, Lnet/lingala/zip4j/crypto/engine/a;->b:[[I

    iget v0, p0, Lnet/lingala/zip4j/crypto/engine/a;->c:I

    const/4 v2, 0x0

    aget-object v2, v1, v2

    const/4 v3, 0x0

    aget v2, v2, v3

    xor-int/2addr v0, v2

    iput v0, p0, Lnet/lingala/zip4j/crypto/engine/a;->c:I

    iget v0, p0, Lnet/lingala/zip4j/crypto/engine/a;->d:I

    const/4 v2, 0x0

    aget-object v2, v1, v2

    const/4 v3, 0x1

    aget v2, v2, v3

    xor-int/2addr v0, v2

    iput v0, p0, Lnet/lingala/zip4j/crypto/engine/a;->d:I

    iget v0, p0, Lnet/lingala/zip4j/crypto/engine/a;->e:I

    const/4 v2, 0x0

    aget-object v2, v1, v2

    const/4 v3, 0x2

    aget v2, v2, v3

    xor-int/2addr v0, v2

    iput v0, p0, Lnet/lingala/zip4j/crypto/engine/a;->e:I

    iget v0, p0, Lnet/lingala/zip4j/crypto/engine/a;->f:I

    const/4 v2, 0x0

    aget-object v2, v1, v2

    const/4 v3, 0x3

    aget v2, v2, v3

    xor-int/2addr v0, v2

    iput v0, p0, Lnet/lingala/zip4j/crypto/engine/a;->f:I

    const/4 v0, 0x1

    :goto_0
    iget v2, p0, Lnet/lingala/zip4j/crypto/engine/a;->a:I

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_3

    sget-object v2, Lnet/lingala/zip4j/crypto/engine/a;->i:[I

    iget v3, p0, Lnet/lingala/zip4j/crypto/engine/a;->c:I

    and-int/lit16 v3, v3, 0xff

    aget v2, v2, v3

    sget-object v3, Lnet/lingala/zip4j/crypto/engine/a;->i:[I

    iget v4, p0, Lnet/lingala/zip4j/crypto/engine/a;->d:I

    shr-int/lit8 v4, v4, 0x8

    and-int/lit16 v4, v4, 0xff

    aget v3, v3, v4

    const/16 v4, 0x18

    invoke-static {v3, v4}, Lnet/lingala/zip4j/crypto/engine/a;->a(II)I

    move-result v3

    xor-int/2addr v2, v3

    sget-object v3, Lnet/lingala/zip4j/crypto/engine/a;->i:[I

    iget v4, p0, Lnet/lingala/zip4j/crypto/engine/a;->e:I

    shr-int/lit8 v4, v4, 0x10

    and-int/lit16 v4, v4, 0xff

    aget v3, v3, v4

    const/16 v4, 0x10

    invoke-static {v3, v4}, Lnet/lingala/zip4j/crypto/engine/a;->a(II)I

    move-result v3

    xor-int/2addr v2, v3

    sget-object v3, Lnet/lingala/zip4j/crypto/engine/a;->i:[I

    iget v4, p0, Lnet/lingala/zip4j/crypto/engine/a;->f:I

    shr-int/lit8 v4, v4, 0x18

    and-int/lit16 v4, v4, 0xff

    aget v3, v3, v4

    const/16 v4, 0x8

    invoke-static {v3, v4}, Lnet/lingala/zip4j/crypto/engine/a;->a(II)I

    move-result v3

    xor-int/2addr v2, v3

    aget-object v3, v1, v0

    const/4 v4, 0x0

    aget v3, v3, v4

    xor-int/2addr v2, v3

    sget-object v3, Lnet/lingala/zip4j/crypto/engine/a;->i:[I

    iget v4, p0, Lnet/lingala/zip4j/crypto/engine/a;->d:I

    and-int/lit16 v4, v4, 0xff

    aget v3, v3, v4

    sget-object v4, Lnet/lingala/zip4j/crypto/engine/a;->i:[I

    iget v5, p0, Lnet/lingala/zip4j/crypto/engine/a;->e:I

    shr-int/lit8 v5, v5, 0x8

    and-int/lit16 v5, v5, 0xff

    aget v4, v4, v5

    const/16 v5, 0x18

    invoke-static {v4, v5}, Lnet/lingala/zip4j/crypto/engine/a;->a(II)I

    move-result v4

    xor-int/2addr v3, v4

    sget-object v4, Lnet/lingala/zip4j/crypto/engine/a;->i:[I

    iget v5, p0, Lnet/lingala/zip4j/crypto/engine/a;->f:I

    shr-int/lit8 v5, v5, 0x10

    and-int/lit16 v5, v5, 0xff

    aget v4, v4, v5

    const/16 v5, 0x10

    invoke-static {v4, v5}, Lnet/lingala/zip4j/crypto/engine/a;->a(II)I

    move-result v4

    xor-int/2addr v3, v4

    sget-object v4, Lnet/lingala/zip4j/crypto/engine/a;->i:[I

    iget v5, p0, Lnet/lingala/zip4j/crypto/engine/a;->c:I

    shr-int/lit8 v5, v5, 0x18

    and-int/lit16 v5, v5, 0xff

    aget v4, v4, v5

    const/16 v5, 0x8

    invoke-static {v4, v5}, Lnet/lingala/zip4j/crypto/engine/a;->a(II)I

    move-result v4

    xor-int/2addr v3, v4

    aget-object v4, v1, v0

    const/4 v5, 0x1

    aget v4, v4, v5

    xor-int/2addr v3, v4

    sget-object v4, Lnet/lingala/zip4j/crypto/engine/a;->i:[I

    iget v5, p0, Lnet/lingala/zip4j/crypto/engine/a;->e:I

    and-int/lit16 v5, v5, 0xff

    aget v4, v4, v5

    sget-object v5, Lnet/lingala/zip4j/crypto/engine/a;->i:[I

    iget v6, p0, Lnet/lingala/zip4j/crypto/engine/a;->f:I

    shr-int/lit8 v6, v6, 0x8

    and-int/lit16 v6, v6, 0xff

    aget v5, v5, v6

    const/16 v6, 0x18

    invoke-static {v5, v6}, Lnet/lingala/zip4j/crypto/engine/a;->a(II)I

    move-result v5

    xor-int/2addr v4, v5

    sget-object v5, Lnet/lingala/zip4j/crypto/engine/a;->i:[I

    iget v6, p0, Lnet/lingala/zip4j/crypto/engine/a;->c:I

    shr-int/lit8 v6, v6, 0x10

    and-int/lit16 v6, v6, 0xff

    aget v5, v5, v6

    const/16 v6, 0x10

    invoke-static {v5, v6}, Lnet/lingala/zip4j/crypto/engine/a;->a(II)I

    move-result v5

    xor-int/2addr v4, v5

    sget-object v5, Lnet/lingala/zip4j/crypto/engine/a;->i:[I

    iget v6, p0, Lnet/lingala/zip4j/crypto/engine/a;->d:I

    shr-int/lit8 v6, v6, 0x18

    and-int/lit16 v6, v6, 0xff

    aget v5, v5, v6

    const/16 v6, 0x8

    invoke-static {v5, v6}, Lnet/lingala/zip4j/crypto/engine/a;->a(II)I

    move-result v5

    xor-int/2addr v4, v5

    aget-object v5, v1, v0

    const/4 v6, 0x2

    aget v5, v5, v6

    xor-int/2addr v4, v5

    sget-object v5, Lnet/lingala/zip4j/crypto/engine/a;->i:[I

    iget v6, p0, Lnet/lingala/zip4j/crypto/engine/a;->f:I

    and-int/lit16 v6, v6, 0xff

    aget v5, v5, v6

    sget-object v6, Lnet/lingala/zip4j/crypto/engine/a;->i:[I

    iget v7, p0, Lnet/lingala/zip4j/crypto/engine/a;->c:I

    shr-int/lit8 v7, v7, 0x8

    and-int/lit16 v7, v7, 0xff

    aget v6, v6, v7

    const/16 v7, 0x18

    invoke-static {v6, v7}, Lnet/lingala/zip4j/crypto/engine/a;->a(II)I

    move-result v6

    xor-int/2addr v5, v6

    sget-object v6, Lnet/lingala/zip4j/crypto/engine/a;->i:[I

    iget v7, p0, Lnet/lingala/zip4j/crypto/engine/a;->d:I

    shr-int/lit8 v7, v7, 0x10

    and-int/lit16 v7, v7, 0xff

    aget v6, v6, v7

    const/16 v7, 0x10

    invoke-static {v6, v7}, Lnet/lingala/zip4j/crypto/engine/a;->a(II)I

    move-result v6

    xor-int/2addr v5, v6

    sget-object v6, Lnet/lingala/zip4j/crypto/engine/a;->i:[I

    iget v7, p0, Lnet/lingala/zip4j/crypto/engine/a;->e:I

    shr-int/lit8 v7, v7, 0x18

    and-int/lit16 v7, v7, 0xff

    aget v6, v6, v7

    const/16 v7, 0x8

    invoke-static {v6, v7}, Lnet/lingala/zip4j/crypto/engine/a;->a(II)I

    move-result v6

    xor-int/2addr v5, v6

    add-int/lit8 v6, v0, 0x1

    aget-object v0, v1, v0

    const/4 v7, 0x3

    aget v0, v0, v7

    xor-int/2addr v0, v5

    sget-object v5, Lnet/lingala/zip4j/crypto/engine/a;->i:[I

    and-int/lit16 v7, v2, 0xff

    aget v5, v5, v7

    sget-object v7, Lnet/lingala/zip4j/crypto/engine/a;->i:[I

    shr-int/lit8 v8, v3, 0x8

    and-int/lit16 v8, v8, 0xff

    aget v7, v7, v8

    const/16 v8, 0x18

    invoke-static {v7, v8}, Lnet/lingala/zip4j/crypto/engine/a;->a(II)I

    move-result v7

    xor-int/2addr v5, v7

    sget-object v7, Lnet/lingala/zip4j/crypto/engine/a;->i:[I

    shr-int/lit8 v8, v4, 0x10

    and-int/lit16 v8, v8, 0xff

    aget v7, v7, v8

    const/16 v8, 0x10

    invoke-static {v7, v8}, Lnet/lingala/zip4j/crypto/engine/a;->a(II)I

    move-result v7

    xor-int/2addr v5, v7

    sget-object v7, Lnet/lingala/zip4j/crypto/engine/a;->i:[I

    shr-int/lit8 v8, v0, 0x18

    and-int/lit16 v8, v8, 0xff

    aget v7, v7, v8

    const/16 v8, 0x8

    invoke-static {v7, v8}, Lnet/lingala/zip4j/crypto/engine/a;->a(II)I

    move-result v7

    xor-int/2addr v5, v7

    aget-object v7, v1, v6

    const/4 v8, 0x0

    aget v7, v7, v8

    xor-int/2addr v5, v7

    iput v5, p0, Lnet/lingala/zip4j/crypto/engine/a;->c:I

    sget-object v5, Lnet/lingala/zip4j/crypto/engine/a;->i:[I

    and-int/lit16 v7, v3, 0xff

    aget v5, v5, v7

    sget-object v7, Lnet/lingala/zip4j/crypto/engine/a;->i:[I

    shr-int/lit8 v8, v4, 0x8

    and-int/lit16 v8, v8, 0xff

    aget v7, v7, v8

    const/16 v8, 0x18

    invoke-static {v7, v8}, Lnet/lingala/zip4j/crypto/engine/a;->a(II)I

    move-result v7

    xor-int/2addr v5, v7

    sget-object v7, Lnet/lingala/zip4j/crypto/engine/a;->i:[I

    shr-int/lit8 v8, v0, 0x10

    and-int/lit16 v8, v8, 0xff

    aget v7, v7, v8

    const/16 v8, 0x10

    invoke-static {v7, v8}, Lnet/lingala/zip4j/crypto/engine/a;->a(II)I

    move-result v7

    xor-int/2addr v5, v7

    sget-object v7, Lnet/lingala/zip4j/crypto/engine/a;->i:[I

    shr-int/lit8 v8, v2, 0x18

    and-int/lit16 v8, v8, 0xff

    aget v7, v7, v8

    const/16 v8, 0x8

    invoke-static {v7, v8}, Lnet/lingala/zip4j/crypto/engine/a;->a(II)I

    move-result v7

    xor-int/2addr v5, v7

    aget-object v7, v1, v6

    const/4 v8, 0x1

    aget v7, v7, v8

    xor-int/2addr v5, v7

    iput v5, p0, Lnet/lingala/zip4j/crypto/engine/a;->d:I

    sget-object v5, Lnet/lingala/zip4j/crypto/engine/a;->i:[I

    and-int/lit16 v7, v4, 0xff

    aget v5, v5, v7

    sget-object v7, Lnet/lingala/zip4j/crypto/engine/a;->i:[I

    shr-int/lit8 v8, v0, 0x8

    and-int/lit16 v8, v8, 0xff

    aget v7, v7, v8

    const/16 v8, 0x18

    invoke-static {v7, v8}, Lnet/lingala/zip4j/crypto/engine/a;->a(II)I

    move-result v7

    xor-int/2addr v5, v7

    sget-object v7, Lnet/lingala/zip4j/crypto/engine/a;->i:[I

    shr-int/lit8 v8, v2, 0x10

    and-int/lit16 v8, v8, 0xff

    aget v7, v7, v8

    const/16 v8, 0x10

    invoke-static {v7, v8}, Lnet/lingala/zip4j/crypto/engine/a;->a(II)I

    move-result v7

    xor-int/2addr v5, v7

    sget-object v7, Lnet/lingala/zip4j/crypto/engine/a;->i:[I

    shr-int/lit8 v8, v3, 0x18

    and-int/lit16 v8, v8, 0xff

    aget v7, v7, v8

    const/16 v8, 0x8

    invoke-static {v7, v8}, Lnet/lingala/zip4j/crypto/engine/a;->a(II)I

    move-result v7

    xor-int/2addr v5, v7

    aget-object v7, v1, v6

    const/4 v8, 0x2

    aget v7, v7, v8

    xor-int/2addr v5, v7

    iput v5, p0, Lnet/lingala/zip4j/crypto/engine/a;->e:I

    sget-object v5, Lnet/lingala/zip4j/crypto/engine/a;->i:[I

    and-int/lit16 v0, v0, 0xff

    aget v0, v5, v0

    sget-object v5, Lnet/lingala/zip4j/crypto/engine/a;->i:[I

    shr-int/lit8 v2, v2, 0x8

    and-int/lit16 v2, v2, 0xff

    aget v2, v5, v2

    const/16 v5, 0x18

    invoke-static {v2, v5}, Lnet/lingala/zip4j/crypto/engine/a;->a(II)I

    move-result v2

    xor-int/2addr v0, v2

    sget-object v2, Lnet/lingala/zip4j/crypto/engine/a;->i:[I

    shr-int/lit8 v3, v3, 0x10

    and-int/lit16 v3, v3, 0xff

    aget v2, v2, v3

    const/16 v3, 0x10

    invoke-static {v2, v3}, Lnet/lingala/zip4j/crypto/engine/a;->a(II)I

    move-result v2

    xor-int/2addr v0, v2

    sget-object v2, Lnet/lingala/zip4j/crypto/engine/a;->i:[I

    shr-int/lit8 v3, v4, 0x18

    and-int/lit16 v3, v3, 0xff

    aget v2, v2, v3

    const/16 v3, 0x8

    invoke-static {v2, v3}, Lnet/lingala/zip4j/crypto/engine/a;->a(II)I

    move-result v2

    xor-int/2addr v2, v0

    add-int/lit8 v0, v6, 0x1

    aget-object v3, v1, v6

    const/4 v4, 0x3

    aget v3, v3, v4

    xor-int/2addr v2, v3

    iput v2, p0, Lnet/lingala/zip4j/crypto/engine/a;->f:I

    goto/16 :goto_0

    :cond_3
    sget-object v2, Lnet/lingala/zip4j/crypto/engine/a;->i:[I

    iget v3, p0, Lnet/lingala/zip4j/crypto/engine/a;->c:I

    and-int/lit16 v3, v3, 0xff

    aget v2, v2, v3

    sget-object v3, Lnet/lingala/zip4j/crypto/engine/a;->i:[I

    iget v4, p0, Lnet/lingala/zip4j/crypto/engine/a;->d:I

    shr-int/lit8 v4, v4, 0x8

    and-int/lit16 v4, v4, 0xff

    aget v3, v3, v4

    const/16 v4, 0x18

    invoke-static {v3, v4}, Lnet/lingala/zip4j/crypto/engine/a;->a(II)I

    move-result v3

    xor-int/2addr v2, v3

    sget-object v3, Lnet/lingala/zip4j/crypto/engine/a;->i:[I

    iget v4, p0, Lnet/lingala/zip4j/crypto/engine/a;->e:I

    shr-int/lit8 v4, v4, 0x10

    and-int/lit16 v4, v4, 0xff

    aget v3, v3, v4

    const/16 v4, 0x10

    invoke-static {v3, v4}, Lnet/lingala/zip4j/crypto/engine/a;->a(II)I

    move-result v3

    xor-int/2addr v2, v3

    sget-object v3, Lnet/lingala/zip4j/crypto/engine/a;->i:[I

    iget v4, p0, Lnet/lingala/zip4j/crypto/engine/a;->f:I

    shr-int/lit8 v4, v4, 0x18

    and-int/lit16 v4, v4, 0xff

    aget v3, v3, v4

    const/16 v4, 0x8

    invoke-static {v3, v4}, Lnet/lingala/zip4j/crypto/engine/a;->a(II)I

    move-result v3

    xor-int/2addr v2, v3

    aget-object v3, v1, v0

    const/4 v4, 0x0

    aget v3, v3, v4

    xor-int/2addr v2, v3

    sget-object v3, Lnet/lingala/zip4j/crypto/engine/a;->i:[I

    iget v4, p0, Lnet/lingala/zip4j/crypto/engine/a;->d:I

    and-int/lit16 v4, v4, 0xff

    aget v3, v3, v4

    sget-object v4, Lnet/lingala/zip4j/crypto/engine/a;->i:[I

    iget v5, p0, Lnet/lingala/zip4j/crypto/engine/a;->e:I

    shr-int/lit8 v5, v5, 0x8

    and-int/lit16 v5, v5, 0xff

    aget v4, v4, v5

    const/16 v5, 0x18

    invoke-static {v4, v5}, Lnet/lingala/zip4j/crypto/engine/a;->a(II)I

    move-result v4

    xor-int/2addr v3, v4

    sget-object v4, Lnet/lingala/zip4j/crypto/engine/a;->i:[I

    iget v5, p0, Lnet/lingala/zip4j/crypto/engine/a;->f:I

    shr-int/lit8 v5, v5, 0x10

    and-int/lit16 v5, v5, 0xff

    aget v4, v4, v5

    const/16 v5, 0x10

    invoke-static {v4, v5}, Lnet/lingala/zip4j/crypto/engine/a;->a(II)I

    move-result v4

    xor-int/2addr v3, v4

    sget-object v4, Lnet/lingala/zip4j/crypto/engine/a;->i:[I

    iget v5, p0, Lnet/lingala/zip4j/crypto/engine/a;->c:I

    shr-int/lit8 v5, v5, 0x18

    and-int/lit16 v5, v5, 0xff

    aget v4, v4, v5

    const/16 v5, 0x8

    invoke-static {v4, v5}, Lnet/lingala/zip4j/crypto/engine/a;->a(II)I

    move-result v4

    xor-int/2addr v3, v4

    aget-object v4, v1, v0

    const/4 v5, 0x1

    aget v4, v4, v5

    xor-int/2addr v3, v4

    sget-object v4, Lnet/lingala/zip4j/crypto/engine/a;->i:[I

    iget v5, p0, Lnet/lingala/zip4j/crypto/engine/a;->e:I

    and-int/lit16 v5, v5, 0xff

    aget v4, v4, v5

    sget-object v5, Lnet/lingala/zip4j/crypto/engine/a;->i:[I

    iget v6, p0, Lnet/lingala/zip4j/crypto/engine/a;->f:I

    shr-int/lit8 v6, v6, 0x8

    and-int/lit16 v6, v6, 0xff

    aget v5, v5, v6

    const/16 v6, 0x18

    invoke-static {v5, v6}, Lnet/lingala/zip4j/crypto/engine/a;->a(II)I

    move-result v5

    xor-int/2addr v4, v5

    sget-object v5, Lnet/lingala/zip4j/crypto/engine/a;->i:[I

    iget v6, p0, Lnet/lingala/zip4j/crypto/engine/a;->c:I

    shr-int/lit8 v6, v6, 0x10

    and-int/lit16 v6, v6, 0xff

    aget v5, v5, v6

    const/16 v6, 0x10

    invoke-static {v5, v6}, Lnet/lingala/zip4j/crypto/engine/a;->a(II)I

    move-result v5

    xor-int/2addr v4, v5

    sget-object v5, Lnet/lingala/zip4j/crypto/engine/a;->i:[I

    iget v6, p0, Lnet/lingala/zip4j/crypto/engine/a;->d:I

    shr-int/lit8 v6, v6, 0x18

    and-int/lit16 v6, v6, 0xff

    aget v5, v5, v6

    const/16 v6, 0x8

    invoke-static {v5, v6}, Lnet/lingala/zip4j/crypto/engine/a;->a(II)I

    move-result v5

    xor-int/2addr v4, v5

    aget-object v5, v1, v0

    const/4 v6, 0x2

    aget v5, v5, v6

    xor-int/2addr v4, v5

    sget-object v5, Lnet/lingala/zip4j/crypto/engine/a;->i:[I

    iget v6, p0, Lnet/lingala/zip4j/crypto/engine/a;->f:I

    and-int/lit16 v6, v6, 0xff

    aget v5, v5, v6

    sget-object v6, Lnet/lingala/zip4j/crypto/engine/a;->i:[I

    iget v7, p0, Lnet/lingala/zip4j/crypto/engine/a;->c:I

    shr-int/lit8 v7, v7, 0x8

    and-int/lit16 v7, v7, 0xff

    aget v6, v6, v7

    const/16 v7, 0x18

    invoke-static {v6, v7}, Lnet/lingala/zip4j/crypto/engine/a;->a(II)I

    move-result v6

    xor-int/2addr v5, v6

    sget-object v6, Lnet/lingala/zip4j/crypto/engine/a;->i:[I

    iget v7, p0, Lnet/lingala/zip4j/crypto/engine/a;->d:I

    shr-int/lit8 v7, v7, 0x10

    and-int/lit16 v7, v7, 0xff

    aget v6, v6, v7

    const/16 v7, 0x10

    invoke-static {v6, v7}, Lnet/lingala/zip4j/crypto/engine/a;->a(II)I

    move-result v6

    xor-int/2addr v5, v6

    sget-object v6, Lnet/lingala/zip4j/crypto/engine/a;->i:[I

    iget v7, p0, Lnet/lingala/zip4j/crypto/engine/a;->e:I

    shr-int/lit8 v7, v7, 0x18

    and-int/lit16 v7, v7, 0xff

    aget v6, v6, v7

    const/16 v7, 0x8

    invoke-static {v6, v7}, Lnet/lingala/zip4j/crypto/engine/a;->a(II)I

    move-result v6

    xor-int/2addr v5, v6

    add-int/lit8 v6, v0, 0x1

    aget-object v0, v1, v0

    const/4 v7, 0x3

    aget v0, v0, v7

    xor-int/2addr v0, v5

    sget-object v5, Lnet/lingala/zip4j/crypto/engine/a;->g:[B

    and-int/lit16 v7, v2, 0xff

    aget-byte v5, v5, v7

    and-int/lit16 v5, v5, 0xff

    sget-object v7, Lnet/lingala/zip4j/crypto/engine/a;->g:[B

    shr-int/lit8 v8, v3, 0x8

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    xor-int/2addr v5, v7

    sget-object v7, Lnet/lingala/zip4j/crypto/engine/a;->g:[B

    shr-int/lit8 v8, v4, 0x10

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x10

    xor-int/2addr v5, v7

    sget-object v7, Lnet/lingala/zip4j/crypto/engine/a;->g:[B

    shr-int/lit8 v8, v0, 0x18

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    shl-int/lit8 v7, v7, 0x18

    xor-int/2addr v5, v7

    aget-object v7, v1, v6

    const/4 v8, 0x0

    aget v7, v7, v8

    xor-int/2addr v5, v7

    iput v5, p0, Lnet/lingala/zip4j/crypto/engine/a;->c:I

    sget-object v5, Lnet/lingala/zip4j/crypto/engine/a;->g:[B

    and-int/lit16 v7, v3, 0xff

    aget-byte v5, v5, v7

    and-int/lit16 v5, v5, 0xff

    sget-object v7, Lnet/lingala/zip4j/crypto/engine/a;->g:[B

    shr-int/lit8 v8, v4, 0x8

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    xor-int/2addr v5, v7

    sget-object v7, Lnet/lingala/zip4j/crypto/engine/a;->g:[B

    shr-int/lit8 v8, v0, 0x10

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x10

    xor-int/2addr v5, v7

    sget-object v7, Lnet/lingala/zip4j/crypto/engine/a;->g:[B

    shr-int/lit8 v8, v2, 0x18

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    shl-int/lit8 v7, v7, 0x18

    xor-int/2addr v5, v7

    aget-object v7, v1, v6

    const/4 v8, 0x1

    aget v7, v7, v8

    xor-int/2addr v5, v7

    iput v5, p0, Lnet/lingala/zip4j/crypto/engine/a;->d:I

    sget-object v5, Lnet/lingala/zip4j/crypto/engine/a;->g:[B

    and-int/lit16 v7, v4, 0xff

    aget-byte v5, v5, v7

    and-int/lit16 v5, v5, 0xff

    sget-object v7, Lnet/lingala/zip4j/crypto/engine/a;->g:[B

    shr-int/lit8 v8, v0, 0x8

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    xor-int/2addr v5, v7

    sget-object v7, Lnet/lingala/zip4j/crypto/engine/a;->g:[B

    shr-int/lit8 v8, v2, 0x10

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x10

    xor-int/2addr v5, v7

    sget-object v7, Lnet/lingala/zip4j/crypto/engine/a;->g:[B

    shr-int/lit8 v8, v3, 0x18

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    shl-int/lit8 v7, v7, 0x18

    xor-int/2addr v5, v7

    aget-object v7, v1, v6

    const/4 v8, 0x2

    aget v7, v7, v8

    xor-int/2addr v5, v7

    iput v5, p0, Lnet/lingala/zip4j/crypto/engine/a;->e:I

    sget-object v5, Lnet/lingala/zip4j/crypto/engine/a;->g:[B

    and-int/lit16 v0, v0, 0xff

    aget-byte v0, v5, v0

    and-int/lit16 v0, v0, 0xff

    sget-object v5, Lnet/lingala/zip4j/crypto/engine/a;->g:[B

    shr-int/lit8 v2, v2, 0x8

    and-int/lit16 v2, v2, 0xff

    aget-byte v2, v5, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    xor-int/2addr v0, v2

    sget-object v2, Lnet/lingala/zip4j/crypto/engine/a;->g:[B

    shr-int/lit8 v3, v3, 0x10

    and-int/lit16 v3, v3, 0xff

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    xor-int/2addr v0, v2

    sget-object v2, Lnet/lingala/zip4j/crypto/engine/a;->g:[B

    shr-int/lit8 v3, v4, 0x18

    and-int/lit16 v3, v3, 0xff

    aget-byte v2, v2, v3

    shl-int/lit8 v2, v2, 0x18

    xor-int/2addr v0, v2

    aget-object v1, v1, v6

    const/4 v2, 0x3

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lnet/lingala/zip4j/crypto/engine/a;->f:I

    .line 102
    const/4 v0, 0x0

    iget v1, p0, Lnet/lingala/zip4j/crypto/engine/a;->c:I

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    const/4 v0, 0x1

    iget v1, p0, Lnet/lingala/zip4j/crypto/engine/a;->c:I

    shr-int/lit8 v1, v1, 0x8

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    const/4 v0, 0x2

    iget v1, p0, Lnet/lingala/zip4j/crypto/engine/a;->c:I

    shr-int/lit8 v1, v1, 0x10

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    const/4 v0, 0x3

    iget v1, p0, Lnet/lingala/zip4j/crypto/engine/a;->c:I

    shr-int/lit8 v1, v1, 0x18

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    const/4 v0, 0x4

    iget v1, p0, Lnet/lingala/zip4j/crypto/engine/a;->d:I

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    const/4 v0, 0x5

    iget v1, p0, Lnet/lingala/zip4j/crypto/engine/a;->d:I

    shr-int/lit8 v1, v1, 0x8

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    const/4 v0, 0x6

    iget v1, p0, Lnet/lingala/zip4j/crypto/engine/a;->d:I

    shr-int/lit8 v1, v1, 0x10

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    const/4 v0, 0x7

    iget v1, p0, Lnet/lingala/zip4j/crypto/engine/a;->d:I

    shr-int/lit8 v1, v1, 0x18

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    const/16 v0, 0x8

    iget v1, p0, Lnet/lingala/zip4j/crypto/engine/a;->e:I

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    const/16 v0, 0x9

    iget v1, p0, Lnet/lingala/zip4j/crypto/engine/a;->e:I

    shr-int/lit8 v1, v1, 0x8

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    const/16 v0, 0xa

    iget v1, p0, Lnet/lingala/zip4j/crypto/engine/a;->e:I

    shr-int/lit8 v1, v1, 0x10

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    const/16 v0, 0xb

    iget v1, p0, Lnet/lingala/zip4j/crypto/engine/a;->e:I

    shr-int/lit8 v1, v1, 0x18

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    const/16 v0, 0xc

    iget v1, p0, Lnet/lingala/zip4j/crypto/engine/a;->f:I

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    const/16 v0, 0xd

    iget v1, p0, Lnet/lingala/zip4j/crypto/engine/a;->f:I

    shr-int/lit8 v1, v1, 0x8

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    const/16 v0, 0xe

    iget v1, p0, Lnet/lingala/zip4j/crypto/engine/a;->f:I

    shr-int/lit8 v1, v1, 0x10

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    const/16 v0, 0xf

    iget v1, p0, Lnet/lingala/zip4j/crypto/engine/a;->f:I

    shr-int/lit8 v1, v1, 0x18

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 104
    const/16 v0, 0x10

    return v0
.end method
