.class public final Lcom/alipay/nfc/tech/FeliCa$IDm;
.super Lcom/alipay/nfc/tech/FeliCa;
.source "FeliCa.java"


# static fields
.field public static final EMPTY:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const/16 v0, 0x8

    new-array v0, v0, [B

    sput-object v0, Lcom/alipay/nfc/tech/FeliCa$IDm;->EMPTY:[B

    .line 51
    return-void
.end method

.method public constructor <init>([B)V
    .locals 2

    .prologue
    .line 55
    if-eqz p1, :cond_0

    array-length v0, p1

    const/16 v1, 0x8

    if-ge v0, v1, :cond_1

    :cond_0
    sget-object p1, Lcom/alipay/nfc/tech/FeliCa$IDm;->EMPTY:[B

    :cond_1
    invoke-direct {p0, p1}, Lcom/alipay/nfc/tech/FeliCa;-><init>([B)V

    .line 56
    return-void
.end method


# virtual methods
.method public final getCardIdentification()Ljava/lang/String;
    .locals 3

    .prologue
    .line 63
    iget-object v0, p0, Lcom/alipay/nfc/tech/FeliCa$IDm;->data:[B

    const/4 v1, 0x2

    const/4 v2, 0x6

    invoke-static {v0, v1, v2}, Lcom/alipay/nfc/Util;->toHexString([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getManufactureCode()Ljava/lang/String;
    .locals 3

    .prologue
    .line 59
    iget-object v0, p0, Lcom/alipay/nfc/tech/FeliCa$IDm;->data:[B

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Lcom/alipay/nfc/Util;->toHexString([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final isEmpty()Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 67
    iget-object v2, p0, Lcom/alipay/nfc/tech/FeliCa$IDm;->data:[B

    .line 68
    array-length v3, v2

    move v1, v0

    :goto_0
    if-lt v1, v3, :cond_1

    .line 72
    const/4 v0, 0x1

    :cond_0
    return v0

    .line 68
    :cond_1
    aget-byte v4, v2, v1

    .line 69
    if-nez v4, :cond_0

    .line 68
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
