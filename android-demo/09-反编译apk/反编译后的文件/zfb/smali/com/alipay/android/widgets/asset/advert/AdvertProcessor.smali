.class public Lcom/alipay/android/widgets/asset/advert/AdvertProcessor;
.super Ljava/lang/Object;
.source "AdvertProcessor.java"


# static fields
.field private static a:Lcom/alipay/android/widgets/asset/advert/AdvertProcessor;


# instance fields
.field private b:Z

.field private c:Z

.field private d:Z

.field private e:Lcom/alipay/android/widgets/asset/listener/AdvertListener;

.field private f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectInfo;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectInfo;",
            ">;"
        }
    .end annotation
.end field

.field private h:Lcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService;

.field private i:Lcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService$IAdGetSingleSpaceInfoCallBack;

.field private j:Lcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService$IAdGetSingleSpaceInfoCallBack;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-boolean v0, p0, Lcom/alipay/android/widgets/asset/advert/AdvertProcessor;->b:Z

    .line 22
    iput-boolean v0, p0, Lcom/alipay/android/widgets/asset/advert/AdvertProcessor;->c:Z

    .line 23
    iput-boolean v0, p0, Lcom/alipay/android/widgets/asset/advert/AdvertProcessor;->d:Z

    .line 29
    new-instance v0, Lcom/alipay/android/widgets/asset/advert/a;

    invoke-direct {v0, p0}, Lcom/alipay/android/widgets/asset/advert/a;-><init>(Lcom/alipay/android/widgets/asset/advert/AdvertProcessor;)V

    iput-object v0, p0, Lcom/alipay/android/widgets/asset/advert/AdvertProcessor;->i:Lcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService$IAdGetSingleSpaceInfoCallBack;

    .line 59
    new-instance v0, Lcom/alipay/android/widgets/asset/advert/b;

    invoke-direct {v0, p0}, Lcom/alipay/android/widgets/asset/advert/b;-><init>(Lcom/alipay/android/widgets/asset/advert/AdvertProcessor;)V

    iput-object v0, p0, Lcom/alipay/android/widgets/asset/advert/AdvertProcessor;->j:Lcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService$IAdGetSingleSpaceInfoCallBack;

    .line 86
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/widgets/asset/advert/AdvertProcessor;->f:Ljava/util/Map;

    .line 87
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/widgets/asset/advert/AdvertProcessor;->g:Ljava/util/Map;

    .line 88
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 89
    const-class v1, Lcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService;

    .line 88
    iput-object v0, p0, Lcom/alipay/android/widgets/asset/advert/AdvertProcessor;->h:Lcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService;

    .line 90
    return-void
.end method

.method public static declared-synchronized a()Lcom/alipay/android/widgets/asset/advert/AdvertProcessor;
    .locals 2

    .prologue
    .line 93
    const-class v1, Lcom/alipay/android/widgets/asset/advert/AdvertProcessor;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/android/widgets/asset/advert/AdvertProcessor;->a:Lcom/alipay/android/widgets/asset/advert/AdvertProcessor;

    if-nez v0, :cond_0

    .line 94
    new-instance v0, Lcom/alipay/android/widgets/asset/advert/AdvertProcessor;

    invoke-direct {v0}, Lcom/alipay/android/widgets/asset/advert/AdvertProcessor;-><init>()V

    sput-object v0, Lcom/alipay/android/widgets/asset/advert/AdvertProcessor;->a:Lcom/alipay/android/widgets/asset/advert/AdvertProcessor;

    .line 96
    :cond_0
    sget-object v0, Lcom/alipay/android/widgets/asset/advert/AdvertProcessor;->a:Lcom/alipay/android/widgets/asset/advert/AdvertProcessor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 93
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Lcom/alipay/android/widgets/asset/advert/AdvertProcessor;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/advert/AdvertProcessor;->f:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic b(Lcom/alipay/android/widgets/asset/advert/AdvertProcessor;)Z
    .locals 1

    .prologue
    .line 21
    iget-boolean v0, p0, Lcom/alipay/android/widgets/asset/advert/AdvertProcessor;->b:Z

    return v0
.end method

.method static synthetic c(Lcom/alipay/android/widgets/asset/advert/AdvertProcessor;)V
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/widgets/asset/advert/AdvertProcessor;->b:Z

    return-void
.end method

.method static synthetic d(Lcom/alipay/android/widgets/asset/advert/AdvertProcessor;)V
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/widgets/asset/advert/AdvertProcessor;->c:Z

    return-void
.end method

.method static synthetic e(Lcom/alipay/android/widgets/asset/advert/AdvertProcessor;)Z
    .locals 1

    .prologue
    .line 23
    iget-boolean v0, p0, Lcom/alipay/android/widgets/asset/advert/AdvertProcessor;->d:Z

    return v0
.end method

.method static synthetic f(Lcom/alipay/android/widgets/asset/advert/AdvertProcessor;)Lcom/alipay/android/widgets/asset/listener/AdvertListener;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/advert/AdvertProcessor;->e:Lcom/alipay/android/widgets/asset/listener/AdvertListener;

    return-object v0
.end method

.method static synthetic g(Lcom/alipay/android/widgets/asset/advert/AdvertProcessor;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/advert/AdvertProcessor;->g:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic h(Lcom/alipay/android/widgets/asset/advert/AdvertProcessor;)V
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/widgets/asset/advert/AdvertProcessor;->d:Z

    return-void
.end method

.method static synthetic i(Lcom/alipay/android/widgets/asset/advert/AdvertProcessor;)Z
    .locals 1

    .prologue
    .line 22
    iget-boolean v0, p0, Lcom/alipay/android/widgets/asset/advert/AdvertProcessor;->c:Z

    return v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectInfo;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/advert/AdvertProcessor;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectInfo;

    return-object v0
.end method

.method public final a(Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectInfo;)V
    .locals 4

    .prologue
    .line 124
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/advert/AdvertProcessor;->h:Lcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService;

    const-string/jumbo v1, "wealth_home_appicon"

    iget-object v2, p1, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectInfo;->objectId:Ljava/lang/String;

    const-string/jumbo v3, "CLICK"

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService;->userFeedback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    return-void
.end method

.method public final a(ZLcom/alipay/android/widgets/asset/listener/AdvertListener;)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 100
    iput-boolean p1, p0, Lcom/alipay/android/widgets/asset/advert/AdvertProcessor;->b:Z

    .line 101
    iput-object p2, p0, Lcom/alipay/android/widgets/asset/advert/AdvertProcessor;->e:Lcom/alipay/android/widgets/asset/listener/AdvertListener;

    .line 102
    iput-boolean v0, p0, Lcom/alipay/android/widgets/asset/advert/AdvertProcessor;->c:Z

    .line 103
    iput-boolean v0, p0, Lcom/alipay/android/widgets/asset/advert/AdvertProcessor;->d:Z

    .line 104
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/advert/AdvertProcessor;->h:Lcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService;

    if-nez v0, :cond_0

    .line 105
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 106
    const-class v1, Lcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService;

    .line 105
    iput-object v0, p0, Lcom/alipay/android/widgets/asset/advert/AdvertProcessor;->h:Lcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService;

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/advert/AdvertProcessor;->h:Lcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService;

    if-eqz v0, :cond_1

    .line 109
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/advert/AdvertProcessor;->h:Lcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService;

    const-string/jumbo v1, "wealth_home_appicon"

    iget-object v2, p0, Lcom/alipay/android/widgets/asset/advert/AdvertProcessor;->i:Lcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService$IAdGetSingleSpaceInfoCallBack;

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService;->getSpaceInfoByCode(Ljava/lang/String;Lcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService$IAdGetSingleSpaceInfoCallBack;)V

    .line 110
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/advert/AdvertProcessor;->h:Lcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService;

    const-string/jumbo v1, "wealth_home_desc"

    iget-object v2, p0, Lcom/alipay/android/widgets/asset/advert/AdvertProcessor;->j:Lcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService$IAdGetSingleSpaceInfoCallBack;

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService;->getSpaceInfoByCode(Ljava/lang/String;Lcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService$IAdGetSingleSpaceInfoCallBack;)V

    .line 112
    :cond_1
    return-void
.end method

.method public final b(Ljava/lang/String;)Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectInfo;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/advert/AdvertProcessor;->g:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectInfo;

    return-object v0
.end method

.method public final b(Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectInfo;)V
    .locals 4

    .prologue
    .line 128
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/advert/AdvertProcessor;->h:Lcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService;

    const-string/jumbo v1, "wealth_home_appicon"

    iget-object v2, p1, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectInfo;->objectId:Ljava/lang/String;

    const-string/jumbo v3, "SHOW"

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService;->userFeedback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    return-void
.end method

.method public final c(Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectInfo;)V
    .locals 4

    .prologue
    .line 132
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/advert/AdvertProcessor;->h:Lcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService;

    const-string/jumbo v1, "wealth_home_desc"

    iget-object v2, p1, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectInfo;->objectId:Ljava/lang/String;

    const-string/jumbo v3, "CLICK"

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService;->userFeedback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    return-void
.end method
