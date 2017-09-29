.class public Lcom/alipay/mobile/framework/service/ext/openplatform/apps/AppConvertor;
.super Ljava/lang/Object;
.source "AppConvertor.java"


# direct methods
.method public static final a(Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;)Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;
    .locals 3

    .prologue
    .line 34
    if-nez p0, :cond_0

    .line 35
    const/4 v0, 0x0

    .line 60
    :goto_0
    return-object v0

    .line 37
    :cond_0
    new-instance v0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    invoke-direct {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;-><init>()V

    .line 39
    iget-object v1, p0, Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;->appId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setAppId(Ljava/lang/String;)V

    .line 40
    iget-object v1, p0, Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setName(Ljava/lang/String;)V

    .line 41
    iget-object v1, p0, Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;->version:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setVersion(Ljava/lang/String;)V

    .line 42
    iget-object v1, p0, Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;->slogan:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setSlogan(Ljava/lang/String;)V

    .line 43
    iget-object v1, p0, Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;->desc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setDesc(Ljava/lang/String;)V

    .line 44
    iget v1, p0, Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;->size:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setSize(J)V

    .line 45
    iget-object v1, p0, Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;->installerType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setInstallerType(Ljava/lang/String;)V

    .line 46
    iget-boolean v1, p0, Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;->display:Z

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setDisplay(Z)V

    .line 47
    iget-boolean v1, p0, Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;->alipayApp:Z

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setAlipayApp(Z)V

    .line 48
    iget-object v1, p0, Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setPackageName(Ljava/lang/String;)V

    .line 49
    iget-object v1, p0, Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;->schemeUri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setSchemeUri(Ljava/lang/String;)V

    .line 50
    iget-object v1, p0, Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;->iconUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setIconUrl(Ljava/lang/String;)V

    .line 51
    iget-object v1, p0, Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;->downloadUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setDownloadUrl(Ljava/lang/String;)V

    .line 52
    iget-boolean v1, p0, Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;->recommend:Z

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setRecommend(Z)V

    .line 53
    iget-object v1, p0, Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;->status:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setStatus(Ljava/lang/String;)V

    .line 54
    iget-boolean v1, p0, Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;->needAuthorize:Z

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setNeedAuthorize(Z)V

    .line 55
    iget-boolean v1, p0, Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;->autoAuthorize:Z

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setAutoAuthorize(Z)V

    .line 56
    iget-object v1, p0, Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;->md5:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setMd5(Ljava/lang/String;)V

    .line 57
    iget-object v1, p0, Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;->extra:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setExtra(Ljava/util/Map;)V

    .line 58
    iget-object v1, p0, Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;->pageURL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setPageUrl(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static final a(Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppView;Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;
    .locals 3

    .prologue
    .line 99
    if-nez p0, :cond_0

    .line 100
    const/4 v0, 0x0

    .line 132
    :goto_0
    return-object v0

    .line 102
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 103
    const-string/jumbo p1, "zh-Hans"

    .line 105
    :cond_1
    new-instance v0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    invoke-direct {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;-><init>()V

    .line 106
    iget-object v1, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppView;->appId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setAppId(Ljava/lang/String;)V

    .line 107
    iget-boolean v1, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppView;->alipayApp:Z

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setAlipayApp(Z)V

    .line 108
    iget-boolean v1, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppView;->autoAuthorize:Z

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setAutoAuthorize(Z)V

    .line 109
    iget-boolean v1, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppView;->autoStatus:Z

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setAutoStatus(Z)V

    .line 110
    iget-object v1, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppView;->desc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setDesc(Ljava/lang/String;)V

    .line 111
    iget-boolean v1, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppView;->display:Z

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setDisplay(Z)V

    .line 112
    iget-object v1, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppView;->pkgUrlNew:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setDownloadUrl(Ljava/lang/String;)V

    .line 113
    iget-object v1, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppView;->extra:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setExtra(Ljava/lang/String;)V

    .line 114
    iget-object v1, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppView;->iconUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setIconUrl(Ljava/lang/String;)V

    .line 115
    iget-object v1, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppView;->pkgType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setInstallerType(Ljava/lang/String;)V

    .line 116
    iget-object v1, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppView;->md5:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setMd5(Ljava/lang/String;)V

    .line 117
    iget-boolean v1, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppView;->movable:Z

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setMovable(Z)V

    .line 118
    iget-object v1, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppView;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setName(Ljava/lang/String;)V

    .line 119
    iget-boolean v1, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppView;->needAuthorize:Z

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setNeedAuthorize(Z)V

    .line 120
    iget-object v1, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppView;->thirdPkgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setPackageName(Ljava/lang/String;)V

    .line 121
    iget-object v1, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppView;->pageUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setPageUrl(Ljava/lang/String;)V

    .line 122
    iget-boolean v1, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppView;->recommend:Z

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setRecommend(Z)V

    .line 123
    iget-object v1, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppView;->schemeUri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setSchemeUri(Ljava/lang/String;)V

    .line 124
    iget-wide v1, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppView;->pkgSize:J

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setSize(J)V

    .line 125
    iget-object v1, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppView;->slogan:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setSlogan(Ljava/lang/String;)V

    .line 126
    iget-object v1, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppView;->status:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setStatus(Ljava/lang/String;)V

    .line 127
    iget-object v1, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppView;->version:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setVersion(Ljava/lang/String;)V

    .line 128
    iget-object v1, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppView;->incrementPkgUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setIncrementPkgUrl(Ljava/lang/String;)V

    .line 129
    iget-object v1, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppView;->h5AppCdnBaseUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setH5AppCdnBaseUrl(Ljava/lang/String;)V

    .line 130
    iget-object v1, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppView;->appSource:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setAppSource(Ljava/lang/String;)V

    .line 131
    invoke-virtual {v0, p1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setLanguage(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public static final a(Ljava/lang/String;Lcom/alipay/mobileappconfig/biz/rpc/model/stage/ClientStageView;Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 137
    if-nez p1, :cond_0

    move-object v0, v1

    .line 238
    :goto_0
    return-object v0

    .line 140
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 141
    const-string/jumbo p2, "zh-Hans"

    .line 143
    :cond_1
    new-instance v2, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;

    invoke-direct {v2}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;-><init>()V

    .line 144
    invoke-virtual {v2, p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;->setUserId(Ljava/lang/String;)V

    .line 145
    iget-object v0, p1, Lcom/alipay/mobileappconfig/biz/rpc/model/stage/ClientStageView;->stageCode:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;->setStageCode(Ljava/lang/String;)V

    .line 146
    iget-object v0, p1, Lcom/alipay/mobileappconfig/biz/rpc/model/stage/ClientStageView;->parentStageCode:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;->setParentStageCode(Ljava/lang/String;)V

    .line 147
    iget-object v0, p1, Lcom/alipay/mobileappconfig/biz/rpc/model/stage/ClientStageView;->dataVersion:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;->setDataVersion(Ljava/lang/String;)V

    .line 148
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;->setLastRefreshTime(J)V

    .line 150
    iget-object v0, p1, Lcom/alipay/mobileappconfig/biz/rpc/model/stage/ClientStageView;->configMap:Ljava/util/Map;

    if-eqz v0, :cond_6

    .line 151
    iget-object v0, p1, Lcom/alipay/mobileappconfig/biz/rpc/model/stage/ClientStageView;->configMap:Ljava/util/Map;

    const-string/jumbo v3, "reportSec"

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 153
    :try_start_0
    iget-object v0, p1, Lcom/alipay/mobileappconfig/biz/rpc/model/stage/ClientStageView;->configMap:Ljava/util/Map;

    const-string/jumbo v3, "reportSec"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 154
    invoke-virtual {v2, v3, v4}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;->setReportInterval(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    :cond_2
    :goto_1
    iget-object v0, p1, Lcom/alipay/mobileappconfig/biz/rpc/model/stage/ClientStageView;->configMap:Ljava/util/Map;

    const-string/jumbo v3, "refreshSec"

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 161
    :try_start_1
    iget-object v0, p1, Lcom/alipay/mobileappconfig/biz/rpc/model/stage/ClientStageView;->configMap:Ljava/util/Map;

    const-string/jumbo v3, "refreshSec"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 162
    invoke-virtual {v2, v3, v4}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;->setRefreshInterval(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 167
    :cond_3
    :goto_2
    iget-object v0, p1, Lcom/alipay/mobileappconfig/biz/rpc/model/stage/ClientStageView;->configMap:Ljava/util/Map;

    const-string/jumbo v3, "appNumLimit"

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 170
    :try_start_2
    iget-object v0, p1, Lcom/alipay/mobileappconfig/biz/rpc/model/stage/ClientStageView;->configMap:Ljava/util/Map;

    const-string/jumbo v3, "appNumLimit"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 171
    invoke-virtual {v2, v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;->setMaxAppNum(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 176
    :cond_4
    :goto_3
    iget-object v0, p1, Lcom/alipay/mobileappconfig/biz/rpc/model/stage/ClientStageView;->configMap:Ljava/util/Map;

    const-string/jumbo v3, "appShowLimit"

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 178
    :try_start_3
    iget-object v0, p1, Lcom/alipay/mobileappconfig/biz/rpc/model/stage/ClientStageView;->configMap:Ljava/util/Map;

    .line 179
    const-string/jumbo v3, "appShowLimit"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 178
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 180
    invoke-virtual {v2, v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;->setMaxShowAppNum(I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 185
    :cond_5
    :goto_4
    iget-object v0, p1, Lcom/alipay/mobileappconfig/biz/rpc/model/stage/ClientStageView;->configMap:Ljava/util/Map;

    const-string/jumbo v3, "templateId"

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 187
    :try_start_4
    iget-object v0, p1, Lcom/alipay/mobileappconfig/biz/rpc/model/stage/ClientStageView;->configMap:Ljava/util/Map;

    const-string/jumbo v3, "templateId"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 188
    invoke-virtual {v2, v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;->setTemplateId(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 195
    :goto_5
    iget-object v0, p1, Lcom/alipay/mobileappconfig/biz/rpc/model/stage/ClientStageView;->configMap:Ljava/util/Map;

    const-string/jumbo v3, "appId"

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 197
    :try_start_5
    iget-object v0, p1, Lcom/alipay/mobileappconfig/biz/rpc/model/stage/ClientStageView;->configMap:Ljava/util/Map;

    const-string/jumbo v1, "appId"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 198
    invoke-virtual {v2, v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;->setAppId(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 205
    :goto_6
    iget-object v0, p1, Lcom/alipay/mobileappconfig/biz/rpc/model/stage/ClientStageView;->configMap:Ljava/util/Map;

    const-string/jumbo v1, "stageRank"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 207
    :try_start_6
    iget-object v0, p1, Lcom/alipay/mobileappconfig/biz/rpc/model/stage/ClientStageView;->configMap:Ljava/util/Map;

    const-string/jumbo v1, "stageRank"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 208
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;->setRank(I)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    .line 216
    :cond_6
    :goto_7
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 217
    iget-object v0, p1, Lcom/alipay/mobileappconfig/biz/rpc/model/stage/ClientStageView;->appList:Ljava/util/List;

    if-eqz v0, :cond_7

    .line 218
    iget-object v0, p1, Lcom/alipay/mobileappconfig/biz/rpc/model/stage/ClientStageView;->appList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_b

    .line 236
    invoke-static {v1}, Lcom/alibaba/fastjson/JSONArray;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;->setAppRank(Ljava/lang/String;)V

    :cond_7
    move-object v0, v2

    .line 238
    goto/16 :goto_0

    .line 155
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 163
    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    .line 172
    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_3

    .line 181
    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_4

    .line 189
    :catch_4
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5

    .line 193
    :cond_8
    invoke-virtual {v2, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;->setTemplateId(Ljava/lang/String;)V

    goto :goto_5

    .line 199
    :catch_5
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6

    .line 203
    :cond_9
    invoke-virtual {v2, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;->setAppId(Ljava/lang/String;)V

    goto :goto_6

    .line 209
    :catch_6
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_7

    .line 213
    :cond_a
    const/16 v0, 0x63

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;->setRank(I)V

    goto :goto_7

    .line 218
    :cond_b
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppView;

    .line 219
    new-instance v4, Lcom/alipay/mobile/framework/service/ext/openplatform/app/AppRank;

    invoke-direct {v4}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/AppRank;-><init>()V

    .line 220
    iget-object v5, v0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppView;->appId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/AppRank;->setAppId(Ljava/lang/String;)V

    .line 221
    iget-boolean v5, v0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppView;->display:Z

    invoke-virtual {v4, v5}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/AppRank;->setDisplay(Z)V

    .line 222
    iget-boolean v5, v0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppView;->movable:Z

    invoke-virtual {v4, v5}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/AppRank;->setMovable(Z)V

    .line 223
    iget-object v5, v0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppView;->slogan:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/AppRank;->setSlogan(Ljava/lang/String;)V

    .line 224
    iget-object v5, v0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppView;->desc:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/AppRank;->setDesc(Ljava/lang/String;)V

    .line 225
    iget-object v5, v0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppView;->schemeUri:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/AppRank;->setSchemeUri(Ljava/lang/String;)V

    .line 226
    iget-boolean v5, v0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppView;->recommend:Z

    invoke-virtual {v4, v5}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/AppRank;->setRecommend(Z)V

    .line 227
    iget-object v5, v0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppView;->iconUrl:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/AppRank;->setIconUrl(Ljava/lang/String;)V

    .line 228
    iget-object v5, v0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppView;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/AppRank;->setName(Ljava/lang/String;)V

    .line 229
    invoke-virtual {v4, p2}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/AppRank;->setLanguage(Ljava/lang/String;)V

    .line 230
    iget-object v5, v0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppView;->stageExtProp:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_c

    .line 231
    iget-object v0, v0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppView;->stageExtProp:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/AppConvertor;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 232
    invoke-virtual {v4, v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/AppRank;->setStageExtProp(Ljava/lang/String;)V

    .line 234
    :cond_c
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_8
.end method

.method public static final a(Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;)Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;
    .locals 2

    .prologue
    .line 70
    if-nez p0, :cond_0

    .line 71
    const/4 v0, 0x0

    .line 95
    :goto_0
    return-object v0

    .line 73
    :cond_0
    new-instance v0, Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;

    invoke-direct {v0}, Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;-><init>()V

    .line 75
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getAppId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;->appId:Ljava/lang/String;

    .line 76
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;->name:Ljava/lang/String;

    .line 77
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getVersion()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;->version:Ljava/lang/String;

    .line 78
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getSlogan()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;->slogan:Ljava/lang/String;

    .line 79
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getDesc()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;->desc:Ljava/lang/String;

    .line 80
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getInstallerType()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;->installerType:Ljava/lang/String;

    .line 81
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->isDisplay()Z

    move-result v1

    iput-boolean v1, v0, Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;->display:Z

    .line 82
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->isAlipayApp()Z

    move-result v1

    iput-boolean v1, v0, Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;->alipayApp:Z

    .line 83
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;->packageName:Ljava/lang/String;

    .line 84
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getSchemeUri()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;->schemeUri:Ljava/lang/String;

    .line 85
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getIconUrl()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;->iconUrl:Ljava/lang/String;

    .line 86
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getDownloadUrl()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;->downloadUrl:Ljava/lang/String;

    .line 87
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->isRecommend()Z

    move-result v1

    iput-boolean v1, v0, Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;->recommend:Z

    .line 88
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getStatus()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;->status:Ljava/lang/String;

    .line 89
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->isNeedAuthorize()Z

    move-result v1

    iput-boolean v1, v0, Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;->needAuthorize:Z

    .line 90
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->isAutoAuthorize()Z

    move-result v1

    iput-boolean v1, v0, Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;->autoAuthorize:Z

    .line 91
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getMd5()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;->md5:Ljava/lang/String;

    .line 92
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getExtra()Ljava/util/Map;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;->extra:Ljava/util/Map;

    .line 93
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getPageUrl()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;->pageURL:Ljava/lang/String;

    goto :goto_0
.end method

.method private static final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 247
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 248
    const-string/jumbo v0, ""

    .line 256
    :goto_0
    return-object v0

    .line 251
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    .line 252
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    .line 251
    invoke-static {v0, p0}, Lcom/alipay/android/phone/mobilesdk/storage/encryption/TaobaoSecurityEncryptor;->dynamicEncrypt(Landroid/content/ContextWrapper;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 253
    :catch_0
    move-exception v0

    .line 254
    const-string/jumbo v1, "for sercurity Encrypt error"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/logging/LogCatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    const-string/jumbo v0, ""

    goto :goto_0
.end method
