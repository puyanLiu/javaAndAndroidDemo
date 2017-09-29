.class public Lcom/alipay/mobile/security/faceauth/api/sample/AntSampleFaceParameter;
.super Lcom/alipay/mobile/security/faceauth/api/AntDetectParameter;
.source "AntSampleFaceParameter.java"


# instance fields
.field private appName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/alipay/mobile/security/faceauth/api/AntDetectParameter;-><init>()V

    .line 12
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/api/sample/AntSampleFaceParameter;->appName:Ljava/lang/String;

    .line 23
    const/high16 v0, 0x10000

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/faceauth/api/sample/AntSampleFaceParameter;->setAction(I)V

    .line 24
    return-void
.end method


# virtual methods
.method public clone(Lcom/alipay/mobile/security/faceauth/api/AntDetectParameter;)V
    .locals 3

    .prologue
    .line 27
    invoke-virtual {p1}, Lcom/alipay/mobile/security/faceauth/api/AntDetectParameter;->getAction()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/faceauth/api/sample/AntSampleFaceParameter;->setAction(I)V

    .line 28
    invoke-virtual {p1}, Lcom/alipay/mobile/security/faceauth/api/AntDetectParameter;->getAppID()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/faceauth/api/sample/AntSampleFaceParameter;->setAppID(I)V

    .line 29
    invoke-virtual {p1}, Lcom/alipay/mobile/security/faceauth/api/AntDetectParameter;->getExtJson()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/faceauth/api/sample/AntSampleFaceParameter;->setExtJson(Ljava/lang/String;)V

    .line 30
    invoke-virtual {p1}, Lcom/alipay/mobile/security/faceauth/api/AntDetectParameter;->getApdid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/faceauth/api/sample/AntSampleFaceParameter;->setApdid(Ljava/lang/String;)V

    .line 31
    invoke-virtual {p1}, Lcom/alipay/mobile/security/faceauth/api/AntDetectParameter;->getTag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/faceauth/api/sample/AntSampleFaceParameter;->setTag(Ljava/lang/String;)V

    .line 32
    invoke-virtual {p1}, Lcom/alipay/mobile/security/faceauth/api/AntDetectParameter;->getRemoteUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/faceauth/api/sample/AntSampleFaceParameter;->setRemoteUrl(Ljava/lang/String;)V

    .line 33
    invoke-virtual {p1}, Lcom/alipay/mobile/security/faceauth/api/AntDetectParameter;->isAutoClose()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/faceauth/api/sample/AntSampleFaceParameter;->setAutoClose(Z)V

    .line 34
    invoke-virtual {p1}, Lcom/alipay/mobile/security/faceauth/api/AntDetectParameter;->getScene()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/faceauth/api/sample/AntSampleFaceParameter;->setScene(I)V

    .line 35
    invoke-virtual {p1}, Lcom/alipay/mobile/security/faceauth/api/AntDetectParameter;->enableNavPage()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/faceauth/api/sample/AntSampleFaceParameter;->setEnableNavPage(Z)V

    .line 36
    invoke-virtual {p1}, Lcom/alipay/mobile/security/faceauth/api/AntDetectParameter;->enablePrePoseAlert()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/faceauth/api/sample/AntSampleFaceParameter;->setEnablePrePoseAlert(Z)V

    .line 37
    invoke-virtual {p1}, Lcom/alipay/mobile/security/faceauth/api/AntDetectParameter;->getExtProperty()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 38
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 39
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 40
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    .line 41
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 42
    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    .line 43
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lcom/alipay/mobile/security/faceauth/api/sample/AntSampleFaceParameter;->addExtProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 46
    :cond_1
    return-void
.end method

.method public getAppName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/api/sample/AntSampleFaceParameter;->appName:Ljava/lang/String;

    return-object v0
.end method

.method public setAppName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 19
    iput-object p1, p0, Lcom/alipay/mobile/security/faceauth/api/sample/AntSampleFaceParameter;->appName:Ljava/lang/String;

    .line 20
    return-void
.end method
