.class public Lcom/alipay/fido/message/RegisterResponse;
.super Ljava/lang/Object;
.source "RegisterResponse.java"


# instance fields
.field assertions:[Lcom/alipay/fido/message/RegistrationAssertion;

.field fcParams:Ljava/lang/String;

.field header:Lcom/alipay/fido/message/OperationHeader;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Lcom/alipay/fido/message/OperationHeader;

    invoke-direct {v0}, Lcom/alipay/fido/message/OperationHeader;-><init>()V

    iput-object v0, p0, Lcom/alipay/fido/message/RegisterResponse;->header:Lcom/alipay/fido/message/OperationHeader;

    .line 36
    iget-object v0, p0, Lcom/alipay/fido/message/RegisterResponse;->header:Lcom/alipay/fido/message/OperationHeader;

    sget-object v1, Lcom/alipay/fido/message/OperationHeader;->OP_REG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/fido/message/OperationHeader;->setOp(Ljava/lang/String;)V

    .line 37
    iget-object v0, p0, Lcom/alipay/fido/message/RegisterResponse;->header:Lcom/alipay/fido/message/OperationHeader;

    sget-object v1, Lcom/alipay/fido/message/Setting;->APPID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/fido/message/OperationHeader;->setAppID(Ljava/lang/String;)V

    .line 38
    return-void
.end method


# virtual methods
.method public getAssertions()[Lcom/alipay/fido/message/RegistrationAssertion;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/alipay/fido/message/RegisterResponse;->assertions:[Lcom/alipay/fido/message/RegistrationAssertion;

    return-object v0
.end method

.method public getFcParams()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/alipay/fido/message/RegisterResponse;->fcParams:Ljava/lang/String;

    return-object v0
.end method

.method public getHeader()Lcom/alipay/fido/message/OperationHeader;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/alipay/fido/message/RegisterResponse;->header:Lcom/alipay/fido/message/OperationHeader;

    return-object v0
.end method

.method public setAssertions([Lcom/alipay/fido/message/RegistrationAssertion;)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lcom/alipay/fido/message/RegisterResponse;->assertions:[Lcom/alipay/fido/message/RegistrationAssertion;

    .line 92
    return-void
.end method

.method public setFcParams(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lcom/alipay/fido/message/RegisterResponse;->fcParams:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public setHeader(Lcom/alipay/fido/message/OperationHeader;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcom/alipay/fido/message/RegisterResponse;->header:Lcom/alipay/fido/message/OperationHeader;

    .line 56
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "RegisterResponse [header="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/fido/message/RegisterResponse;->header:Lcom/alipay/fido/message/OperationHeader;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", fcParams="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/fido/message/RegisterResponse;->fcParams:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", assertions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/fido/message/RegisterResponse;->assertions:[Lcom/alipay/fido/message/RegistrationAssertion;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
