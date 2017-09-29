.class public Lcom/alipay/security/mobile/alipayauthenticatorservice/message/Update;
.super Ljava/lang/Object;
.source "Update.java"


# instance fields
.field public downloadurl:Ljava/lang/String;

.field public sec_downloadurl:Ljava/lang/String;

.field public ta_md5:Ljava/lang/String;

.field public ta_version:Ljava/lang/String;

.field public version:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDownloadUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/message/Update;->downloadurl:Ljava/lang/String;

    return-object v0
.end method

.method public getTa_downloadurl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/message/Update;->sec_downloadurl:Ljava/lang/String;

    return-object v0
.end method

.method public getTa_md5()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/message/Update;->ta_md5:Ljava/lang/String;

    return-object v0
.end method

.method public getTa_version()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/message/Update;->ta_version:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/message/Update;->version:I

    return v0
.end method

.method public setDownloadurl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/message/Update;->downloadurl:Ljava/lang/String;

    .line 24
    return-void
.end method

.method public setTa_downloadurl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/message/Update;->sec_downloadurl:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public setTa_md5(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/message/Update;->ta_md5:Ljava/lang/String;

    .line 88
    return-void
.end method

.method public setTa_version(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/message/Update;->ta_version:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public setVersion(I)V
    .locals 0

    .prologue
    .line 55
    iput p1, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/message/Update;->version:I

    .line 56
    return-void
.end method
