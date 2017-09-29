.class public Lcom/alipay/mobile/nfc/apdu/NFCApdu;
.super Ljava/lang/Object;
.source "NFCApdu.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static selectAid([BLandroid/os/Bundle;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 10
    invoke-static {p0}, Lcom/alipay/mobile/nfc/apdu/util/NFCUtils;->ByteArrayToHexString([B)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 11
    return-object v0
.end method
