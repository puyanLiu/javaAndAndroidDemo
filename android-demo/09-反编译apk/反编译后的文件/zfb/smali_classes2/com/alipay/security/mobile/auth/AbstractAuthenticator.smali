.class public abstract Lcom/alipay/security/mobile/auth/AbstractAuthenticator;
.super Ljava/lang/Object;
.source "AbstractAuthenticator.java"

# interfaces
.implements Lcom/alipay/security/mobile/auth/IAuthenticator;


# instance fields
.field protected context:Landroid/content/Context;

.field protected next:Lcom/alipay/security/mobile/auth/IAuthenticator;

.field protected supported:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/security/mobile/auth/AbstractAuthenticator;->context:Landroid/content/Context;

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/security/mobile/auth/AbstractAuthenticator;->supported:Z

    return-void
.end method


# virtual methods
.method public checkUserStatus(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 138
    const/4 v0, 0x0

    return v0
.end method

.method protected abstract doAuthenticate(Lcom/alipay/security/mobile/auth/message/AuthenticatorMessage;Lcom/alipay/security/mobile/auth/AuthenticatorCallback;)V
.end method

.method protected abstract doDeregister(Lcom/alipay/security/mobile/auth/message/AuthenticatorMessage;Lcom/alipay/security/mobile/auth/AuthenticatorCallback;)V
.end method

.method protected abstract doRegister(Lcom/alipay/security/mobile/auth/message/AuthenticatorMessage;Lcom/alipay/security/mobile/auth/AuthenticatorCallback;)V
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/alipay/security/mobile/auth/AbstractAuthenticator;->context:Landroid/content/Context;

    return-object v0
.end method

.method public getNext()Lcom/alipay/security/mobile/auth/IAuthenticator;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/alipay/security/mobile/auth/AbstractAuthenticator;->next:Lcom/alipay/security/mobile/auth/IAuthenticator;

    return-object v0
.end method

.method public isSupported()Z
    .locals 1

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/alipay/security/mobile/auth/AbstractAuthenticator;->supported:Z

    return v0
.end method

.method public prapareKeyPair()V
    .locals 0

    .prologue
    .line 128
    return-void
.end method

.method public process(Lcom/alipay/security/mobile/auth/message/AuthenticatorMessage;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 117
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Synchronous process is not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public process(Lcom/alipay/security/mobile/auth/message/AuthenticatorMessage;Lcom/alipay/security/mobile/auth/AuthenticatorCallback;)V
    .locals 2

    .prologue
    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "process:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alipay/security/mobile/auth/message/AuthenticatorMessage;->getType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 96
    invoke-virtual {p1}, Lcom/alipay/security/mobile/auth/message/AuthenticatorMessage;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 105
    :goto_0
    return-void

    .line 98
    :pswitch_0
    invoke-virtual {p0, p1, p2}, Lcom/alipay/security/mobile/auth/AbstractAuthenticator;->doRegister(Lcom/alipay/security/mobile/auth/message/AuthenticatorMessage;Lcom/alipay/security/mobile/auth/AuthenticatorCallback;)V

    goto :goto_0

    .line 101
    :pswitch_1
    invoke-virtual {p0, p1, p2}, Lcom/alipay/security/mobile/auth/AbstractAuthenticator;->doAuthenticate(Lcom/alipay/security/mobile/auth/message/AuthenticatorMessage;Lcom/alipay/security/mobile/auth/AuthenticatorCallback;)V

    goto :goto_0

    .line 104
    :pswitch_2
    invoke-virtual {p0, p1, p2}, Lcom/alipay/security/mobile/auth/AbstractAuthenticator;->doDeregister(Lcom/alipay/security/mobile/auth/message/AuthenticatorMessage;Lcom/alipay/security/mobile/auth/AuthenticatorCallback;)V

    goto :goto_0

    .line 96
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public registedFingerPrintNumber()I
    .locals 1

    .prologue
    .line 148
    const/4 v0, 0x0

    return v0
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/alipay/security/mobile/auth/AbstractAuthenticator;->context:Landroid/content/Context;

    .line 50
    return-void
.end method

.method public setNext(Lcom/alipay/security/mobile/auth/IAuthenticator;)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lcom/alipay/security/mobile/auth/AbstractAuthenticator;->next:Lcom/alipay/security/mobile/auth/IAuthenticator;

    .line 86
    return-void
.end method

.method public setSupported(Z)V
    .locals 0

    .prologue
    .line 67
    iput-boolean p1, p0, Lcom/alipay/security/mobile/auth/AbstractAuthenticator;->supported:Z

    .line 68
    return-void
.end method
