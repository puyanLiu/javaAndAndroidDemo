.class public Lcom/alipay/fido/message/AuthenticationRequest;
.super Ljava/lang/Object;
.source "AuthenticationRequest.java"


# instance fields
.field authData:Ljava/lang/String;

.field challenge:Ljava/lang/String;

.field extraParams:Ljava/lang/String;

.field header:Lcom/alipay/fido/message/OperationHeader;

.field policy:Lcom/alipay/fido/message/Policy;

.field transaction:Lcom/alipay/fido/message/Transaction;

.field updatePolicy:I

.field username:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Lcom/alipay/fido/message/OperationHeader;

    invoke-direct {v0}, Lcom/alipay/fido/message/OperationHeader;-><init>()V

    iput-object v0, p0, Lcom/alipay/fido/message/AuthenticationRequest;->header:Lcom/alipay/fido/message/OperationHeader;

    .line 59
    iget-object v0, p0, Lcom/alipay/fido/message/AuthenticationRequest;->header:Lcom/alipay/fido/message/OperationHeader;

    sget-object v1, Lcom/alipay/fido/message/OperationHeader;->OP_AUTH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/fido/message/OperationHeader;->setOp(Ljava/lang/String;)V

    .line 60
    iget-object v0, p0, Lcom/alipay/fido/message/AuthenticationRequest;->header:Lcom/alipay/fido/message/OperationHeader;

    sget-object v1, Lcom/alipay/fido/message/Setting;->APPID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/fido/message/OperationHeader;->setAppID(Ljava/lang/String;)V

    .line 61
    return-void
.end method


# virtual methods
.method public getAuthData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/alipay/fido/message/AuthenticationRequest;->authData:Ljava/lang/String;

    return-object v0
.end method

.method public getChallenge()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/alipay/fido/message/AuthenticationRequest;->challenge:Ljava/lang/String;

    return-object v0
.end method

.method public getExtraParams()Ljava/lang/String;
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/alipay/fido/message/AuthenticationRequest;->extraParams:Ljava/lang/String;

    return-object v0
.end method

.method public getHeader()Lcom/alipay/fido/message/OperationHeader;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/alipay/fido/message/AuthenticationRequest;->header:Lcom/alipay/fido/message/OperationHeader;

    return-object v0
.end method

.method public getPolicy()Lcom/alipay/fido/message/Policy;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/alipay/fido/message/AuthenticationRequest;->policy:Lcom/alipay/fido/message/Policy;

    return-object v0
.end method

.method public getTransaction()Lcom/alipay/fido/message/Transaction;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/alipay/fido/message/AuthenticationRequest;->transaction:Lcom/alipay/fido/message/Transaction;

    return-object v0
.end method

.method public getUpdatePolicy()I
    .locals 1

    .prologue
    .line 177
    iget v0, p0, Lcom/alipay/fido/message/AuthenticationRequest;->updatePolicy:I

    return v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/alipay/fido/message/AuthenticationRequest;->username:Ljava/lang/String;

    return-object v0
.end method

.method public setAuthData(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 150
    iput-object p1, p0, Lcom/alipay/fido/message/AuthenticationRequest;->authData:Ljava/lang/String;

    .line 151
    return-void
.end method

.method public setChallenge(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Lcom/alipay/fido/message/AuthenticationRequest;->challenge:Ljava/lang/String;

    .line 97
    return-void
.end method

.method public setExtraParams(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 204
    iput-object p1, p0, Lcom/alipay/fido/message/AuthenticationRequest;->extraParams:Ljava/lang/String;

    .line 205
    return-void
.end method

.method public setHeader(Lcom/alipay/fido/message/OperationHeader;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcom/alipay/fido/message/AuthenticationRequest;->header:Lcom/alipay/fido/message/OperationHeader;

    .line 79
    return-void
.end method

.method public setPolicy(Lcom/alipay/fido/message/Policy;)V
    .locals 0

    .prologue
    .line 168
    iput-object p1, p0, Lcom/alipay/fido/message/AuthenticationRequest;->policy:Lcom/alipay/fido/message/Policy;

    .line 169
    return-void
.end method

.method public setTransaction(Lcom/alipay/fido/message/Transaction;)V
    .locals 0

    .prologue
    .line 132
    iput-object p1, p0, Lcom/alipay/fido/message/AuthenticationRequest;->transaction:Lcom/alipay/fido/message/Transaction;

    .line 133
    return-void
.end method

.method public setUpdatePolicy(I)V
    .locals 0

    .prologue
    .line 186
    iput p1, p0, Lcom/alipay/fido/message/AuthenticationRequest;->updatePolicy:I

    .line 187
    return-void
.end method

.method public setUsername(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 114
    iput-object p1, p0, Lcom/alipay/fido/message/AuthenticationRequest;->username:Ljava/lang/String;

    .line 115
    return-void
.end method
