.class public Lcom/alipay/mobile/nfc/apdu/util/NFCUtils;
.super Ljava/lang/Object;
.source "NFCUtils.java"


# static fields
.field private static final SELECT_APDU_HEADER:Ljava/lang/String; = "00A40400"

.field public static final SELECT_OK_SW:[B

.field public static final UNKNOWN_CMD_SW:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-string/jumbo v0, "0000"

    invoke-static {v0}, Lcom/alipay/mobile/nfc/apdu/util/NFCUtils;->HexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/nfc/apdu/util/NFCUtils;->UNKNOWN_CMD_SW:[B

    .line 10
    const-string/jumbo v0, "9000"

    invoke-static {v0}, Lcom/alipay/mobile/nfc/apdu/util/NFCUtils;->HexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/nfc/apdu/util/NFCUtils;->SELECT_OK_SW:[B

    .line 5
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static BuildSelectApdu(Ljava/lang/String;)[B
    .locals 5

    .prologue
    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "00A40400"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    const-string/jumbo v1, "%02X"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nfc/apdu/util/NFCUtils;->HexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public static ByteArrayToHexString([B)Ljava/lang/String;
    .locals 6

    .prologue
    .line 22
    const/16 v0, 0x10

    new-array v1, v0, [C

    fill-array-data v1, :array_0

    .line 24
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x2

    new-array v2, v0, [C

    .line 27
    const/4 v0, 0x0

    :goto_0
    array-length v3, p0

    if-lt v0, v3, :cond_0

    .line 35
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([C)V

    return-object v0

    .line 28
    :cond_0
    aget-byte v3, p0, v0

    and-int/lit16 v3, v3, 0xff

    .line 30
    mul-int/lit8 v4, v0, 0x2

    ushr-int/lit8 v5, v3, 0x4

    aget-char v5, v1, v5

    aput-char v5, v2, v4

    .line 32
    mul-int/lit8 v4, v0, 0x2

    add-int/lit8 v4, v4, 0x1

    and-int/lit8 v3, v3, 0xf

    aget-char v3, v1, v3

    aput-char v3, v2, v4

    .line 27
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 22
    nop

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

.method public static varargs ConcatArrays([B[[B)[B
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 56
    array-length v0, p0

    .line 57
    array-length v3, p1

    move v2, v0

    move v0, v1

    :goto_0
    if-lt v0, v3, :cond_0

    .line 60
    invoke-static {p0, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v3

    .line 61
    array-length v0, p0

    .line 62
    array-length v4, p1

    move v2, v0

    move v0, v1

    :goto_1
    if-lt v0, v4, :cond_1

    .line 66
    return-object v3

    .line 57
    :cond_0
    aget-object v4, p1, v0

    .line 58
    array-length v4, v4

    add-int/2addr v2, v4

    .line 57
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 62
    :cond_1
    aget-object v5, p1, v0

    .line 63
    array-length v6, v5

    invoke-static {v5, v1, v3, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 64
    array-length v5, v5

    add-int/2addr v2, v5

    .line 62
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static HexStringToByteArray(Ljava/lang/String;)[B
    .locals 7

    .prologue
    const/16 v6, 0x10

    .line 40
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 41
    rem-int/lit8 v0, v1, 0x2

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 42
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 43
    const-string/jumbo v1, "Hex string must have even number of characters"

    .line 42
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 45
    :cond_0
    div-int/lit8 v0, v1, 0x2

    new-array v2, v0, [B

    .line 46
    const/4 v0, 0x0

    :goto_0
    if-lt v0, v1, :cond_1

    .line 52
    return-object v2

    .line 49
    :cond_1
    div-int/lit8 v3, v0, 0x2

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    .line 50
    add-int/lit8 v5, v0, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v5

    add-int/2addr v4, v5

    int-to-byte v4, v4

    .line 49
    aput-byte v4, v2, v3

    .line 46
    add-int/lit8 v0, v0, 0x2

    goto :goto_0
.end method
