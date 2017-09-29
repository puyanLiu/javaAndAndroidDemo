.class public Lcom/alipay/fido/message/DeregisterAuthenticator;
.super Ljava/lang/Object;
.source "DeregisterAuthenticator.java"


# instance fields
.field aaid:Ljava/lang/String;

.field deregData:Ljava/lang/String;

.field scheme:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    return-void
.end method


# virtual methods
.method public getAaid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/alipay/fido/message/DeregisterAuthenticator;->aaid:Ljava/lang/String;

    return-object v0
.end method

.method public getDeregData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/alipay/fido/message/DeregisterAuthenticator;->deregData:Ljava/lang/String;

    return-object v0
.end method

.method public getScheme()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/alipay/fido/message/DeregisterAuthenticator;->scheme:Ljava/lang/String;

    return-object v0
.end method

.method public setAaid(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/alipay/fido/message/DeregisterAuthenticator;->aaid:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public setDeregData(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lcom/alipay/fido/message/DeregisterAuthenticator;->deregData:Ljava/lang/String;

    .line 87
    return-void
.end method

.method public setScheme(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/alipay/fido/message/DeregisterAuthenticator;->scheme:Ljava/lang/String;

    .line 69
    return-void
.end method
