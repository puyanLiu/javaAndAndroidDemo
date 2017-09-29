.class public final Lcom/alipay/mobile/nfc/Util;
.super Ljava/lang/Object;
.source "Util.java"


# static fields
.field private static final a:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/alipay/mobile/nfc/Util;->a:[C

    .line 22
    return-void

    .line 23
    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method public static a([B)Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 91
    if-eqz p0, :cond_1

    .line 92
    array-length v1, p0

    mul-int/lit8 v2, v1, 0x2

    new-array v2, v2, [C

    add-int/lit8 v3, v1, 0x0

    move v1, v0

    :goto_0
    if-lt v0, v3, :cond_0

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([C)V

    .line 94
    :goto_1
    return-object v0

    .line 92
    :cond_0
    aget-byte v4, p0, v0

    add-int/lit8 v5, v1, 0x1

    sget-object v6, Lcom/alipay/mobile/nfc/Util;->a:[C

    shr-int/lit8 v7, v4, 0x4

    and-int/lit8 v7, v7, 0xf

    aget-char v6, v6, v7

    aput-char v6, v2, v1

    add-int/lit8 v1, v5, 0x1

    sget-object v6, Lcom/alipay/mobile/nfc/Util;->a:[C

    and-int/lit8 v4, v4, 0xf

    aget-char v4, v6, v4

    aput-char v4, v2, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 94
    :cond_1
    const-string/jumbo v0, ""

    goto :goto_1
.end method
