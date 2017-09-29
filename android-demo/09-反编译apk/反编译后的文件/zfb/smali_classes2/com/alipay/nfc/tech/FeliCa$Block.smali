.class public final Lcom/alipay/nfc/tech/FeliCa$Block;
.super Lcom/alipay/nfc/tech/FeliCa;
.source "FeliCa.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 146
    invoke-direct {p0}, Lcom/alipay/nfc/tech/FeliCa;-><init>()V

    .line 147
    const/16 v0, 0x10

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/alipay/nfc/tech/FeliCa$Block;->data:[B

    .line 148
    return-void
.end method

.method public constructor <init>([B)V
    .locals 2

    .prologue
    const/16 v1, 0x10

    .line 151
    if-eqz p1, :cond_0

    array-length v0, p1

    if-ge v0, v1, :cond_1

    :cond_0
    new-array p1, v1, [B

    :cond_1
    invoke-direct {p0, p1}, Lcom/alipay/nfc/tech/FeliCa;-><init>([B)V

    .line 152
    return-void
.end method
