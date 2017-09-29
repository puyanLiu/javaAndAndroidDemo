.class public Lcom/alipay/fido/message/DeregisterRequest;
.super Ljava/lang/Object;
.source "DeregisterRequest.java"


# instance fields
.field authenticators:[Lcom/alipay/fido/message/DeregisterAuthenticator;

.field header:Lcom/alipay/fido/message/OperationHeader;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Lcom/alipay/fido/message/OperationHeader;

    invoke-direct {v0}, Lcom/alipay/fido/message/OperationHeader;-><init>()V

    iput-object v0, p0, Lcom/alipay/fido/message/DeregisterRequest;->header:Lcom/alipay/fido/message/OperationHeader;

    .line 29
    iget-object v0, p0, Lcom/alipay/fido/message/DeregisterRequest;->header:Lcom/alipay/fido/message/OperationHeader;

    sget-object v1, Lcom/alipay/fido/message/OperationHeader;->OP_DEREG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/fido/message/OperationHeader;->setOp(Ljava/lang/String;)V

    .line 30
    iget-object v0, p0, Lcom/alipay/fido/message/DeregisterRequest;->header:Lcom/alipay/fido/message/OperationHeader;

    sget-object v1, Lcom/alipay/fido/message/Setting;->APPID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/fido/message/OperationHeader;->setAppID(Ljava/lang/String;)V

    .line 31
    return-void
.end method


# virtual methods
.method public getAuthenticators()[Lcom/alipay/fido/message/DeregisterAuthenticator;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/alipay/fido/message/DeregisterRequest;->authenticators:[Lcom/alipay/fido/message/DeregisterAuthenticator;

    return-object v0
.end method

.method public getHeader()Lcom/alipay/fido/message/OperationHeader;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/alipay/fido/message/DeregisterRequest;->header:Lcom/alipay/fido/message/OperationHeader;

    return-object v0
.end method

.method public setAuthenticators([Lcom/alipay/fido/message/DeregisterAuthenticator;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/alipay/fido/message/DeregisterRequest;->authenticators:[Lcom/alipay/fido/message/DeregisterAuthenticator;

    .line 67
    return-void
.end method

.method public setHeader(Lcom/alipay/fido/message/OperationHeader;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/alipay/fido/message/DeregisterRequest;->header:Lcom/alipay/fido/message/OperationHeader;

    .line 49
    return-void
.end method
