.class public final Lcom/alipay/nfc/tech/FeliCa$SystemCode;
.super Lcom/alipay/nfc/tech/FeliCa;
.source "FeliCa.java"


# static fields
.field public static final EMPTY:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 93
    const/4 v0, 0x2

    new-array v0, v0, [B

    sput-object v0, Lcom/alipay/nfc/tech/FeliCa$SystemCode;->EMPTY:[B

    .line 92
    return-void
.end method

.method public constructor <init>([B)V
    .locals 2

    .prologue
    .line 96
    if-eqz p1, :cond_0

    array-length v0, p1

    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    :cond_0
    sget-object p1, Lcom/alipay/nfc/tech/FeliCa$SystemCode;->EMPTY:[B

    :cond_1
    invoke-direct {p0, p1}, Lcom/alipay/nfc/tech/FeliCa;-><init>([B)V

    .line 97
    return-void
.end method

.method public static toInt([B)I
    .locals 3

    .prologue
    .line 104
    const v0, 0xffff

    const/4 v1, 0x0

    aget-byte v1, p0, v1

    shl-int/lit8 v1, v1, 0x8

    const/4 v2, 0x1

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    and-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public final toInt()I
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/alipay/nfc/tech/FeliCa$SystemCode;->data:[B

    invoke-static {v0}, Lcom/alipay/nfc/tech/FeliCa$SystemCode;->toInt([B)I

    move-result v0

    return v0
.end method
