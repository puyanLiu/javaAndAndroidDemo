.class public Lcom/alipay/fido/message/RegistrationAssertion;
.super Ljava/lang/Object;
.source "RegistrationAssertion.java"


# instance fields
.field aaid:Ljava/lang/String;

.field exts:[Lcom/alipay/fido/message/Extension;

.field krd:Ljava/lang/String;

.field scheme:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAaid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/alipay/fido/message/RegistrationAssertion;->aaid:Ljava/lang/String;

    return-object v0
.end method

.method public getExts()[Lcom/alipay/fido/message/Extension;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/alipay/fido/message/RegistrationAssertion;->exts:[Lcom/alipay/fido/message/Extension;

    return-object v0
.end method

.method public getKrd()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/alipay/fido/message/RegistrationAssertion;->krd:Ljava/lang/String;

    return-object v0
.end method

.method public getScheme()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/alipay/fido/message/RegistrationAssertion;->scheme:Ljava/lang/String;

    return-object v0
.end method

.method public setAaid(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/alipay/fido/message/RegistrationAssertion;->aaid:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public setExts([Lcom/alipay/fido/message/Extension;)V
    .locals 0

    .prologue
    .line 102
    iput-object p1, p0, Lcom/alipay/fido/message/RegistrationAssertion;->exts:[Lcom/alipay/fido/message/Extension;

    .line 103
    return-void
.end method

.method public setKrd(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lcom/alipay/fido/message/RegistrationAssertion;->krd:Ljava/lang/String;

    .line 85
    return-void
.end method

.method public setScheme(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/alipay/fido/message/RegistrationAssertion;->scheme:Ljava/lang/String;

    .line 67
    return-void
.end method
