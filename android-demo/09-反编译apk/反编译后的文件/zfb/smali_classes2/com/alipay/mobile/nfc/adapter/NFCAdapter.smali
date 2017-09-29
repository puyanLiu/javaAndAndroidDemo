.class public interface abstract Lcom/alipay/mobile/nfc/adapter/NFCAdapter;
.super Ljava/lang/Object;
.source "NFCAdapter.java"


# virtual methods
.method public abstract close()V
.end method

.method public abstract connect()V
.end method

.method public abstract isConnected()Z
.end method

.method public abstract preLoad(Landroid/os/Bundle;)Lcom/alipay/mobile/nfc/info/NfcType;
.end method

.method public varargs abstract read([B)Landroid/os/Bundle;
.end method

.method public abstract transceive([B)[B
.end method

.method public varargs abstract write([B)Z
.end method
