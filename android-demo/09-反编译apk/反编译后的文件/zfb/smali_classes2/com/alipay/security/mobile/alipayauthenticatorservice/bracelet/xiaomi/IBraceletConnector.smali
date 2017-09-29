.class public interface abstract Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/IBraceletConnector;
.super Ljava/lang/Object;
.source "IBraceletConnector.java"


# virtual methods
.method public abstract connect()V
.end method

.method public abstract disconnect()V
.end method

.method public abstract getPeripheral()Lcom/alipay/security/mobile/module/bracelet/lib/profile/IAliAuthProfile;
.end method

.method public abstract init(Landroid/bluetooth/BluetoothDevice;)V
.end method

.method public abstract waitForConnected(I)Z
.end method
