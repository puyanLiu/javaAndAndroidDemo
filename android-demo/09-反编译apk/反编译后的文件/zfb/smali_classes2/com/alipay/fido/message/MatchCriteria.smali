.class public Lcom/alipay/fido/message/MatchCriteria;
.super Ljava/lang/Object;
.source "MatchCriteria.java"


# instance fields
.field aaid:Ljava/lang/String;

.field attachment:Ljava/math/BigInteger;

.field authenticationFactor:Ljava/math/BigInteger;

.field exts:[Lcom/alipay/fido/message/Extension;

.field keyIDList:[Ljava/lang/String;

.field keyProtection:Ljava/math/BigInteger;

.field secureDisplay:Ljava/math/BigInteger;

.field supportedAuthAlgs:[J

.field supportedSchemes:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAaid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/alipay/fido/message/MatchCriteria;->aaid:Ljava/lang/String;

    return-object v0
.end method

.method public getAttachment()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/alipay/fido/message/MatchCriteria;->attachment:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getAuthenticationFactor()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/alipay/fido/message/MatchCriteria;->authenticationFactor:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getExts()[Lcom/alipay/fido/message/Extension;
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/alipay/fido/message/MatchCriteria;->exts:[Lcom/alipay/fido/message/Extension;

    return-object v0
.end method

.method public getKeyIDList()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/alipay/fido/message/MatchCriteria;->keyIDList:[Ljava/lang/String;

    return-object v0
.end method

.method public getKeyProtection()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/alipay/fido/message/MatchCriteria;->keyProtection:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getSecureDisplay()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/alipay/fido/message/MatchCriteria;->secureDisplay:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getSupportedAuthAlgs()[J
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/alipay/fido/message/MatchCriteria;->supportedAuthAlgs:[J

    return-object v0
.end method

.method public getSupportedSchemes()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/alipay/fido/message/MatchCriteria;->supportedSchemes:[Ljava/lang/String;

    return-object v0
.end method

.method public setAaid(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lcom/alipay/fido/message/MatchCriteria;->aaid:Ljava/lang/String;

    .line 75
    return-void
.end method

.method public setAttachment(Ljava/math/BigInteger;)V
    .locals 0

    .prologue
    .line 146
    iput-object p1, p0, Lcom/alipay/fido/message/MatchCriteria;->attachment:Ljava/math/BigInteger;

    .line 147
    return-void
.end method

.method public setAuthenticationFactor(Ljava/math/BigInteger;)V
    .locals 0

    .prologue
    .line 110
    iput-object p1, p0, Lcom/alipay/fido/message/MatchCriteria;->authenticationFactor:Ljava/math/BigInteger;

    .line 111
    return-void
.end method

.method public setExts([Lcom/alipay/fido/message/Extension;)V
    .locals 0

    .prologue
    .line 218
    iput-object p1, p0, Lcom/alipay/fido/message/MatchCriteria;->exts:[Lcom/alipay/fido/message/Extension;

    .line 219
    return-void
.end method

.method public setKeyIDList([Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Lcom/alipay/fido/message/MatchCriteria;->keyIDList:[Ljava/lang/String;

    .line 93
    return-void
.end method

.method public setKeyProtection(Ljava/math/BigInteger;)V
    .locals 0

    .prologue
    .line 128
    iput-object p1, p0, Lcom/alipay/fido/message/MatchCriteria;->keyProtection:Ljava/math/BigInteger;

    .line 129
    return-void
.end method

.method public setSecureDisplay(Ljava/math/BigInteger;)V
    .locals 0

    .prologue
    .line 164
    iput-object p1, p0, Lcom/alipay/fido/message/MatchCriteria;->secureDisplay:Ljava/math/BigInteger;

    .line 165
    return-void
.end method

.method public setSupportedAuthAlgs([J)V
    .locals 0

    .prologue
    .line 182
    iput-object p1, p0, Lcom/alipay/fido/message/MatchCriteria;->supportedAuthAlgs:[J

    .line 183
    return-void
.end method

.method public setSupportedSchemes([Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 200
    iput-object p1, p0, Lcom/alipay/fido/message/MatchCriteria;->supportedSchemes:[Ljava/lang/String;

    .line 201
    return-void
.end method
