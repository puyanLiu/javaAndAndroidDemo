.class public Lcom/alipay/security/mobile/fingerprint/samsung/SamsungNNLFIDOFingerPrint$InitHandler;
.super Landroid/os/Handler;
.source "SamsungNNLFIDOFingerPrint.java"


# instance fields
.field authenticatorCallback:Lcom/alipay/security/mobile/auth/AuthenticatorCallback;


# direct methods
.method public constructor <init>(Lcom/alipay/security/mobile/auth/AuthenticatorCallback;)V
    .locals 0

    .prologue
    .line 263
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 264
    iput-object p1, p0, Lcom/alipay/security/mobile/fingerprint/samsung/SamsungNNLFIDOFingerPrint$InitHandler;->authenticatorCallback:Lcom/alipay/security/mobile/auth/AuthenticatorCallback;

    .line 265
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 273
    sput-boolean v4, Lcom/alipay/security/mobile/fingerprint/samsung/SamsungFingerPrintsOperation;->isInited:Z

    .line 274
    iget-object v0, p0, Lcom/alipay/security/mobile/fingerprint/samsung/SamsungNNLFIDOFingerPrint$InitHandler;->authenticatorCallback:Lcom/alipay/security/mobile/auth/AuthenticatorCallback;

    const/4 v1, 0x6

    const/16 v2, 0x64

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v4, v3}, Lcom/alipay/security/mobile/auth/AuthenticatorUtils;->sendAuthenticatorMessage(Lcom/alipay/security/mobile/auth/AuthenticatorCallback;IIZLjava/lang/String;)V

    .line 277
    return-void
.end method
