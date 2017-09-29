.class public Lcom/alipay/security/mobile/auth/AuthInfo;
.super Ljava/lang/Object;
.source "AuthInfo.java"


# instance fields
.field protected downloadUrl:Ljava/lang/String;

.field protected phoneModle:Ljava/lang/String;

.field protected protocolType:I

.field protected protocolVersion:I

.field protected type:I

.field protected vendor:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    return-void
.end method

.method public constructor <init>(IIIILjava/lang/String;)V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput p1, p0, Lcom/alipay/security/mobile/auth/AuthInfo;->type:I

    .line 70
    iput p2, p0, Lcom/alipay/security/mobile/auth/AuthInfo;->vendor:I

    .line 71
    iput p3, p0, Lcom/alipay/security/mobile/auth/AuthInfo;->protocolType:I

    .line 72
    iput p4, p0, Lcom/alipay/security/mobile/auth/AuthInfo;->protocolVersion:I

    .line 73
    iput-object p5, p0, Lcom/alipay/security/mobile/auth/AuthInfo;->phoneModle:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public constructor <init>(IIIILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput p1, p0, Lcom/alipay/security/mobile/auth/AuthInfo;->type:I

    .line 59
    iput p2, p0, Lcom/alipay/security/mobile/auth/AuthInfo;->vendor:I

    .line 60
    iput p3, p0, Lcom/alipay/security/mobile/auth/AuthInfo;->protocolType:I

    .line 61
    iput p4, p0, Lcom/alipay/security/mobile/auth/AuthInfo;->protocolVersion:I

    .line 62
    iput-object p5, p0, Lcom/alipay/security/mobile/auth/AuthInfo;->phoneModle:Ljava/lang/String;

    .line 63
    iput-object p6, p0, Lcom/alipay/security/mobile/auth/AuthInfo;->downloadUrl:Ljava/lang/String;

    .line 65
    return-void
.end method


# virtual methods
.method public getDownloadUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/alipay/security/mobile/auth/AuthInfo;->downloadUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneModle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/alipay/security/mobile/auth/AuthInfo;->phoneModle:Ljava/lang/String;

    return-object v0
.end method

.method public getProtocolType()I
    .locals 1

    .prologue
    .line 118
    iget v0, p0, Lcom/alipay/security/mobile/auth/AuthInfo;->protocolType:I

    return v0
.end method

.method public getProtocolVersion()I
    .locals 1

    .prologue
    .line 136
    iget v0, p0, Lcom/alipay/security/mobile/auth/AuthInfo;->protocolVersion:I

    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 82
    iget v0, p0, Lcom/alipay/security/mobile/auth/AuthInfo;->type:I

    return v0
.end method

.method public getVendor()I
    .locals 1

    .prologue
    .line 100
    iget v0, p0, Lcom/alipay/security/mobile/auth/AuthInfo;->vendor:I

    return v0
.end method

.method public setDownloadUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 179
    iput-object p1, p0, Lcom/alipay/security/mobile/auth/AuthInfo;->downloadUrl:Ljava/lang/String;

    .line 180
    return-void
.end method

.method public setPhoneModle(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 163
    iput-object p1, p0, Lcom/alipay/security/mobile/auth/AuthInfo;->phoneModle:Ljava/lang/String;

    .line 164
    return-void
.end method

.method public setProtocolType(I)V
    .locals 0

    .prologue
    .line 127
    iput p1, p0, Lcom/alipay/security/mobile/auth/AuthInfo;->protocolType:I

    .line 128
    return-void
.end method

.method public setProtocolVersion(I)V
    .locals 0

    .prologue
    .line 145
    iput p1, p0, Lcom/alipay/security/mobile/auth/AuthInfo;->protocolVersion:I

    .line 146
    return-void
.end method

.method public setType(I)V
    .locals 0

    .prologue
    .line 91
    iput p1, p0, Lcom/alipay/security/mobile/auth/AuthInfo;->type:I

    .line 92
    return-void
.end method

.method public setVendor(I)V
    .locals 0

    .prologue
    .line 109
    iput p1, p0, Lcom/alipay/security/mobile/auth/AuthInfo;->vendor:I

    .line 110
    return-void
.end method
