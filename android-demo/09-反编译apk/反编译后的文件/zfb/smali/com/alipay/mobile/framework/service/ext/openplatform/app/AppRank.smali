.class public Lcom/alipay/mobile/framework/service/ext/openplatform/app/AppRank;
.super Ljava/lang/Object;
.source "AppRank.java"


# instance fields
.field private appId:Ljava/lang/String;

.field private canSearch:Z

.field private desc:Ljava/lang/String;

.field private display:Z

.field private iconUrl:Ljava/lang/String;

.field private language:Ljava/lang/String;

.field private movable:Z

.field private name:Ljava/lang/String;

.field private rank:I

.field private recommend:Z

.field private schemeUri:Ljava/lang/String;

.field private searchKey:Ljava/lang/String;

.field private slogan:Ljava/lang/String;

.field private stageExtProp:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-boolean v1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/AppRank;->movable:Z

    .line 18
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/AppRank;->recommend:Z

    .line 20
    iput-boolean v1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/AppRank;->canSearch:Z

    .line 25
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-boolean v1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/AppRank;->movable:Z

    .line 18
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/AppRank;->recommend:Z

    .line 20
    iput-boolean v1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/AppRank;->canSearch:Z

    .line 28
    iput-object p1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/AppRank;->appId:Ljava/lang/String;

    .line 29
    return-void
.end method


# virtual methods
.method public getAppId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/AppRank;->appId:Ljava/lang/String;

    return-object v0
.end method

.method public getDesc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/AppRank;->desc:Ljava/lang/String;

    return-object v0
.end method

.method public getIconUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/AppRank;->iconUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/AppRank;->language:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/AppRank;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getRank()I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/AppRank;->rank:I

    return v0
.end method

.method public getSchemeUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/AppRank;->schemeUri:Ljava/lang/String;

    return-object v0
.end method

.method public getSearchKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/AppRank;->searchKey:Ljava/lang/String;

    return-object v0
.end method

.method public getSlogan()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/AppRank;->slogan:Ljava/lang/String;

    return-object v0
.end method

.method public getStageExtProp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/AppRank;->stageExtProp:Ljava/lang/String;

    return-object v0
.end method

.method public isCanSearch()Z
    .locals 1

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/AppRank;->canSearch:Z

    return v0
.end method

.method public isDisplay()Z
    .locals 1

    .prologue
    .line 104
    iget-boolean v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/AppRank;->display:Z

    return v0
.end method

.method public isMovable()Z
    .locals 1

    .prologue
    .line 112
    iget-boolean v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/AppRank;->movable:Z

    return v0
.end method

.method public isRecommend()Z
    .locals 1

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/AppRank;->recommend:Z

    return v0
.end method

.method public setAppId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 100
    iput-object p1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/AppRank;->appId:Ljava/lang/String;

    .line 101
    return-void
.end method

.method public setCanSearch(Z)V
    .locals 0

    .prologue
    .line 92
    iput-boolean p1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/AppRank;->canSearch:Z

    .line 93
    return-void
.end method

.method public setDesc(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/AppRank;->desc:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public setDisplay(Z)V
    .locals 0

    .prologue
    .line 108
    iput-boolean p1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/AppRank;->display:Z

    .line 109
    return-void
.end method

.method public setIconUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 124
    iput-object p1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/AppRank;->iconUrl:Ljava/lang/String;

    .line 125
    return-void
.end method

.method public setLanguage(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 149
    iput-object p1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/AppRank;->language:Ljava/lang/String;

    .line 150
    return-void
.end method

.method public setMovable(Z)V
    .locals 0

    .prologue
    .line 116
    iput-boolean p1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/AppRank;->movable:Z

    .line 117
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 132
    iput-object p1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/AppRank;->name:Ljava/lang/String;

    .line 133
    return-void
.end method

.method public setRank(I)V
    .locals 0

    .prologue
    .line 36
    iput p1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/AppRank;->rank:I

    .line 37
    return-void
.end method

.method public setRecommend(Z)V
    .locals 0

    .prologue
    .line 76
    iput-boolean p1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/AppRank;->recommend:Z

    .line 77
    return-void
.end method

.method public setSchemeUri(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/AppRank;->schemeUri:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public setSearchKey(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/AppRank;->searchKey:Ljava/lang/String;

    .line 85
    return-void
.end method

.method public setSlogan(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/AppRank;->slogan:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public setStageExtProp(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 165
    iput-object p1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/AppRank;->stageExtProp:Ljava/lang/String;

    .line 166
    return-void
.end method
