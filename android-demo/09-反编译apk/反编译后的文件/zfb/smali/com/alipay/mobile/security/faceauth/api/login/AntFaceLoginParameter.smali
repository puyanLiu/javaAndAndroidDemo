.class public Lcom/alipay/mobile/security/faceauth/api/login/AntFaceLoginParameter;
.super Lcom/alipay/mobile/security/faceauth/api/AntDetectParameter;
.source "AntFaceLoginParameter.java"


# static fields
.field private static final serialVersionUID:J = 0x2L


# instance fields
.field private headImageUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/alipay/mobile/security/faceauth/api/AntDetectParameter;-><init>()V

    .line 13
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/api/login/AntFaceLoginParameter;->headImageUrl:Ljava/lang/String;

    .line 16
    const v0, 0x10001

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/faceauth/api/login/AntFaceLoginParameter;->setAction(I)V

    .line 17
    return-void
.end method


# virtual methods
.method public clone(Lcom/alipay/mobile/security/faceauth/api/AntDetectParameter;)V
    .locals 3

    .prologue
    .line 28
    invoke-virtual {p1}, Lcom/alipay/mobile/security/faceauth/api/AntDetectParameter;->getAction()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/faceauth/api/login/AntFaceLoginParameter;->setAction(I)V

    .line 29
    invoke-virtual {p1}, Lcom/alipay/mobile/security/faceauth/api/AntDetectParameter;->getAppID()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/faceauth/api/login/AntFaceLoginParameter;->setAppID(I)V

    .line 30
    invoke-virtual {p1}, Lcom/alipay/mobile/security/faceauth/api/AntDetectParameter;->getExtJson()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/faceauth/api/login/AntFaceLoginParameter;->setExtJson(Ljava/lang/String;)V

    .line 31
    invoke-virtual {p1}, Lcom/alipay/mobile/security/faceauth/api/AntDetectParameter;->getApdid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/faceauth/api/login/AntFaceLoginParameter;->setApdid(Ljava/lang/String;)V

    .line 32
    invoke-virtual {p1}, Lcom/alipay/mobile/security/faceauth/api/AntDetectParameter;->getTag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/faceauth/api/login/AntFaceLoginParameter;->setTag(Ljava/lang/String;)V

    .line 33
    invoke-virtual {p1}, Lcom/alipay/mobile/security/faceauth/api/AntDetectParameter;->getRemoteUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/faceauth/api/login/AntFaceLoginParameter;->setRemoteUrl(Ljava/lang/String;)V

    .line 34
    invoke-virtual {p1}, Lcom/alipay/mobile/security/faceauth/api/AntDetectParameter;->isAutoClose()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/faceauth/api/login/AntFaceLoginParameter;->setAutoClose(Z)V

    .line 35
    invoke-virtual {p1}, Lcom/alipay/mobile/security/faceauth/api/AntDetectParameter;->getScene()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/faceauth/api/login/AntFaceLoginParameter;->setScene(I)V

    .line 36
    invoke-virtual {p1}, Lcom/alipay/mobile/security/faceauth/api/AntDetectParameter;->enableNavPage()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/faceauth/api/login/AntFaceLoginParameter;->setEnableNavPage(Z)V

    .line 37
    invoke-virtual {p1}, Lcom/alipay/mobile/security/faceauth/api/AntDetectParameter;->enablePrePoseAlert()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/faceauth/api/login/AntFaceLoginParameter;->setEnablePrePoseAlert(Z)V

    .line 39
    invoke-virtual {p1}, Lcom/alipay/mobile/security/faceauth/api/AntDetectParameter;->getExtProperty()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 40
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 41
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 42
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    .line 43
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 44
    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    .line 45
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lcom/alipay/mobile/security/faceauth/api/login/AntFaceLoginParameter;->addExtProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 48
    :cond_1
    return-void
.end method

.method public getHeadImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/api/login/AntFaceLoginParameter;->headImageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public setHeadImageUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 24
    iput-object p1, p0, Lcom/alipay/mobile/security/faceauth/api/login/AntFaceLoginParameter;->headImageUrl:Ljava/lang/String;

    .line 25
    return-void
.end method
