.class public final Lcom/alipay/nfc/tech/Iso7816$BerV;
.super Lcom/alipay/nfc/tech/Iso7816;
.source "Iso7816.java"


# direct methods
.method public constructor <init>([B)V
    .locals 0

    .prologue
    .line 262
    invoke-direct {p0, p1}, Lcom/alipay/nfc/tech/Iso7816;-><init>([B)V

    .line 263
    return-void
.end method

.method public static read([BII)Lcom/alipay/nfc/tech/Iso7816$BerV;
    .locals 2

    .prologue
    .line 258
    new-instance v0, Lcom/alipay/nfc/tech/Iso7816$BerV;

    add-int v1, p1, p2

    invoke-static {p0, p1, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alipay/nfc/tech/Iso7816$BerV;-><init>([B)V

    return-object v0
.end method
