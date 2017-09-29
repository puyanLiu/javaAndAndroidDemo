.class public Lcom/alipay/fido/message/AuthenticationResponse;
.super Ljava/lang/Object;
.source "AuthenticationResponse.java"


# instance fields
.field assertions:[Lcom/alipay/fido/message/SignAssertion;

.field fcParams:Ljava/lang/String;

.field header:Lcom/alipay/fido/message/OperationHeader;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Lcom/alipay/fido/message/OperationHeader;

    invoke-direct {v0}, Lcom/alipay/fido/message/OperationHeader;-><init>()V

    iput-object v0, p0, Lcom/alipay/fido/message/AuthenticationResponse;->header:Lcom/alipay/fido/message/OperationHeader;

    .line 34
    iget-object v0, p0, Lcom/alipay/fido/message/AuthenticationResponse;->header:Lcom/alipay/fido/message/OperationHeader;

    sget-object v1, Lcom/alipay/fido/message/OperationHeader;->OP_AUTH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/fido/message/OperationHeader;->setOp(Ljava/lang/String;)V

    .line 35
    iget-object v0, p0, Lcom/alipay/fido/message/AuthenticationResponse;->header:Lcom/alipay/fido/message/OperationHeader;

    sget-object v1, Lcom/alipay/fido/message/Setting;->APPID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/fido/message/OperationHeader;->setAppID(Ljava/lang/String;)V

    .line 36
    return-void
.end method


# virtual methods
.method public getAssertions()[Lcom/alipay/fido/message/SignAssertion;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/alipay/fido/message/AuthenticationResponse;->assertions:[Lcom/alipay/fido/message/SignAssertion;

    return-object v0
.end method

.method public getFcParams()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/alipay/fido/message/AuthenticationResponse;->fcParams:Ljava/lang/String;

    return-object v0
.end method

.method public getHeader()Lcom/alipay/fido/message/OperationHeader;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/alipay/fido/message/AuthenticationResponse;->header:Lcom/alipay/fido/message/OperationHeader;

    return-object v0
.end method

.method public setAssertions([Lcom/alipay/fido/message/SignAssertion;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lcom/alipay/fido/message/AuthenticationResponse;->assertions:[Lcom/alipay/fido/message/SignAssertion;

    .line 90
    return-void
.end method

.method public setFcParams(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/alipay/fido/message/AuthenticationResponse;->fcParams:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public setHeader(Lcom/alipay/fido/message/OperationHeader;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/alipay/fido/message/AuthenticationResponse;->header:Lcom/alipay/fido/message/OperationHeader;

    .line 54
    return-void
.end method
