.class public Lcom/alipay/mobile/appstoreapp/manager/RpcPbUtil;
.super Ljava/lang/Object;
.source "RpcPbUtil.java"


# static fields
.field private static a:Lcom/alipay/mobile/base/config/ConfigService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 54
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    .line 55
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/base/config/ConfigService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/base/config/ConfigService;

    .line 54
    sput-object v0, Lcom/alipay/mobile/appstoreapp/manager/RpcPbUtil;->a:Lcom/alipay/mobile/base/config/ConfigService;

    .line 45
    return-void
.end method

.method public static a(Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppListRes;)Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppListRes;
    .locals 6

    .prologue
    .line 133
    if-nez p0, :cond_0

    .line 134
    const/4 v0, 0x0

    .line 153
    :goto_0
    return-object v0

    .line 136
    :cond_0
    new-instance v1, Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppListRes;

    invoke-direct {v1}, Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppListRes;-><init>()V

    .line 137
    iget-object v0, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppListRes;->resultCode:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v1, Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppListRes;->resultCode:I

    .line 138
    iget-object v0, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppListRes;->resultMsg:Ljava/lang/String;

    iput-object v0, v1, Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppListRes;->resultMsg:Ljava/lang/String;

    .line 139
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 140
    iget-object v0, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppListRes;->stageList:Ljava/util/List;

    .line 141
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 142
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 152
    :cond_1
    iput-object v2, v1, Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppListRes;->stageList:Ljava/util/List;

    move-object v0, v1

    .line 153
    goto :goto_0

    .line 142
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientStageView;

    .line 143
    new-instance v4, Lcom/alipay/mobileappconfig/biz/rpc/model/stage/ClientStageView;

    invoke-direct {v4}, Lcom/alipay/mobileappconfig/biz/rpc/model/stage/ClientStageView;-><init>()V

    .line 144
    iget-object v5, v0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientStageView;->stageCode:Ljava/lang/String;

    iput-object v5, v4, Lcom/alipay/mobileappconfig/biz/rpc/model/stage/ClientStageView;->stageCode:Ljava/lang/String;

    .line 145
    iget-object v5, v0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientStageView;->dataVersion:Ljava/lang/String;

    iput-object v5, v4, Lcom/alipay/mobileappconfig/biz/rpc/model/stage/ClientStageView;->dataVersion:Ljava/lang/String;

    .line 146
    iget-object v5, v0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientStageView;->parentStageCode:Ljava/lang/String;

    iput-object v5, v4, Lcom/alipay/mobileappconfig/biz/rpc/model/stage/ClientStageView;->parentStageCode:Ljava/lang/String;

    .line 147
    iget-object v5, v0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientStageView;->appList:Ljava/util/List;

    invoke-static {v5}, Lcom/alipay/mobile/appstoreapp/manager/RpcPbUtil;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    iput-object v5, v4, Lcom/alipay/mobileappconfig/biz/rpc/model/stage/ClientStageView;->appList:Ljava/util/List;

    .line 148
    iget-object v0, v0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientStageView;->configMap:Ljava/util/List;

    invoke-static {v0}, Lcom/alipay/mobile/appstoreapp/manager/RpcPbUtil;->b(Ljava/util/List;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, v4, Lcom/alipay/mobileappconfig/biz/rpc/model/stage/ClientStageView;->configMap:Ljava/util/Map;

    .line 149
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public static a(Z[Ljava/lang/String;Ljava/util/List;)Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppListRes;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z[",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppVersion;",
            ">;)",
            "Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppListRes;"
        }
    .end annotation

    .prologue
    .line 59
    const-string/jumbo v0, "RpcPbUtil"

    const-string/jumbo v1, "queryClientAppByPb rpc for pb "

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppListReq;

    invoke-direct {v1}, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppListReq;-><init>()V

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppListReq;->pre:Ljava/lang/Boolean;

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppListReq;->width:Ljava/lang/Integer;

    const-string/jumbo v0, "ANDROID"

    iput-object v0, v1, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppListReq;->platform:Ljava/lang/String;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppListReq;->stageList:Ljava/util/List;

    invoke-static {p2}, Lcom/alipay/mobile/appstoreapp/manager/RpcPbUtil;->c(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppListReq;->appUpgradeList:Ljava/util/List;

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v2, Lcom/alipay/mobile/framework/service/common/RpcService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/RpcService;

    const-class v2, Lcom/alipay/mobileappconfig/biz/rpc/facade/app/AppInfoServiceFacade;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/framework/service/common/RpcService;->getBgRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobileappconfig/biz/rpc/facade/app/AppInfoServiceFacade;

    invoke-interface {v0, v1}, Lcom/alipay/mobileappconfig/biz/rpc/facade/app/AppInfoServiceFacade;->queryClientAppByPb(Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppListReq;)Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppListRes;

    move-result-object v0

    return-object v0
.end method

.method public static a(Z)Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientSimpleAppRes;
    .locals 3

    .prologue
    .line 241
    new-instance v1, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientSimpleAppReq;

    invoke-direct {v1}, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientSimpleAppReq;-><init>()V

    .line 242
    const-string/jumbo v0, "ANDROID"

    iput-object v0, v1, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientSimpleAppReq;->platform:Ljava/lang/String;

    .line 243
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientSimpleAppReq;->pre:Ljava/lang/Boolean;

    .line 244
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 245
    const-string/jumbo v2, "indexStage"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 246
    iput-object v0, v1, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientSimpleAppReq;->stageList:Ljava/util/List;

    .line 247
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    .line 248
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 247
    const-class v2, Lcom/alipay/mobile/framework/service/common/RpcService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/RpcService;

    .line 249
    const-class v2, Lcom/alipay/mobileappconfig/biz/rpc/facade/app/SimpleAppServiceFacade;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/framework/service/common/RpcService;->getBgRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobileappconfig/biz/rpc/facade/app/SimpleAppServiceFacade;

    .line 251
    invoke-interface {v0, v1}, Lcom/alipay/mobileappconfig/biz/rpc/facade/app/SimpleAppServiceFacade;->querySimpleApp(Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientSimpleAppReq;)Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientSimpleAppRes;

    move-result-object v0

    .line 254
    invoke-static {v0}, Lcom/alipay/mobile/appstoreapp/manager/RpcPbUtil;->a(Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientSimpleAppRes;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 255
    const/4 v0, 0x0

    .line 257
    :cond_0
    return-object v0
.end method

.method private static a(Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppView;",
            ">;"
        }
    .end annotation

    .prologue
    .line 157
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 158
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move-object v0, v1

    .line 196
    :goto_0
    return-object v0

    .line 161
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    move-object v0, v1

    .line 196
    goto :goto_0

    .line 161
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;

    .line 162
    new-instance v3, Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppView;

    invoke-direct {v3}, Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppView;-><init>()V

    .line 163
    iget-object v4, v0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;->alipayApp:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    iput-boolean v4, v3, Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppView;->alipayApp:Z

    .line 164
    iget-object v4, v0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;->appId:Ljava/lang/String;

    iput-object v4, v3, Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppView;->appId:Ljava/lang/String;

    .line 165
    iget-object v4, v0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;->autoAuthorize:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    iput-boolean v4, v3, Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppView;->autoAuthorize:Z

    .line 166
    iget-object v4, v0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;->autoStatus:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    iput-boolean v4, v3, Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppView;->autoStatus:Z

    .line 169
    iget-object v4, v0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;->desc:Ljava/lang/String;

    iput-object v4, v3, Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppView;->desc:Ljava/lang/String;

    .line 170
    iget-object v4, v0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;->display:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    iput-boolean v4, v3, Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppView;->display:Z

    .line 171
    iget-object v4, v0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;->extra:Ljava/lang/String;

    iput-object v4, v3, Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppView;->extra:Ljava/lang/String;

    .line 172
    iget-object v4, v0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;->h5AppCdnBaseUrl:Ljava/lang/String;

    iput-object v4, v3, Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppView;->h5AppCdnBaseUrl:Ljava/lang/String;

    .line 173
    iget-object v4, v0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;->iconUrl:Ljava/lang/String;

    iput-object v4, v3, Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppView;->iconUrl:Ljava/lang/String;

    .line 174
    iget-object v4, v0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;->id:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-long v4, v4

    iput-wide v4, v3, Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppView;->id:J

    .line 175
    iget-object v4, v0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;->incrementPkgUrl:Ljava/lang/String;

    iput-object v4, v3, Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppView;->incrementPkgUrl:Ljava/lang/String;

    .line 176
    iget-object v4, v0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;->md5:Ljava/lang/String;

    iput-object v4, v3, Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppView;->md5:Ljava/lang/String;

    .line 177
    iget-object v4, v0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;->movable:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    iput-boolean v4, v3, Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppView;->movable:Z

    .line 178
    iget-object v4, v0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;->name:Ljava/lang/String;

    iput-object v4, v3, Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppView;->name:Ljava/lang/String;

    .line 179
    iget-object v4, v0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;->needAuthorize:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    iput-boolean v4, v3, Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppView;->needAuthorize:Z

    .line 180
    iget-object v4, v0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;->pageUrl:Ljava/lang/String;

    iput-object v4, v3, Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppView;->pageUrl:Ljava/lang/String;

    .line 181
    iget-object v4, v0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;->pkgSize:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-long v4, v4

    iput-wide v4, v3, Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppView;->pkgSize:J

    .line 182
    iget-object v4, v0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;->pkgType:Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBPkgType;

    invoke-virtual {v4}, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBPkgType;->name()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppView;->pkgType:Ljava/lang/String;

    .line 183
    iget-object v4, v0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;->pkgUrl:Ljava/lang/String;

    iput-object v4, v3, Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppView;->pkgUrl:Ljava/lang/String;

    .line 184
    iget-object v4, v0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;->pkgUrlNew:Ljava/lang/String;

    iput-object v4, v3, Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppView;->pkgUrlNew:Ljava/lang/String;

    .line 185
    iget-object v4, v0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;->rank:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, v3, Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppView;->rank:I

    .line 186
    iget-object v4, v0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;->recommend:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    iput-boolean v4, v3, Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppView;->recommend:Z

    .line 187
    iget-object v4, v0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;->schemeUri:Ljava/lang/String;

    iput-object v4, v3, Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppView;->schemeUri:Ljava/lang/String;

    .line 188
    iget-object v4, v0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;->slogan:Ljava/lang/String;

    iput-object v4, v3, Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppView;->slogan:Ljava/lang/String;

    .line 189
    iget-object v4, v0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;->stageExtProp:Ljava/lang/String;

    iput-object v4, v3, Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppView;->stageExtProp:Ljava/lang/String;

    .line 190
    iget-object v4, v0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;->status:Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBStatus;

    invoke-virtual {v4}, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBStatus;->name()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppView;->status:Ljava/lang/String;

    .line 191
    iget-object v4, v0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;->thirdPkgName:Ljava/lang/String;

    iput-object v4, v3, Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppView;->thirdPkgName:Ljava/lang/String;

    .line 192
    iget-object v4, v0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;->version:Ljava/lang/String;

    iput-object v4, v3, Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppView;->version:Ljava/lang/String;

    .line 193
    iget-object v0, v0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;->appSource:Lcom/alipay/mobileappconfig/biz/rpc/model/app/AppSourceEnum;

    invoke-virtual {v0}, Lcom/alipay/mobileappconfig/biz/rpc/model/app/AppSourceEnum;->name()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppView;->appSource:Ljava/lang/String;

    .line 194
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1
.end method

.method private static a(Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientSimpleAppRes;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 262
    if-nez p0, :cond_1

    .line 272
    :cond_0
    :goto_0
    return v0

    .line 264
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientSimpleAppRes;->resultCode:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x64

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientSimpleAppRes;->resultCode:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0xce

    if-ne v1, v2, :cond_0

    .line 265
    :cond_2
    iget-object v1, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientSimpleAppRes;->stageList:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientSimpleAppRes;->stageList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_0

    .line 269
    const/4 v0, 0x1

    goto :goto_0

    .line 271
    :catch_0
    move-exception v1

    const-string/jumbo v1, "RpcPbUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "isValidResponse error: PBClientSimpleAppRes = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientSimpleAppRes;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/logging/LogCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static b(Ljava/util/List;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBMap;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 205
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 206
    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 207
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 213
    :cond_1
    return-object v1

    .line 207
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBMap;

    .line 208
    iget-object v3, v0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBMap;->key:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, v0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBMap;->value:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 209
    iget-object v3, v0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBMap;->key:Ljava/lang/String;

    iget-object v0, v0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBMap;->value:Ljava/lang/String;

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private static c(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppVersion;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppVersion;",
            ">;"
        }
    .end annotation

    .prologue
    .line 222
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 223
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 224
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 231
    :cond_0
    return-object v1

    .line 224
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppVersion;

    .line 225
    new-instance v3, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppVersion;

    invoke-direct {v3}, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppVersion;-><init>()V

    .line 226
    iget-object v4, v0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppVersion;->appId:Ljava/lang/String;

    iput-object v4, v3, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppVersion;->appId:Ljava/lang/String;

    .line 227
    iget-object v0, v0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppVersion;->version:Ljava/lang/String;

    iput-object v0, v3, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppVersion;->version:Ljava/lang/String;

    .line 228
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
