.class public final Lnet/lingala/zip4j/crypto/PBKDF2/b;
.super Ljava/lang/Object;
.source "PBKDF2Engine.java"


# instance fields
.field protected a:Lnet/lingala/zip4j/crypto/PBKDF2/c;

.field protected b:Lnet/lingala/zip4j/crypto/PBKDF2/d;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object v0, p0, Lnet/lingala/zip4j/crypto/PBKDF2/b;->a:Lnet/lingala/zip4j/crypto/PBKDF2/c;

    .line 35
    iput-object v0, p0, Lnet/lingala/zip4j/crypto/PBKDF2/b;->b:Lnet/lingala/zip4j/crypto/PBKDF2/d;

    .line 36
    return-void
.end method

.method public constructor <init>(Lnet/lingala/zip4j/crypto/PBKDF2/c;)V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lnet/lingala/zip4j/crypto/PBKDF2/b;->a:Lnet/lingala/zip4j/crypto/PBKDF2/c;

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/lingala/zip4j/crypto/PBKDF2/b;->b:Lnet/lingala/zip4j/crypto/PBKDF2/d;

    .line 42
    return-void
.end method

.method private static a(Lnet/lingala/zip4j/crypto/PBKDF2/d;[BII)[B
    .locals 14

    .prologue
    .line 115
    if-nez p1, :cond_0

    .line 117
    const/4 v1, 0x0

    new-array p1, v1, [B

    .line 119
    :cond_0
    invoke-interface {p0}, Lnet/lingala/zip4j/crypto/PBKDF2/d;->b()I

    move-result v7

    .line 120
    const/4 v1, 0x0

    rem-int v2, p3, v7

    if-lez v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    div-int v2, p3, v7

    add-int v8, v2, v1

    .line 121
    add-int/lit8 v1, v8, -0x1

    mul-int/2addr v1, v7

    sub-int v9, p3, v1

    .line 122
    mul-int v1, v8, v7

    new-array v2, v1, [B

    .line 123
    const/4 v3, 0x0

    .line 124
    const/4 v1, 0x1

    move v4, v3

    move v3, v1

    :goto_0
    if-gt v3, v8, :cond_4

    .line 126
    invoke-interface {p0}, Lnet/lingala/zip4j/crypto/PBKDF2/d;->b()I

    move-result v10

    new-array v11, v10, [B

    array-length v1, p1

    add-int/lit8 v1, v1, 0x4

    new-array v1, v1, [B

    const/4 v5, 0x0

    const/4 v6, 0x0

    array-length v12, p1

    invoke-static {p1, v5, v1, v6, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v5, p1

    add-int/lit8 v6, v5, 0x0

    const/high16 v12, 0x1000000

    div-int v12, v3, v12

    int-to-byte v12, v12

    aput-byte v12, v1, v6

    add-int/lit8 v6, v5, 0x1

    const/high16 v12, 0x10000

    div-int v12, v3, v12

    int-to-byte v12, v12

    aput-byte v12, v1, v6

    add-int/lit8 v6, v5, 0x2

    div-int/lit16 v12, v3, 0x100

    int-to-byte v12, v12

    aput-byte v12, v1, v6

    add-int/lit8 v5, v5, 0x3

    int-to-byte v6, v3

    aput-byte v6, v1, v5

    const/4 v5, 0x0

    move v6, v5

    :goto_1
    move/from16 v0, p2

    if-ge v6, v0, :cond_3

    invoke-interface {p0, v1}, Lnet/lingala/zip4j/crypto/PBKDF2/d;->a([B)[B

    move-result-object v5

    const/4 v1, 0x0

    :goto_2
    array-length v12, v11

    if-ge v1, v12, :cond_2

    aget-byte v12, v11, v1

    aget-byte v13, v5, v1

    xor-int/2addr v12, v13

    int-to-byte v12, v12

    aput-byte v12, v11, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v1, v6, 0x1

    move v6, v1

    move-object v1, v5

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    invoke-static {v11, v1, v2, v4, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 127
    add-int/2addr v4, v7

    .line 124
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_0

    .line 129
    :cond_4
    if-ge v9, v7, :cond_5

    .line 132
    move/from16 v0, p3

    new-array v1, v0, [B

    .line 133
    const/4 v3, 0x0

    const/4 v4, 0x0

    move/from16 v0, p3

    invoke-static {v2, v3, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 136
    :goto_3
    return-object v1

    :cond_5
    move-object v1, v2

    goto :goto_3
.end method


# virtual methods
.method public final a([CI)[B
    .locals 3

    .prologue
    .line 57
    if-nez p1, :cond_0

    .line 61
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 64
    :cond_0
    invoke-static {p1}, Lnet/lingala/zip4j/util/b;->a([C)[B

    move-result-object v0

    .line 66
    iget-object v1, p0, Lnet/lingala/zip4j/crypto/PBKDF2/b;->b:Lnet/lingala/zip4j/crypto/PBKDF2/d;

    if-nez v1, :cond_1

    new-instance v1, Lnet/lingala/zip4j/crypto/PBKDF2/a;

    iget-object v2, p0, Lnet/lingala/zip4j/crypto/PBKDF2/b;->a:Lnet/lingala/zip4j/crypto/PBKDF2/c;

    invoke-virtual {v2}, Lnet/lingala/zip4j/crypto/PBKDF2/c;->c()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lnet/lingala/zip4j/crypto/PBKDF2/a;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lnet/lingala/zip4j/crypto/PBKDF2/b;->b:Lnet/lingala/zip4j/crypto/PBKDF2/d;

    :cond_1
    iget-object v1, p0, Lnet/lingala/zip4j/crypto/PBKDF2/b;->b:Lnet/lingala/zip4j/crypto/PBKDF2/d;

    invoke-interface {v1, v0}, Lnet/lingala/zip4j/crypto/PBKDF2/d;->b([B)V

    .line 67
    if-nez p2, :cond_2

    .line 69
    iget-object v0, p0, Lnet/lingala/zip4j/crypto/PBKDF2/b;->b:Lnet/lingala/zip4j/crypto/PBKDF2/d;

    invoke-interface {v0}, Lnet/lingala/zip4j/crypto/PBKDF2/d;->b()I

    move-result p2

    .line 71
    :cond_2
    iget-object v0, p0, Lnet/lingala/zip4j/crypto/PBKDF2/b;->b:Lnet/lingala/zip4j/crypto/PBKDF2/d;

    iget-object v1, p0, Lnet/lingala/zip4j/crypto/PBKDF2/b;->a:Lnet/lingala/zip4j/crypto/PBKDF2/c;

    invoke-virtual {v1}, Lnet/lingala/zip4j/crypto/PBKDF2/c;->b()[B

    move-result-object v1

    iget-object v2, p0, Lnet/lingala/zip4j/crypto/PBKDF2/b;->a:Lnet/lingala/zip4j/crypto/PBKDF2/c;

    invoke-virtual {v2}, Lnet/lingala/zip4j/crypto/PBKDF2/c;->a()I

    move-result v2

    invoke-static {v0, v1, v2, p2}, Lnet/lingala/zip4j/crypto/PBKDF2/b;->a(Lnet/lingala/zip4j/crypto/PBKDF2/d;[BII)[B

    move-result-object v0

    .line 73
    return-object v0
.end method
