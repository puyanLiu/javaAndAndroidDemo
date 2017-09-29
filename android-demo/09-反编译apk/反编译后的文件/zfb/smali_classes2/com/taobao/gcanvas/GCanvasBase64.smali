.class public final Lcom/taobao/gcanvas/GCanvasBase64;
.super Ljava/lang/Object;
.source "GCanvasBase64.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    return-void
.end method

.method public static decode([B)[B
    .locals 1

    .prologue
    .line 8
    array-length v0, p0

    invoke-static {p0, v0}, Lcom/taobao/gcanvas/GCanvasBase64;->decode([BI)[B

    move-result-object v0

    return-object v0
.end method

.method public static decode([BI)[B
    .locals 14

    .prologue
    const/16 v12, 0x20

    const/16 v11, 0xd

    const/16 v10, 0xa

    const/16 v9, 0x9

    const/4 v1, 0x0

    .line 13
    div-int/lit8 v0, p1, 0x4

    mul-int/lit8 v0, v0, 0x3

    .line 15
    if-nez v0, :cond_0

    .line 16
    new-array v0, v1, [B

    .line 95
    :goto_0
    return-object v0

    .line 19
    :cond_0
    new-array v7, v0, [B

    move v0, v1

    .line 26
    :goto_1
    add-int/lit8 v2, p1, -0x1

    aget-byte v2, p0, v2

    .line 28
    if-eq v2, v10, :cond_1

    if-eq v2, v11, :cond_1

    if-eq v2, v12, :cond_1

    if-eq v2, v9, :cond_1

    .line 29
    const/16 v3, 0x3d

    if-ne v2, v3, :cond_2

    .line 32
    add-int/lit8 v0, v0, 0x1

    .line 25
    :cond_1
    add-int/lit8 p1, p1, -0x1

    goto :goto_1

    :cond_2
    move v6, v1

    move v4, v1

    move v5, v1

    move v3, v1

    .line 45
    :goto_2
    if-ge v6, p1, :cond_8

    .line 46
    aget-byte v2, p0, v6

    .line 48
    if-eq v2, v10, :cond_c

    if-eq v2, v11, :cond_c

    if-eq v2, v12, :cond_c

    if-eq v2, v9, :cond_c

    .line 49
    const/16 v8, 0x41

    if-lt v2, v8, :cond_3

    const/16 v8, 0x5a

    if-gt v2, v8, :cond_3

    .line 55
    add-int/lit8 v2, v2, -0x41

    .line 74
    :goto_3
    shl-int/lit8 v4, v4, 0x6

    int-to-byte v2, v2

    or-int/2addr v4, v2

    .line 75
    rem-int/lit8 v2, v5, 0x4

    const/4 v8, 0x3

    if-ne v2, v8, :cond_b

    .line 77
    add-int/lit8 v2, v3, 0x1

    shr-int/lit8 v8, v4, 0x10

    int-to-byte v8, v8

    aput-byte v8, v7, v3

    .line 78
    add-int/lit8 v3, v2, 0x1

    shr-int/lit8 v8, v4, 0x8

    int-to-byte v8, v8

    aput-byte v8, v7, v2

    .line 79
    add-int/lit8 v2, v3, 0x1

    int-to-byte v8, v4

    aput-byte v8, v7, v3

    .line 81
    :goto_4
    add-int/lit8 v3, v5, 0x1

    move v13, v4

    move v4, v2

    move v2, v13

    .line 45
    :goto_5
    add-int/lit8 v5, v6, 0x1

    move v6, v5

    move v5, v3

    move v3, v4

    move v4, v2

    goto :goto_2

    .line 56
    :cond_3
    const/16 v8, 0x61

    if-lt v2, v8, :cond_4

    const/16 v8, 0x7a

    if-gt v2, v8, :cond_4

    .line 60
    add-int/lit8 v2, v2, -0x47

    goto :goto_3

    .line 61
    :cond_4
    const/16 v8, 0x30

    if-lt v2, v8, :cond_5

    const/16 v8, 0x39

    if-gt v2, v8, :cond_5

    .line 65
    add-int/lit8 v2, v2, 0x4

    goto :goto_3

    .line 66
    :cond_5
    const/16 v8, 0x2b

    if-ne v2, v8, :cond_6

    .line 67
    const/16 v2, 0x3e

    goto :goto_3

    .line 68
    :cond_6
    const/16 v8, 0x2f

    if-ne v2, v8, :cond_7

    .line 69
    const/16 v2, 0x3f

    goto :goto_3

    .line 71
    :cond_7
    const/4 v0, 0x0

    goto :goto_0

    .line 83
    :cond_8
    if-lez v0, :cond_9

    .line 85
    mul-int/lit8 v2, v0, 0x6

    shl-int/2addr v4, v2

    .line 87
    add-int/lit8 v2, v3, 0x1

    shr-int/lit8 v5, v4, 0x10

    int-to-byte v5, v5

    aput-byte v5, v7, v3

    .line 88
    const/4 v3, 0x1

    if-ne v0, v3, :cond_a

    .line 89
    add-int/lit8 v3, v2, 0x1

    shr-int/lit8 v0, v4, 0x8

    int-to-byte v0, v0

    aput-byte v0, v7, v2

    .line 93
    :cond_9
    :goto_6
    new-array v0, v3, [B

    .line 94
    invoke-static {v7, v1, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_0

    :cond_a
    move v3, v2

    goto :goto_6

    :cond_b
    move v2, v3

    goto :goto_4

    :cond_c
    move v2, v4

    move v4, v3

    move v3, v5

    goto :goto_5
.end method
