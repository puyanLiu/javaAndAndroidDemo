.class public Lcom/alipay/fido/acl/TrustedApps;
.super Ljava/lang/Object;
.source "TrustedApps.java"


# instance fields
.field ids:Ljava/util/List;

.field protected version:Lcom/alipay/fido/message/Version;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    return-void
.end method


# virtual methods
.method public getIds()Ljava/util/List;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/alipay/fido/acl/TrustedApps;->ids:Ljava/util/List;

    return-object v0
.end method

.method public getVersion()Lcom/alipay/fido/message/Version;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/alipay/fido/acl/TrustedApps;->version:Lcom/alipay/fido/message/Version;

    return-object v0
.end method

.method public setIds(Ljava/util/List;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/alipay/fido/acl/TrustedApps;->ids:Ljava/util/List;

    .line 69
    return-void
.end method

.method public setVersion(Lcom/alipay/fido/message/Version;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/alipay/fido/acl/TrustedApps;->version:Lcom/alipay/fido/message/Version;

    .line 51
    return-void
.end method
