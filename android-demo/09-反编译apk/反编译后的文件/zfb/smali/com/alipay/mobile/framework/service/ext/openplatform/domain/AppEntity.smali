.class public Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;
.super Ljava/lang/Object;
.source "AppEntity.java"


# static fields
.field public static final COL_APPID:Ljava/lang/String; = "appId"

.field public static final COL_AUTOSTATUS:Ljava/lang/String; = "autoUpdate"


# instance fields
.field private alipayApp:Z
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private appId:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        index = true
        unique = true
    .end annotation
.end field

.field private appSource:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private autoStatus:Z
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "autoUpdate"
    .end annotation
.end field

.field private canSearch:Z
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private desc:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private display:Z
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private downloadUrl:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private extra:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private h5AppCdnBaseUrl:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private iconUrl:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private id:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        generatedId = true
    .end annotation
.end field

.field private incrementPkgUrl:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private installerType:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private isRecommend:Z
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private language:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private localIcon:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private md5:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private movable:Z
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private name:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private needAuth:Z
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private needAutoAuth:Z
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private needShowNewFlag:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private packageName:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private pageUrl:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private pkgPath:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private pkgVersion:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private preinstall:Z
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private preinstallVersion:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private schemeUri:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private searchKey:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private size:J
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private slogan:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private status:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private version:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 572
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    iput-boolean v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->isRecommend:Z

    .line 140
    iput-boolean v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->needAuth:Z

    .line 145
    iput-boolean v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->needAutoAuth:Z

    .line 161
    iput v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->needShowNewFlag:I

    .line 170
    iput-boolean v1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->movable:Z

    .line 176
    iput-boolean v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->preinstall:Z

    .line 195
    iput-boolean v1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->canSearch:Z

    .line 573
    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 577
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    iput-boolean v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->isRecommend:Z

    .line 140
    iput-boolean v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->needAuth:Z

    .line 145
    iput-boolean v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->needAutoAuth:Z

    .line 161
    iput v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->needShowNewFlag:I

    .line 170
    iput-boolean v1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->movable:Z

    .line 176
    iput-boolean v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->preinstall:Z

    .line 195
    iput-boolean v1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->canSearch:Z

    .line 590
    iput-boolean p1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->alipayApp:Z

    .line 591
    iput-object p2, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->appId:Ljava/lang/String;

    .line 592
    iput-object p3, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->desc:Ljava/lang/String;

    .line 593
    iput-boolean p4, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->display:Z

    .line 594
    iput-object p5, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->downloadUrl:Ljava/lang/String;

    .line 595
    iput-object p6, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->iconUrl:Ljava/lang/String;

    .line 596
    iput-object p7, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->installerType:Ljava/lang/String;

    .line 597
    iput-object p8, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->name:Ljava/lang/String;

    .line 598
    int-to-long v0, p9

    iput-wide v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->size:J

    .line 599
    iput-object p10, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->slogan:Ljava/lang/String;

    .line 600
    iput-object p11, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->status:Ljava/lang/String;

    .line 601
    iput-object p12, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->version:Ljava/lang/String;

    .line 602
    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 604
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    iput-boolean v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->isRecommend:Z

    .line 140
    iput-boolean v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->needAuth:Z

    .line 145
    iput-boolean v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->needAutoAuth:Z

    .line 161
    iput v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->needShowNewFlag:I

    .line 170
    iput-boolean v1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->movable:Z

    .line 176
    iput-boolean v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->preinstall:Z

    .line 195
    iput-boolean v1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->canSearch:Z

    .line 618
    iput-boolean p1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->alipayApp:Z

    .line 619
    iput-object p2, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->appId:Ljava/lang/String;

    .line 620
    iput-object p3, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->desc:Ljava/lang/String;

    .line 621
    iput-boolean p4, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->display:Z

    .line 622
    iput-object p5, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->downloadUrl:Ljava/lang/String;

    .line 623
    iput-object p6, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->iconUrl:Ljava/lang/String;

    .line 624
    iput-object p7, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->installerType:Ljava/lang/String;

    .line 625
    iput-object p8, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->name:Ljava/lang/String;

    .line 626
    int-to-long v0, p9

    iput-wide v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->size:J

    .line 627
    iput-object p10, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->slogan:Ljava/lang/String;

    .line 628
    iput-object p11, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->status:Ljava/lang/String;

    .line 629
    iput-object p12, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->version:Ljava/lang/String;

    .line 631
    iput-object p13, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->packageName:Ljava/lang/String;

    .line 632
    return-void
.end method


# virtual methods
.method public getAppId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->appId:Ljava/lang/String;

    return-object v0
.end method

.method public getAppSource()Ljava/lang/String;
    .locals 1

    .prologue
    .line 524
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->appSource:Ljava/lang/String;

    return-object v0
.end method

.method public getDesc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->desc:Ljava/lang/String;

    return-object v0
.end method

.method public getDownloadUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 338
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->downloadUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getExtra()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 391
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 392
    iget-object v1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->extra:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string/jumbo v1, ""

    iget-object v2, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->extra:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 393
    const/4 v2, 0x0

    .line 395
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    iget-object v3, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->extra:Ljava/lang/String;

    invoke-direct {v1, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 399
    :goto_0
    if-eqz v1, :cond_0

    .line 400
    invoke-static {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/AppUtils;->jsonToMap(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v0

    .line 402
    :cond_0
    return-object v0

    .line 396
    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    move-object v1, v2

    goto :goto_0
.end method

.method public getExtraRaw()Ljava/lang/String;
    .locals 1

    .prologue
    .line 406
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->extra:Ljava/lang/String;

    return-object v0
.end method

.method public getH5AppCdnBaseUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 508
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->h5AppCdnBaseUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getIconUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 322
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->iconUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 225
    iget v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->id:I

    return v0
.end method

.method public getIncrementPkgUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 492
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->incrementPkgUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getInstallerType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 282
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->installerType:Ljava/lang/String;

    return-object v0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 541
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->language:Ljava/lang/String;

    return-object v0
.end method

.method public getLocalIcon()Ljava/lang/String;
    .locals 1

    .prologue
    .line 330
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->localIcon:Ljava/lang/String;

    return-object v0
.end method

.method public getMd5()Ljava/lang/String;
    .locals 1

    .prologue
    .line 383
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->md5:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNeedShowNewFlag()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 420
    iget v1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->needShowNewFlag:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 306
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getPageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 440
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->pageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getPkgPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 456
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->pkgPath:Ljava/lang/String;

    return-object v0
.end method

.method public getPkgVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 464
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->pkgVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getPreinstallVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 480
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->preinstallVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getSchemeUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 314
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->schemeUri:Ljava/lang/String;

    return-object v0
.end method

.method public getSearchKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->searchKey:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()J
    .locals 2

    .prologue
    .line 274
    iget-wide v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->size:J

    return-wide v0
.end method

.method public getSlogan()Ljava/lang/String;
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->slogan:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 354
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->status:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->version:Ljava/lang/String;

    return-object v0
.end method

.method public hideNewFlag()V
    .locals 1

    .prologue
    .line 436
    const/4 v0, 0x2

    iput v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->needShowNewFlag:I

    .line 437
    return-void
.end method

.method public isAlipayApp()Z
    .locals 1

    .prologue
    .line 298
    iget-boolean v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->alipayApp:Z

    return v0
.end method

.method public isAutoAuthorize()Z
    .locals 1

    .prologue
    .line 375
    iget-boolean v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->needAutoAuth:Z

    return v0
.end method

.method public isCanSearch()Z
    .locals 1

    .prologue
    .line 217
    iget-boolean v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->canSearch:Z

    return v0
.end method

.method public isDisplay()Z
    .locals 1

    .prologue
    .line 290
    iget-boolean v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->display:Z

    return v0
.end method

.method public isMovable()Z
    .locals 1

    .prologue
    .line 448
    iget-boolean v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->movable:Z

    return v0
.end method

.method public isNeedAuthorize()Z
    .locals 1

    .prologue
    .line 367
    iget-boolean v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->needAuth:Z

    return v0
.end method

.method public isNewFlagUnknown()Z
    .locals 1

    .prologue
    .line 424
    iget v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->needShowNewFlag:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPreinstall()Z
    .locals 1

    .prologue
    .line 472
    iget-boolean v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->preinstall:Z

    return v0
.end method

.method public isRecommend()Z
    .locals 1

    .prologue
    .line 346
    iget-boolean v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->isRecommend:Z

    return v0
.end method

.method public setAlipayApp(Z)V
    .locals 0

    .prologue
    .line 302
    iput-boolean p1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->alipayApp:Z

    .line 303
    return-void
.end method

.method public setAppId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 237
    iput-object p1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->appId:Ljava/lang/String;

    .line 238
    return-void
.end method

.method public setAppSource(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 532
    iput-object p1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->appSource:Ljava/lang/String;

    .line 533
    return-void
.end method

.method public setAutoAuthorize(Z)V
    .locals 0

    .prologue
    .line 379
    iput-boolean p1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->needAutoAuth:Z

    .line 380
    return-void
.end method

.method public setAutoStatus(Z)V
    .locals 0

    .prologue
    .line 363
    iput-boolean p1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->autoStatus:Z

    .line 364
    return-void
.end method

.method public setCanSearch(Z)V
    .locals 0

    .prologue
    .line 221
    iput-boolean p1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->canSearch:Z

    .line 222
    return-void
.end method

.method public setDesc(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 270
    iput-object p1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->desc:Ljava/lang/String;

    .line 271
    return-void
.end method

.method public setDisplay(Z)V
    .locals 0

    .prologue
    .line 294
    iput-boolean p1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->display:Z

    .line 295
    return-void
.end method

.method public setDownloadUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 342
    iput-object p1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->downloadUrl:Ljava/lang/String;

    .line 343
    return-void
.end method

.method public setExtra(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 410
    iput-object p1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->extra:Ljava/lang/String;

    .line 411
    return-void
.end method

.method public setExtra(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 414
    if-eqz p1, :cond_0

    .line 415
    invoke-static {p1}, Lcom/alipay/mobile/framework/service/ext/openplatform/AppUtils;->mapToJson(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->extra:Ljava/lang/String;

    .line 417
    :cond_0
    return-void
.end method

.method public setH5AppCdnBaseUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 516
    iput-object p1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->h5AppCdnBaseUrl:Ljava/lang/String;

    .line 517
    return-void
.end method

.method public setIconUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 326
    iput-object p1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->iconUrl:Ljava/lang/String;

    .line 327
    return-void
.end method

.method public setId(I)V
    .locals 0

    .prologue
    .line 229
    iput p1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->id:I

    .line 230
    return-void
.end method

.method public setIncrementPkgUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 500
    iput-object p1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->incrementPkgUrl:Ljava/lang/String;

    .line 501
    return-void
.end method

.method public setInstallerType(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 286
    iput-object p1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->installerType:Ljava/lang/String;

    .line 287
    return-void
.end method

.method public setLanguage(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 549
    iput-object p1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->language:Ljava/lang/String;

    .line 550
    return-void
.end method

.method public setLocalIcon(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 334
    iput-object p1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->localIcon:Ljava/lang/String;

    .line 335
    return-void
.end method

.method public setMd5(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 387
    iput-object p1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->md5:Ljava/lang/String;

    .line 388
    return-void
.end method

.method public setMovable(Z)V
    .locals 0

    .prologue
    .line 452
    iput-boolean p1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->movable:Z

    .line 453
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 246
    iput-object p1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->name:Ljava/lang/String;

    .line 247
    return-void
.end method

.method public setNeedAuthorize(Z)V
    .locals 0

    .prologue
    .line 371
    iput-boolean p1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->needAuth:Z

    .line 372
    return-void
.end method

.method public setNeedShowNewFlag(Z)V
    .locals 1

    .prologue
    .line 428
    if-eqz p1, :cond_0

    .line 429
    const/4 v0, 0x1

    iput v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->needShowNewFlag:I

    .line 433
    :goto_0
    return-void

    .line 431
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->needShowNewFlag:I

    goto :goto_0
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 310
    iput-object p1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->packageName:Ljava/lang/String;

    .line 311
    return-void
.end method

.method public setPageUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 444
    iput-object p1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->pageUrl:Ljava/lang/String;

    .line 445
    return-void
.end method

.method public setPkgPath(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 460
    iput-object p1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->pkgPath:Ljava/lang/String;

    .line 461
    return-void
.end method

.method public setPkgVersion(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 468
    iput-object p1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->pkgVersion:Ljava/lang/String;

    .line 469
    return-void
.end method

.method public setPreinstall(Z)V
    .locals 0

    .prologue
    .line 476
    iput-boolean p1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->preinstall:Z

    .line 477
    return-void
.end method

.method public setPreinstallVersion(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 484
    iput-object p1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->preinstallVersion:Ljava/lang/String;

    .line 485
    return-void
.end method

.method public setRecommend(Z)V
    .locals 0

    .prologue
    .line 350
    iput-boolean p1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->isRecommend:Z

    .line 351
    return-void
.end method

.method public setSchemeUri(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 318
    iput-object p1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->schemeUri:Ljava/lang/String;

    .line 319
    return-void
.end method

.method public setSearchKey(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 213
    iput-object p1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->searchKey:Ljava/lang/String;

    .line 214
    return-void
.end method

.method public setSize(J)V
    .locals 0

    .prologue
    .line 278
    iput-wide p1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->size:J

    .line 279
    return-void
.end method

.method public setSlogan(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 262
    iput-object p1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->slogan:Ljava/lang/String;

    .line 263
    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 358
    iput-object p1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->status:Ljava/lang/String;

    .line 359
    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 254
    iput-object p1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->version:Ljava/lang/String;

    .line 255
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 554
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 555
    const-string/jumbo v1, "appId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 556
    iget-object v1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->appId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 557
    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 558
    const-string/jumbo v1, "name:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 559
    iget-object v1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 560
    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 561
    const-string/jumbo v1, "installerType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 562
    iget-object v1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->installerType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 563
    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 564
    const-string/jumbo v1, "needAuth:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 565
    iget-boolean v1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->needAuth:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    .line 566
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
