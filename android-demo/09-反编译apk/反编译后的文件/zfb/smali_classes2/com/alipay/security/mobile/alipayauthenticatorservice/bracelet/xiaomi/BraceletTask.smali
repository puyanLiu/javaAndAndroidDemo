.class public Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/BraceletTask;
.super Ljava/lang/Object;
.source "BraceletTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final BRACELET_MAC_KEY:Ljava/lang/String; = "bracelet_device_mac"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDevice:Landroid/bluetooth/BluetoothDevice;

.field private mMessage:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x12
    .end annotation

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/BraceletTask;->mContext:Landroid/content/Context;

    .line 37
    iput-object p2, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/BraceletTask;->mMessage:Landroid/os/Bundle;

    .line 39
    const-string/jumbo v1, ""

    .line 40
    iget-object v0, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/BraceletTask;->mMessage:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/BraceletTask;->mMessage:Landroid/os/Bundle;

    const-string/jumbo v2, "KEY_OPERATIONT_TYPE"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 42
    const/4 v2, 0x2

    if-ne v2, v0, :cond_2

    .line 43
    iget-object v0, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/BraceletTask;->mMessage:Landroid/os/Bundle;

    const-string/jumbo v1, "KEY_EXTRA_PARAMS"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 59
    :cond_0
    :goto_0
    invoke-static {v1}, Lcom/alipay/security/mobile/util/CommonUtils;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {v1}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 61
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/BraceletTask;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 64
    :cond_1
    return-void

    .line 46
    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/BraceletTask;->mMessage:Landroid/os/Bundle;

    const-string/jumbo v2, "KEY_MESSAGE"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 47
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    const-class v3, Lcom/alipay/fido/message/AuthenticationRequest;

    invoke-virtual {v2, v0, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/fido/message/AuthenticationRequest;

    .line 49
    if-eqz v0, :cond_3

    .line 50
    invoke-virtual {v0}, Lcom/alipay/fido/message/AuthenticationRequest;->getExtraParams()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_1
    move-object v1, v0

    .line 55
    goto :goto_0

    .line 52
    :catch_0
    move-exception v0

    .line 53
    const-string/jumbo v2, "BT"

    invoke-static {v2, v0}, Lcom/alipay/security/mobile/auth/AuthenticatorLOG;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_3
    move-object v0, v1

    goto :goto_1
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 68
    .line 70
    iget-object v0, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/BraceletTask;->mMessage:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/BraceletTask;->mContext:Landroid/content/Context;

    if-nez v0, :cond_2

    :cond_0
    move-object v0, v1

    .line 120
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/BraceletTask;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/BraceletAdapter;->getInstance(Landroid/content/Context;)Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/BraceletAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/BraceletAdapter;->finishAuth(Landroid/os/Bundle;)V

    .line 122
    return-void

    .line 75
    :cond_2
    iget-object v0, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/BraceletTask;->mMessage:Landroid/os/Bundle;

    const-string/jumbo v2, "KEY_OPERATIONT_TYPE"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 77
    packed-switch v2, :pswitch_data_0

    :cond_3
    move-object v0, v1

    .line 105
    :goto_1
    if-eqz v1, :cond_1

    .line 111
    :try_start_0
    invoke-virtual {v1}, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/BraceletAuth;->doAuth()Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0

    .line 79
    :pswitch_0
    new-instance v0, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/BraceletRegister;

    iget-object v3, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/BraceletTask;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/BraceletTask;->mMessage:Landroid/os/Bundle;

    iget-object v5, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/BraceletTask;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-direct {v0, v3, v4, v5}, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/BraceletRegister;-><init>(Landroid/content/Context;Landroid/os/Bundle;Landroid/bluetooth/BluetoothDevice;)V

    move-object v6, v0

    move-object v0, v1

    move-object v1, v6

    .line 80
    goto :goto_1

    .line 82
    :pswitch_1
    iget-object v0, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/BraceletTask;->mMessage:Landroid/os/Bundle;

    const-string/jumbo v3, "KEY_MESSAGE"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 83
    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    const-class v4, Lcom/alipay/fido/message/AuthenticationRequest;

    invoke-virtual {v3, v0, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/fido/message/AuthenticationRequest;

    .line 85
    if-eqz v0, :cond_3

    .line 86
    invoke-virtual {v0}, Lcom/alipay/fido/message/AuthenticationRequest;->getUpdatePolicy()I

    move-result v0

    packed-switch v0, :pswitch_data_1

    .line 96
    new-instance v0, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/BraceletAuthenticateWithConfirm;

    iget-object v3, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/BraceletTask;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/BraceletTask;->mMessage:Landroid/os/Bundle;

    iget-object v5, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/BraceletTask;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-direct {v0, v3, v4, v5}, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/BraceletAuthenticateWithConfirm;-><init>(Landroid/content/Context;Landroid/os/Bundle;Landroid/bluetooth/BluetoothDevice;)V

    move-object v6, v0

    move-object v0, v1

    move-object v1, v6

    .line 98
    goto :goto_1

    .line 88
    :pswitch_2
    new-instance v0, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/BraceletAuthenticateWithConfirm;

    iget-object v3, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/BraceletTask;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/BraceletTask;->mMessage:Landroid/os/Bundle;

    iget-object v5, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/BraceletTask;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-direct {v0, v3, v4, v5}, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/BraceletAuthenticateWithConfirm;-><init>(Landroid/content/Context;Landroid/os/Bundle;Landroid/bluetooth/BluetoothDevice;)V

    move-object v6, v0

    move-object v0, v1

    move-object v1, v6

    .line 90
    goto :goto_1

    .line 92
    :pswitch_3
    new-instance v0, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/BraceletAuthenticateWithUpdate;

    iget-object v3, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/BraceletTask;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/BraceletTask;->mMessage:Landroid/os/Bundle;

    iget-object v5, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/BraceletTask;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-direct {v0, v3, v4, v5}, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/BraceletAuthenticateWithUpdate;-><init>(Landroid/content/Context;Landroid/os/Bundle;Landroid/bluetooth/BluetoothDevice;)V

    move-object v6, v0

    move-object v0, v1

    move-object v1, v6

    .line 94
    goto :goto_1

    .line 103
    :pswitch_4
    new-instance v0, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/BraceletDeRegister;

    iget-object v3, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/BraceletTask;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/BraceletTask;->mMessage:Landroid/os/Bundle;

    invoke-direct {v0, v3, v4}, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/BraceletDeRegister;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 104
    invoke-virtual {v0}, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/BraceletDeRegister;->doDeReg()Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_1

    .line 113
    :catch_0
    move-exception v0

    .line 114
    const-string/jumbo v1, "BT"

    invoke-static {v1, v0}, Lcom/alipay/security/mobile/auth/AuthenticatorLOG;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 115
    add-int/lit8 v0, v2, 0x6

    const/16 v1, 0x65

    invoke-static {v0, v1}, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/BraceletDataUtil;->constructResultBundle(II)Landroid/os/Bundle;

    move-result-object v0

    goto/16 :goto_0

    .line 77
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_4
    .end packed-switch

    .line 86
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
