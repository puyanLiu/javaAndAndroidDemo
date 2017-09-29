.class public Lcom/alipay/fido/message/RegisterRequest;
.super Lcom/alipay/fido/message/UAFMessage;
.source "RegisterRequest.java"


# instance fields
.field challenge:Ljava/lang/String;

.field header:Lcom/alipay/fido/message/OperationHeader;

.field policy:Lcom/alipay/fido/message/Policy;

.field regData:Ljava/lang/String;

.field username:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/alipay/fido/message/UAFMessage;-><init>()V

    .line 43
    new-instance v0, Lcom/alipay/fido/message/OperationHeader;

    invoke-direct {v0}, Lcom/alipay/fido/message/OperationHeader;-><init>()V

    iput-object v0, p0, Lcom/alipay/fido/message/RegisterRequest;->header:Lcom/alipay/fido/message/OperationHeader;

    .line 44
    iget-object v0, p0, Lcom/alipay/fido/message/RegisterRequest;->header:Lcom/alipay/fido/message/OperationHeader;

    sget-object v1, Lcom/alipay/fido/message/OperationHeader;->OP_REG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/fido/message/OperationHeader;->setOp(Ljava/lang/String;)V

    .line 45
    iget-object v0, p0, Lcom/alipay/fido/message/RegisterRequest;->header:Lcom/alipay/fido/message/OperationHeader;

    sget-object v1, Lcom/alipay/fido/message/Setting;->APPID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/fido/message/OperationHeader;->setAppID(Ljava/lang/String;)V

    .line 46
    return-void
.end method


# virtual methods
.method public getChallenge()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/alipay/fido/message/RegisterRequest;->challenge:Ljava/lang/String;

    return-object v0
.end method

.method public getHeader()Lcom/alipay/fido/message/OperationHeader;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/alipay/fido/message/RegisterRequest;->header:Lcom/alipay/fido/message/OperationHeader;

    return-object v0
.end method

.method public getPolicy()Lcom/alipay/fido/message/Policy;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/alipay/fido/message/RegisterRequest;->policy:Lcom/alipay/fido/message/Policy;

    return-object v0
.end method

.method public getRegData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/alipay/fido/message/RegisterRequest;->regData:Ljava/lang/String;

    return-object v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/alipay/fido/message/RegisterRequest;->username:Ljava/lang/String;

    return-object v0
.end method

.method public setChallenge(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lcom/alipay/fido/message/RegisterRequest;->challenge:Ljava/lang/String;

    .line 82
    return-void
.end method

.method public setHeader(Lcom/alipay/fido/message/OperationHeader;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/alipay/fido/message/RegisterRequest;->header:Lcom/alipay/fido/message/OperationHeader;

    .line 64
    return-void
.end method

.method public setPolicy(Lcom/alipay/fido/message/Policy;)V
    .locals 0

    .prologue
    .line 135
    iput-object p1, p0, Lcom/alipay/fido/message/RegisterRequest;->policy:Lcom/alipay/fido/message/Policy;

    .line 136
    return-void
.end method

.method public setRegData(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 117
    iput-object p1, p0, Lcom/alipay/fido/message/RegisterRequest;->regData:Ljava/lang/String;

    .line 118
    return-void
.end method

.method public setUsername(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Lcom/alipay/fido/message/RegisterRequest;->username:Ljava/lang/String;

    .line 100
    return-void
.end method
