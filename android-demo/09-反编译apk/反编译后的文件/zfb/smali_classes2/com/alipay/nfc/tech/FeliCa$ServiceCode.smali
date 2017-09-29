.class public final Lcom/alipay/nfc/tech/FeliCa$ServiceCode;
.super Lcom/alipay/nfc/tech/FeliCa;
.source "FeliCa.java"


# static fields
.field public static final EMPTY:[B

.field public static final T_CYCLIC:I = 0x2

.field public static final T_PURSE:I = 0x3

.field public static final T_RANDOM:I = 0x1

.field public static final T_UNKNOWN:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 109
    const/4 v0, 0x2

    new-array v0, v0, [B

    sput-object v0, Lcom/alipay/nfc/tech/FeliCa$ServiceCode;->EMPTY:[B

    .line 108
    return-void
.end method

.method public constructor <init>(I)V
    .locals 3

    .prologue
    .line 120
    const/4 v0, 0x2

    new-array v0, v0, [B

    const/4 v1, 0x0

    and-int/lit16 v2, p1, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x1

    shr-int/lit8 v2, p1, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    invoke-direct {p0, v0}, Lcom/alipay/nfc/tech/FeliCa$ServiceCode;-><init>([B)V

    .line 121
    return-void
.end method

.method public constructor <init>([B)V
    .locals 2

    .prologue
    .line 116
    if-eqz p1, :cond_0

    array-length v0, p1

    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    :cond_0
    sget-object p1, Lcom/alipay/nfc/tech/FeliCa$ServiceCode;->EMPTY:[B

    :cond_1
    invoke-direct {p0, p1}, Lcom/alipay/nfc/tech/FeliCa;-><init>([B)V

    .line 117
    return-void
.end method


# virtual methods
.method public final getAccessAttr()I
    .locals 2

    .prologue
    .line 133
    iget-object v0, p0, Lcom/alipay/nfc/tech/FeliCa$ServiceCode;->data:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    and-int/lit8 v0, v0, 0x3f

    return v0
.end method

.method public final getDataType()I
    .locals 2

    .prologue
    .line 137
    iget-object v0, p0, Lcom/alipay/nfc/tech/FeliCa$ServiceCode;->data:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    and-int/lit8 v0, v0, 0x3f

    .line 138
    and-int/lit8 v1, v0, 0x10

    if-nez v1, :cond_0

    .line 139
    const/4 v0, 0x3

    .line 141
    :goto_0
    return v0

    :cond_0
    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public final isEncrypt()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 124
    iget-object v1, p0, Lcom/alipay/nfc/tech/FeliCa$ServiceCode;->data:[B

    aget-byte v1, v1, v0

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public final isWritable()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 128
    iget-object v1, p0, Lcom/alipay/nfc/tech/FeliCa$ServiceCode;->data:[B

    aget-byte v1, v1, v0

    and-int/lit8 v1, v1, 0x3f

    .line 129
    and-int/lit8 v2, v1, 0x2

    if-eqz v2, :cond_0

    const/16 v2, 0x13

    if-eq v1, v2, :cond_0

    const/16 v2, 0x12

    if-eq v1, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
