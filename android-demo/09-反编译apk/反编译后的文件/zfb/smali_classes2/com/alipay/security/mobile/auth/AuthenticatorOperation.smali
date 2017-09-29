.class public Lcom/alipay/security/mobile/auth/AuthenticatorOperation;
.super Ljava/lang/Object;
.source "AuthenticatorOperation.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public mAuthenticatorCallback:Lcom/alipay/security/mobile/auth/AuthenticatorCallback;

.field public mAuthenticatorMessage:Lcom/alipay/security/mobile/auth/message/AuthenticatorMessage;


# direct methods
.method public constructor <init>(Lcom/alipay/security/mobile/auth/message/AuthenticatorMessage;Lcom/alipay/security/mobile/auth/AuthenticatorCallback;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/alipay/security/mobile/auth/AuthenticatorOperation;->mAuthenticatorMessage:Lcom/alipay/security/mobile/auth/message/AuthenticatorMessage;

    .line 30
    iput-object p2, p0, Lcom/alipay/security/mobile/auth/AuthenticatorOperation;->mAuthenticatorCallback:Lcom/alipay/security/mobile/auth/AuthenticatorCallback;

    .line 31
    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .prologue
    .line 36
    return-void
.end method
