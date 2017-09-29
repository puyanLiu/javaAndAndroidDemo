.class public interface abstract Lcom/alipay/security/mobile/auth/IAuthenticator;
.super Ljava/lang/Object;
.source "IAuthenticator.java"


# static fields
.field public static final USER_STATUS_DATA_CORRUPT:I = 0x1

.field public static final USER_STATUS_NOT_REGISTER:I = 0x0

.field public static final USER_STATUS_REGISTER:I = 0x2


# virtual methods
.method public abstract cancel()V
.end method

.method public abstract checkUserStatus(Ljava/lang/String;)I
.end method

.method public abstract getAuthInfo()Lcom/alipay/security/mobile/auth/AuthInfo;
.end method

.method public abstract getDeviceId()Ljava/lang/String;
.end method

.method public abstract init(Landroid/content/Context;Lcom/alipay/security/mobile/auth/AuthenticatorCallback;Ljava/lang/String;)I
.end method

.method public abstract prapareKeyPair()V
.end method

.method public abstract process(Lcom/alipay/security/mobile/auth/message/AuthenticatorMessage;)Ljava/lang/String;
.end method

.method public abstract process(Lcom/alipay/security/mobile/auth/message/AuthenticatorMessage;Lcom/alipay/security/mobile/auth/AuthenticatorCallback;)V
.end method

.method public abstract registedFingerPrintNumber()I
.end method

.method public abstract release()V
.end method
