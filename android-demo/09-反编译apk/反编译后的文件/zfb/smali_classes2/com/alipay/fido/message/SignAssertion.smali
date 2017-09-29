.class public Lcom/alipay/fido/message/SignAssertion;
.super Ljava/lang/Object;
.source "SignAssertion.java"


# instance fields
.field KeyID:Ljava/lang/String;

.field aaid:Ljava/lang/String;

.field exts:[Lcom/alipay/fido/message/Extension;

.field scheme:Ljava/lang/String;

.field signedData:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    return-void
.end method


# virtual methods
.method public getAaid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/alipay/fido/message/SignAssertion;->aaid:Ljava/lang/String;

    return-object v0
.end method

.method public getExts()[Lcom/alipay/fido/message/Extension;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/alipay/fido/message/SignAssertion;->exts:[Lcom/alipay/fido/message/Extension;

    return-object v0
.end method

.method public getKeyID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/alipay/fido/message/SignAssertion;->KeyID:Ljava/lang/String;

    return-object v0
.end method

.method public getScheme()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/alipay/fido/message/SignAssertion;->scheme:Ljava/lang/String;

    return-object v0
.end method

.method public getSignedData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/alipay/fido/message/SignAssertion;->signedData:Ljava/lang/String;

    return-object v0
.end method

.method public setAaid(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/alipay/fido/message/SignAssertion;->aaid:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public setExts([Lcom/alipay/fido/message/Extension;)V
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Lcom/alipay/fido/message/SignAssertion;->exts:[Lcom/alipay/fido/message/Extension;

    .line 123
    return-void
.end method

.method public setKeyID(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lcom/alipay/fido/message/SignAssertion;->KeyID:Ljava/lang/String;

    .line 75
    return-void
.end method

.method public setScheme(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lcom/alipay/fido/message/SignAssertion;->scheme:Ljava/lang/String;

    .line 91
    return-void
.end method

.method public setSignedData(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lcom/alipay/fido/message/SignAssertion;->signedData:Ljava/lang/String;

    .line 107
    return-void
.end method
