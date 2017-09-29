.class public Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;
.super Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;
.source "AppManageServiceImpl.java"

# interfaces
.implements Ljava/util/Observer;


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private c:Z

.field private d:Lcom/alipay/mobileapp/common/service/facade/app/facade/MobileAppInfoServiceFacade;

.field private e:Lcom/alipay/mobileappconfig/biz/rpc/facade/app/AppInfoServiceFacade;

.field private final f:Landroid/os/Handler;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/Boolean;

.field private i:J

.field private j:Z

.field private k:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private final n:Ljava/lang/Boolean;

.field private o:Z

.field private p:Z

.field private q:Z

.field private r:Z

.field private s:Z

.field private t:Z

.field private u:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/appstoreapp/language/LanguageAppModle;",
            ">;"
        }
    .end annotation
.end field

.field private v:Z

.field private final w:Lcom/alipay/mobile/appstoreapp/manager/LanguageSettingReceiver;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 100
    invoke-direct {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;-><init>()V

    .line 104
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->a:Ljava/util/Map;

    .line 106
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->b:Ljava/util/Map;

    .line 118
    iput-boolean v2, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->c:Z

    .line 121
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->f:Landroid/os/Handler;

    .line 123
    const-string/jumbo v0, "-1"

    iput-object v0, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->g:Ljava/lang/String;

    .line 124
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->h:Ljava/lang/Boolean;

    .line 125
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->i:J

    .line 127
    iput-boolean v2, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->j:Z

    .line 128
    iput-object v3, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->k:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    .line 129
    iput-object v3, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->l:Ljava/lang/String;

    .line 130
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->m:Ljava/lang/String;

    .line 131
    new-instance v0, Ljava/lang/Boolean;

    invoke-direct {v0, v2}, Ljava/lang/Boolean;-><init>(Z)V

    iput-object v0, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->n:Ljava/lang/Boolean;

    .line 133
    iput-boolean v2, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->p:Z

    .line 134
    iput-boolean v2, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->q:Z

    .line 135
    iput-boolean v2, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->r:Z

    .line 136
    iput-boolean v2, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->s:Z

    .line 139
    iput-boolean v2, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->t:Z

    .line 141
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->u:Ljava/util/concurrent/ConcurrentHashMap;

    .line 142
    iput-boolean v2, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->v:Z

    .line 143
    new-instance v0, Lcom/alipay/mobile/appstoreapp/manager/LanguageSettingReceiver;

    invoke-direct {v0}, Lcom/alipay/mobile/appstoreapp/manager/LanguageSettingReceiver;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->w:Lcom/alipay/mobile/appstoreapp/manager/LanguageSettingReceiver;

    .line 100
    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;)Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->n:Ljava/lang/Boolean;

    return-object v0
.end method

.method private static a(Lcom/alipay/mobile/framework/service/ext/openplatform/AppStatus;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1848
    if-eqz p0, :cond_3

    .line 1849
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/AppStatus;->OFFLINE:Lcom/alipay/mobile/framework/service/ext/openplatform/AppStatus;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/AppStatus;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1850
    const-string/jumbo v0, "offline"

    .line 1859
    :goto_0
    return-object v0

    .line 1851
    :cond_0
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/AppStatus;->ONLINE:Lcom/alipay/mobile/framework/service/ext/openplatform/AppStatus;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/AppStatus;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1852
    const-string/jumbo v0, "online"

    goto :goto_0

    .line 1853
    :cond_1
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/AppStatus;->DOWNLOADING:Lcom/alipay/mobile/framework/service/ext/openplatform/AppStatus;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/AppStatus;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1854
    const-string/jumbo v0, "installing"

    goto :goto_0

    .line 1855
    :cond_2
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/AppStatus;->UNAVAILABLE:Lcom/alipay/mobile/framework/service/ext/openplatform/AppStatus;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/AppStatus;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1856
    const-string/jumbo v0, "uninstall"

    goto :goto_0

    .line 1859
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/framework/service/ext/openplatform/app/Stage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1935
    const-string/jumbo v0, "-1"

    iget-object v1, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1936
    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;->getInstance()Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;->getLastUser()Ljava/lang/String;

    move-result-object v0

    .line 1937
    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1938
    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->getDao()Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;

    move-result-object v2

    invoke-virtual {v2, v0, p1}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->getStageEntityList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 1940
    if-eqz v0, :cond_2

    .line 1941
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    move-object v0, v1

    .line 1949
    :goto_2
    return-object v0

    .line 1936
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->g:Ljava/lang/String;

    goto :goto_0

    .line 1941
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;

    .line 1942
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;->getStageCode()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->b(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/openplatform/app/Stage;

    move-result-object v0

    .line 1943
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1949
    :cond_2
    const/4 v0, 0x0

    goto :goto_2
.end method

.method static synthetic a()V
    .locals 0

    .prologue
    .line 1579
    invoke-static {}, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->h()V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;Lcom/alipay/mobile/framework/app/IApplicationInstaller$IApplicationInstallCallback;)V
    .locals 0

    .prologue
    .line 1772
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->a(Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;Lcom/alipay/mobile/framework/app/IApplicationInstaller$IApplicationInstallCallback;)V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 130
    iput-object p1, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->m:Ljava/lang/String;

    return-void
.end method

.method private a(Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;Lcom/alipay/mobile/framework/app/IApplicationInstaller$IApplicationInstallCallback;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1774
    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getInstallerType()Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;->innerApp:Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;

    if-ne v0, v1, :cond_0

    .line 1775
    new-instance v0, Lcom/alipay/mobile/appstoreapp/manager/e;

    invoke-direct {v0, p0, p1, p2}, Lcom/alipay/mobile/appstoreapp/manager/e;-><init>(Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;Lcom/alipay/mobile/framework/app/IApplicationInstaller$IApplicationInstallCallback;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    .line 1812
    :goto_0
    return-void

    .line 1801
    :cond_0
    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getInstallerType()Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;->H5App:Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;

    if-ne v0, v1, :cond_1

    .line 1802
    new-instance v0, Lcom/alipay/mobile/framework/app/ApplicationDescription;

    invoke-direct {v0}, Lcom/alipay/mobile/framework/app/ApplicationDescription;-><init>()V

    .line 1803
    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/app/ApplicationDescription;->setAppId(Ljava/lang/String;)Lcom/alipay/mobile/framework/app/ApplicationDescription;

    .line 1804
    const-string/jumbo v1, "H5App"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/app/ApplicationDescription;->setEngineType(Ljava/lang/String;)Lcom/alipay/mobile/framework/app/ApplicationDescription;

    .line 1806
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    new-array v2, v4, [Lcom/alipay/mobile/framework/app/ApplicationDescription;

    const/4 v3, 0x0

    .line 1807
    aput-object v0, v2, v3

    invoke-interface {v1, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->addDescription([Lcom/alipay/mobile/framework/app/ApplicationDescription;)V

    .line 1808
    :cond_1
    invoke-interface {p2, v4}, Lcom/alipay/mobile/framework/app/IApplicationInstaller$IApplicationInstallCallback;->installed(Z)V

    goto :goto_0
.end method

.method private static a(Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;)V
    .locals 2

    .prologue
    .line 922
    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_0

    .line 923
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppInfo()Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->isNewFlagUnknown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 924
    :cond_0
    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppInfo()Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setNeedShowNewFlag(Z)V

    .line 929
    :goto_0
    return-void

    .line 926
    :cond_1
    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppInfo()Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setNeedShowNewFlag(Z)V

    goto :goto_0
.end method

.method private static a(Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;)V
    .locals 2

    .prologue
    .line 909
    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_0

    .line 910
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppInfo()Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->isNewFlagUnknown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 911
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setNeedShowNewFlag(Z)V

    .line 916
    :goto_0
    return-void

    .line 913
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setNeedShowNewFlag(Z)V

    goto :goto_0
.end method

.method private a(Ljava/io/File;)V
    .locals 4

    .prologue
    .line 746
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 759
    :cond_0
    :goto_0
    return-void

    .line 749
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 750
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 751
    if-eqz v1, :cond_2

    .line 752
    array-length v2, v1

    .line 753
    const/4 v0, 0x0

    :goto_1
    if-lt v0, v2, :cond_3

    .line 758
    :cond_2
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 754
    :cond_3
    aget-object v3, v1, v0

    invoke-direct {p0, v3}, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->a(Ljava/io/File;)V

    .line 753
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private a(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 864
    if-nez p1, :cond_1

    .line 905
    :cond_0
    return-void

    .line 867
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;

    .line 868
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->a:Ljava/util/Map;

    iget-object v3, v1, Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;->appId:Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 869
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->a:Ljava/util/Map;

    iget-object v3, v1, Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;->appId:Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    .line 870
    invoke-static {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/AppFactory;->createApp(Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;)Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    move-result-object v3

    .line 872
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getInstallerType()Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 874
    iget-object v4, v1, Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;->installerType:Ljava/lang/String;

    .line 873
    invoke-static {v4}, Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;->getEnum(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;

    move-result-object v4

    .line 874
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getInstallerType()Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;

    move-result-object v5

    .line 873
    if-eq v4, v5, :cond_3

    .line 875
    if-eqz v3, :cond_3

    .line 877
    invoke-virtual {v3, p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->addObserver(Ljava/util/Observer;)V

    .line 878
    iget-object v4, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->a:Ljava/util/Map;

    monitor-enter v4

    .line 879
    :try_start_0
    iget-object v5, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->a:Ljava/util/Map;

    iget-object v1, v1, Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;->appId:Ljava/lang/String;

    invoke-interface {v5, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 878
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 882
    invoke-static {v0, v3}, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->a(Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;)V

    .line 883
    new-instance v0, Lcom/alipay/mobile/framework/service/ext/openplatform/AppStatusChangeNotify;

    .line 884
    invoke-direct {v0, v6, v3}, Lcom/alipay/mobile/framework/service/ext/openplatform/AppStatusChangeNotify;-><init>(ILcom/alipay/mobile/framework/service/ext/openplatform/app/App;)V

    .line 883
    invoke-direct {p0, v3, v0}, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->a(Ljava/util/Observable;Ljava/lang/Object;)V

    goto :goto_0

    .line 878
    :catchall_0
    move-exception v0

    monitor-exit v4

    throw v0

    .line 886
    :cond_3
    invoke-static {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/AppConvertor;->a(Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;)Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    move-result-object v1

    .line 888
    invoke-static {v0, v1}, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->a(Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;)V

    .line 889
    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->setAppInfo(Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;)V

    goto :goto_0

    .line 893
    :cond_4
    invoke-static {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/AppFactory;->createApp(Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;)Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    move-result-object v0

    .line 894
    if-eqz v0, :cond_2

    .line 895
    iget-object v1, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->a:Ljava/util/Map;

    monitor-enter v1

    .line 896
    :try_start_1
    iget-object v3, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->a:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 895
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 898
    invoke-virtual {v0, p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->addObserver(Ljava/util/Observer;)V

    .line 900
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppInfo()Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    move-result-object v0

    .line 901
    invoke-virtual {v0, v6}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setNeedShowNewFlag(Z)V

    goto :goto_0

    .line 895
    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a(Ljava/util/List;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppView;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 792
    if-nez p1, :cond_0

    .line 795
    :goto_0
    return-void

    :cond_0
    iget-object v4, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->a:Ljava/util/Map;

    monitor-enter v4

    .line 796
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_2

    .line 795
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v4

    throw v1

    .line 796
    :cond_2
    :try_start_1
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppView;

    move-object v3, v0

    .line 801
    iget-object v1, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->a:Ljava/util/Map;

    iget-object v2, v3, Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppView;->appId:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 802
    iget-object v1, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->a:Ljava/util/Map;

    iget-object v2, v3, Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppView;->appId:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    .line 804
    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getInstallerType()Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 805
    iget-object v2, v3, Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppView;->pkgType:Ljava/lang/String;

    invoke-static {v2}, Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;->getEnum(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;

    move-result-object v2

    .line 806
    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getInstallerType()Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;

    move-result-object v6

    .line 805
    if-eq v2, v6, :cond_4

    .line 808
    iget-object v2, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->a:Ljava/util/Map;

    iget-object v6, v3, Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppView;->appId:Ljava/lang/String;

    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppInfo()Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    move-result-object v2

    .line 807
    invoke-static {v3, v2, p2}, Lcom/alipay/mobile/framework/service/ext/openplatform/AppFactory;->createApp(Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppView;Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    move-result-object v2

    .line 809
    if-eqz v2, :cond_3

    .line 810
    invoke-virtual {v2, p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->addObserver(Ljava/util/Observer;)V

    .line 811
    iget-object v6, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->a:Ljava/util/Map;

    iget-object v3, v3, Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppView;->appId:Ljava/lang/String;

    invoke-interface {v6, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 814
    invoke-static {v1, v2}, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->a(Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;)V

    .line 816
    new-instance v1, Lcom/alipay/mobile/framework/service/ext/openplatform/AppStatusChangeNotify;

    .line 817
    const/4 v3, 0x1

    invoke-direct {v1, v3, v2}, Lcom/alipay/mobile/framework/service/ext/openplatform/AppStatusChangeNotify;-><init>(ILcom/alipay/mobile/framework/service/ext/openplatform/app/App;)V

    .line 816
    invoke-direct {p0, v2, v1}, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->a(Ljava/util/Observable;Ljava/lang/Object;)V

    goto :goto_1

    .line 819
    :cond_3
    iget-object v1, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->a:Ljava/util/Map;

    iget-object v2, v3, Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppView;->appId:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 823
    :cond_4
    invoke-static {v3, p2}, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/AppConvertor;->a(Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppView;Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    move-result-object v6

    .line 826
    invoke-static {v1, v6}, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->a(Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;)V

    .line 829
    iget-object v2, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->a:Ljava/util/Map;

    iget-object v7, v3, Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppView;->appId:Ljava/lang/String;

    invoke-interface {v2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppInfo()Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    move-result-object v2

    .line 830
    invoke-virtual {v2}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getVersion()Ljava/lang/String;

    move-result-object v2

    iget-object v7, v3, Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppView;->version:Ljava/lang/String;

    .line 829
    invoke-static {v2, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 831
    iget-object v2, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->a:Ljava/util/Map;

    iget-object v7, v3, Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppView;->appId:Ljava/lang/String;

    invoke-interface {v2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppInfo()Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    move-result-object v2

    .line 832
    invoke-virtual {v2}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getPkgPath()Ljava/lang/String;

    move-result-object v2

    .line 831
    invoke-virtual {v6, v2}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setPkgPath(Ljava/lang/String;)V

    .line 834
    :cond_5
    iget-object v2, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->a:Ljava/util/Map;

    iget-object v7, v3, Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppView;->appId:Ljava/lang/String;

    invoke-interface {v2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppInfo()Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    move-result-object v2

    .line 835
    invoke-virtual {v2}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getPkgVersion()Ljava/lang/String;

    move-result-object v2

    .line 834
    invoke-virtual {v6, v2}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setPkgVersion(Ljava/lang/String;)V

    .line 836
    iget-object v2, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->a:Ljava/util/Map;

    iget-object v3, v3, Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppView;->appId:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppInfo()Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    move-result-object v2

    .line 837
    invoke-virtual {v2}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getLocalIcon()Ljava/lang/String;

    move-result-object v2

    .line 836
    invoke-virtual {v6, v2}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setLocalIcon(Ljava/lang/String;)V

    .line 838
    invoke-virtual {v1, v6}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->setAppInfo(Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;)V

    goto/16 :goto_1

    .line 842
    :cond_6
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "AppManageServiceImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "createapp:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, v3, Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppView;->appId:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v2, v6}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 844
    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDao;->getDao()Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDao;

    move-result-object v1

    iget-object v2, v3, Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppView;->appId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDao;->getAppByAppId(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    move-result-object v1

    .line 843
    invoke-static {v3, v1, p2}, Lcom/alipay/mobile/framework/service/ext/openplatform/AppFactory;->createApp(Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppView;Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    move-result-object v1

    .line 845
    if-eqz v1, :cond_1

    .line 846
    iget-object v2, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->a:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 847
    invoke-virtual {v1, p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->addObserver(Ljava/util/Observer;)V

    .line 849
    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppInfo()Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    move-result-object v1

    .line 850
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setNeedShowNewFlag(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1
.end method

.method private static a(Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 580
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 582
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 594
    return-void

    .line 582
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 584
    :try_start_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    .line 585
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->isOffline()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->isNeedAutoUpgrade()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 586
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "AppManageServiceImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "upgrade app:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 587
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->autoUpgradeApp()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 589
    :catch_0
    move-exception v0

    .line 590
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "AppManageServiceImpl"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private a(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 786
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->observers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 789
    return-void

    .line 786
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Observer;

    .line 787
    invoke-interface {v0, p1, p2}, Ljava/util/Observer;->update(Ljava/util/Observable;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private static a(Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppListRes;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1496
    if-nez p0, :cond_1

    .line 1506
    :cond_0
    :goto_0
    return v0

    .line 1498
    :cond_1
    :try_start_0
    iget v1, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppListRes;->resultCode:I

    const/16 v2, 0x64

    if-eq v1, v2, :cond_2

    iget v1, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppListRes;->resultCode:I

    const/16 v2, 0xce

    if-ne v1, v2, :cond_0

    .line 1499
    :cond_2
    iget-object v1, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppListRes;->stageList:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppListRes;->stageList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_0

    .line 1503
    const/4 v0, 0x1

    goto :goto_0

    .line 1505
    :catch_0
    move-exception v1

    const-string/jumbo v1, "AppManageServiceImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "isValidResponse error: ClientAppListRes = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/logging/LogCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private a(Ljava/util/List;Z)Z
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z)Z"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 419
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move v0, v3

    .line 506
    :goto_0
    return v0

    .line 422
    :cond_1
    iget-object v1, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->h:Ljava/lang/Boolean;

    monitor-enter v1

    .line 423
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->h:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 424
    monitor-exit v1

    move v0, v2

    goto :goto_0

    .line 425
    :cond_2
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->h:Ljava/lang/Boolean;

    .line 422
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 428
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 432
    :try_start_1
    monitor-enter p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 433
    if-eqz p2, :cond_5

    .line 434
    :try_start_2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v2

    .line 432
    :goto_1
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 449
    :try_start_3
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v6, "AppManageServiceImpl"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "needReport:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v6, v7}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    if-nez v0, :cond_a

    .line 451
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->h:Ljava/lang/Boolean;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move v0, v3

    .line 452
    goto :goto_0

    .line 422
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 434
    :cond_4
    :try_start_4
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 435
    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->getDao()Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;

    move-result-object v6

    iget-object v7, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->g:Ljava/lang/String;

    invoke-virtual {v6, v7, v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->stageHasChanged(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v3

    .line 437
    goto :goto_1

    .line 441
    :cond_5
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_7

    move v0, v2

    goto :goto_1

    :cond_7
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 442
    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->getDao()Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;

    move-result-object v6

    iget-object v7, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->g:Ljava/lang/String;

    invoke-virtual {v6, v7, v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->needReportStage(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result v0

    if-eqz v0, :cond_6

    move v0, v3

    .line 444
    goto :goto_1

    .line 432
    :catchall_1
    move-exception v0

    :try_start_5
    monitor-exit p0

    throw v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 482
    :catch_0
    move-exception v0

    .line 483
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v3, "AppManageServiceImpl"

    .line 484
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "report globalException! "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 483
    invoke-interface {v1, v3, v6}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    instance-of v1, v0, Lcom/alipay/mobile/common/rpc/RpcException;

    if-eqz v1, :cond_9

    .line 486
    check-cast v0, Lcom/alipay/mobile/common/rpc/RpcException;

    .line 487
    invoke-virtual {v0}, Lcom/alipay/mobile/common/rpc/RpcException;->getCode()I

    move-result v0

    const/16 v1, 0x3ea

    if-ne v0, v1, :cond_9

    .line 488
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "AppManageServiceImpl"

    .line 489
    const-string/jumbo v3, "report resultCode:1002"

    .line 488
    invoke-interface {v0, v1, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 490
    monitor-enter p0

    .line 491
    :try_start_6
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_8
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_11

    .line 490
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 505
    :cond_9
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->h:Ljava/lang/Boolean;

    move v0, v2

    .line 506
    goto/16 :goto_0

    .line 454
    :cond_a
    :try_start_7
    invoke-direct {p0, p1}, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->h(Ljava/util/List;)Lcom/alipay/mobileappconfig/biz/rpc/model/app/UserRankReportReq;

    move-result-object v1

    .line 455
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->e:Lcom/alipay/mobileappconfig/biz/rpc/facade/app/AppInfoServiceFacade;

    if-nez v0, :cond_b

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v6, Lcom/alipay/mobile/framework/service/common/RpcService;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/RpcService;

    const-class v6, Lcom/alipay/mobileappconfig/biz/rpc/facade/app/AppInfoServiceFacade;

    invoke-virtual {v0, v6}, Lcom/alipay/mobile/framework/service/common/RpcService;->getBgRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobileappconfig/biz/rpc/facade/app/AppInfoServiceFacade;

    iput-object v0, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->e:Lcom/alipay/mobileappconfig/biz/rpc/facade/app/AppInfoServiceFacade;

    :cond_b
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->e:Lcom/alipay/mobileappconfig/biz/rpc/facade/app/AppInfoServiceFacade;

    invoke-interface {v0, v1}, Lcom/alipay/mobileappconfig/biz/rpc/facade/app/AppInfoServiceFacade;->userRankReport(Lcom/alipay/mobileappconfig/biz/rpc/model/app/UserRankReportReq;)Lcom/alipay/mobileappconfig/biz/rpc/model/app/UserRankReportRes;

    move-result-object v6

    .line 456
    if-eqz v6, :cond_f

    iget v0, v6, Lcom/alipay/mobileappconfig/biz/rpc/model/app/UserRankReportRes;->resultCode:I

    const/16 v1, 0x64

    if-ne v0, v1, :cond_f

    iget-object v0, v6, Lcom/alipay/mobileappconfig/biz/rpc/model/app/UserRankReportRes;->dataVersionMap:Ljava/util/Map;

    if-eqz v0, :cond_f

    .line 457
    monitor-enter p0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    .line 458
    :try_start_8
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_c
    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_d

    .line 457
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 474
    const/4 v0, 0x0

    :try_start_9
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->h:Ljava/lang/Boolean;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    move v0, v3

    .line 475
    goto/16 :goto_0

    .line 458
    :cond_d
    :try_start_a
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 459
    iget-object v1, v6, Lcom/alipay/mobileappconfig/biz/rpc/model/app/UserRankReportRes;->dataVersionMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 460
    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->getDao()Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;

    move-result-object v1

    iget-object v8, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->g:Ljava/lang/String;

    invoke-virtual {v1, v8, v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->getStageEntity(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;

    move-result-object v8

    .line 462
    iget-object v1, v6, Lcom/alipay/mobileappconfig/biz/rpc/model/app/UserRankReportRes;->dataVersionMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v8, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;->setDataVersion(Ljava/lang/String;)V

    .line 463
    iget-wide v9, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->i:J

    cmp-long v1, v9, v4

    if-gtz v1, :cond_e

    .line 464
    const/4 v1, 0x0

    invoke-virtual {v8, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;->setNeedReport(Z)V

    .line 466
    :cond_e
    invoke-virtual {v8, v4, v5}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;->setLastReportTime(J)V

    .line 467
    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->getDao()Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;

    move-result-object v1

    invoke-virtual {v1, v8}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->updateStageEntity(Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;)V

    .line 468
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v8, "AppManageServiceImpl"

    .line 469
    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "user rank report, stageCode:"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 470
    const-string/jumbo v10, ",version:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v6, Lcom/alipay/mobileappconfig/biz/rpc/model/app/UserRankReportRes;->dataVersionMap:Ljava/util/Map;

    invoke-interface {v10, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 469
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 468
    invoke-interface {v1, v8, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    goto :goto_3

    .line 457
    :catchall_2
    move-exception v0

    :try_start_b
    monitor-exit p0

    throw v0

    .line 476
    :cond_f
    if-eqz v6, :cond_10

    iget v0, v6, Lcom/alipay/mobileappconfig/biz/rpc/model/app/UserRankReportRes;->resultCode:I

    const/16 v1, 0xd4

    if-ne v0, v1, :cond_10

    .line 477
    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;->getInstance()Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;->setNeedFetchApps(Z)V

    .line 480
    :cond_10
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->h:Ljava/lang/Boolean;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0

    move v0, v2

    .line 481
    goto/16 :goto_0

    .line 491
    :cond_11
    :try_start_c
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 492
    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->getDao()Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;

    move-result-object v3

    iget-object v6, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->g:Ljava/lang/String;

    invoke-virtual {v3, v6, v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->getStageEntity(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;

    move-result-object v0

    .line 494
    if-eqz v0, :cond_8

    .line 495
    invoke-virtual {v0, v4, v5}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;->setLastReportTime(J)V

    .line 496
    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->getDao()Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->updateStageEntity(Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;)V

    .line 497
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v3, "AppManageServiceImpl"

    .line 498
    const-string/jumbo v6, "report: refresh report time"

    .line 497
    invoke-interface {v0, v3, v6}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    goto/16 :goto_2

    .line 490
    :catchall_3
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private a([Ljava/lang/String;)Z
    .locals 11

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1050
    array-length v3, p1

    move v2, v1

    .line 1052
    :goto_0
    if-lt v2, v3, :cond_1

    move v0, v1

    .line 1063
    :cond_0
    return v0

    .line 1050
    :cond_1
    aget-object v4, p1, v2

    .line 1053
    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->getDao()Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;

    move-result-object v5

    iget-object v6, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->g:Ljava/lang/String;

    invoke-virtual {v5, v6, v4}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->getStageEntity(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;

    move-result-object v4

    .line 1054
    if-eqz v4, :cond_0

    .line 1057
    invoke-virtual {v4}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;->getRefreshInterval()J

    move-result-wide v5

    .line 1058
    invoke-virtual {v4}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;->getLastRefreshTime()J

    move-result-wide v7

    .line 1059
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sub-long v7, v9, v7

    const-wide/16 v9, 0x3e8

    mul-long v4, v5, v9

    cmp-long v4, v7, v4

    if-gez v4, :cond_0

    .line 1052
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method static synthetic b(Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->f:Landroid/os/Handler;

    return-object v0
.end method

.method private b(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/openplatform/app/Stage;
    .locals 8

    .prologue
    .line 1954
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "AppManageServiceImpl"

    .line 1955
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "getStageFromLocalForH5, stageCode:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",userId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->g:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1954
    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1956
    const-string/jumbo v0, "-1"

    iget-object v1, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1957
    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;->getInstance()Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;->getLastUser()Ljava/lang/String;

    move-result-object v0

    .line 1958
    :goto_0
    new-instance v1, Lcom/alipay/mobile/framework/service/ext/openplatform/app/Stage;

    invoke-direct {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/Stage;-><init>()V

    .line 1959
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "AppManageServiceImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "user:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1960
    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->getDao()Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;

    move-result-object v2

    invoke-virtual {v2, v0, p1}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->getStageEntity(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;

    move-result-object v2

    .line 1961
    if-nez v2, :cond_5

    .line 1962
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v2, "AppManageServiceImpl"

    const-string/jumbo v3, "stage is null"

    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1963
    const-string/jumbo v2, "-1"

    .line 1964
    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->getDao()Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;

    move-result-object v0

    const-string/jumbo v3, "-1"

    invoke-virtual {v0, v3, p1}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->getStageEntity(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;

    move-result-object v0

    .line 1966
    :goto_1
    if-eqz v0, :cond_4

    .line 1967
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    const-string/jumbo v4, "AppManageServiceImpl"

    .line 1968
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "getStageFromLocalForH5 stageEntity is not null, templateId:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1969
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;->getTemplateId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1968
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1967
    invoke-interface {v3, v4, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1970
    invoke-virtual {v1, v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/Stage;->setStageInfo(Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;)V

    .line 1971
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;->getMaxShowAppNum()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/Stage;->setMaxShowNum(I)V

    .line 1972
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;->getMaxAppNum()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/Stage;->setMaxNum(I)V

    .line 1973
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;->getRefreshInterval()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/Stage;->setRefreshInterval(J)V

    .line 1974
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;->getReportInterval()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/Stage;->setReportInterval(J)V

    .line 1975
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;->getTemplateId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/Stage;->setTemplateId(Ljava/lang/String;)V

    .line 1976
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;->getAppId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/Stage;->setAppId(Ljava/lang/String;)V

    .line 1978
    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->getDao()Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;

    move-result-object v0

    invoke-virtual {v0, v2, p1}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->getDisplayAppsForStage(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 1979
    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDao;->getDao()Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDao;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDao;->getAppListByAppRanks(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 1980
    if-nez v0, :cond_1

    .line 1981
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/Stage;->setApps(Ljava/util/List;)V

    move-object v0, v1

    .line 1995
    :goto_2
    return-object v0

    .line 1957
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->g:Ljava/lang/String;

    goto/16 :goto_0

    .line 1984
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1985
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1991
    invoke-static {v2}, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->i(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->j(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/Stage;->setApps(Ljava/util/List;)V

    :goto_4
    move-object v0, v1

    .line 1995
    goto :goto_2

    .line 1985
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    .line 1986
    invoke-static {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/AppFactory;->createApp(Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;)Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    move-result-object v0

    .line 1987
    if-eqz v0, :cond_2

    .line 1988
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1993
    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/Stage;->setApps(Ljava/util/List;)V

    goto :goto_4

    :cond_5
    move-object v7, v2

    move-object v2, v0

    move-object v0, v7

    goto/16 :goto_1
.end method

.method private b()Lcom/alipay/mobileapp/common/service/facade/app/facade/MobileAppInfoServiceFacade;
    .locals 2

    .prologue
    .line 161
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->d:Lcom/alipay/mobileapp/common/service/facade/app/facade/MobileAppInfoServiceFacade;

    if-nez v0, :cond_0

    .line 162
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    .line 163
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 162
    const-class v1, Lcom/alipay/mobile/framework/service/common/RpcService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/RpcService;

    .line 166
    const-class v1, Lcom/alipay/mobileapp/common/service/facade/app/facade/MobileAppInfoServiceFacade;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/common/RpcService;->getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobileapp/common/service/facade/app/facade/MobileAppInfoServiceFacade;

    iput-object v0, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->d:Lcom/alipay/mobileapp/common/service/facade/app/facade/MobileAppInfoServiceFacade;

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->d:Lcom/alipay/mobileapp/common/service/facade/app/facade/MobileAppInfoServiceFacade;

    return-object v0
.end method

.method private b(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 939
    if-nez p1, :cond_0

    .line 942
    :goto_0
    return-void

    :cond_0
    iget-object v3, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->a:Ljava/util/Map;

    monitor-enter v3

    .line 943
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_2

    .line 942
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v3

    throw v1

    .line 943
    :cond_2
    :try_start_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    move-object v2, v0

    .line 944
    iget-object v1, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->a:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getAppId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 945
    iget-object v1, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->a:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getAppId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    .line 947
    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getInstallerType()Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 948
    invoke-virtual {v2}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getInstallerType()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;->getEnum(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;

    move-result-object v5

    .line 949
    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getInstallerType()Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;

    move-result-object v6

    .line 948
    if-eq v5, v6, :cond_4

    .line 950
    invoke-static {v2}, Lcom/alipay/mobile/framework/service/ext/openplatform/AppFactory;->createApp(Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;)Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    move-result-object v5

    .line 951
    if-eqz v5, :cond_3

    .line 952
    invoke-virtual {v5, p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->addObserver(Ljava/util/Observer;)V

    .line 953
    iget-object v1, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->a:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 954
    new-instance v1, Lcom/alipay/mobile/framework/service/ext/openplatform/AppStatusChangeNotify;

    .line 955
    const/4 v2, 0x1

    invoke-direct {v1, v2, v5}, Lcom/alipay/mobile/framework/service/ext/openplatform/AppStatusChangeNotify;-><init>(ILcom/alipay/mobile/framework/service/ext/openplatform/app/App;)V

    .line 954
    invoke-direct {p0, v5, v1}, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->a(Ljava/util/Observable;Ljava/lang/Object;)V

    goto :goto_1

    .line 957
    :cond_3
    invoke-virtual {v1, v2}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->setAppInfo(Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;)V

    goto :goto_1

    .line 960
    :cond_4
    invoke-virtual {v1, v2}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->setAppInfo(Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;)V

    goto :goto_1

    .line 964
    :cond_5
    invoke-static {v2}, Lcom/alipay/mobile/framework/service/ext/openplatform/AppFactory;->createApp(Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;)Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    move-result-object v1

    .line 965
    if-eqz v1, :cond_1

    .line 966
    iget-object v2, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->a:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 967
    invoke-virtual {v1, p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->addObserver(Ljava/util/Observer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method private b(Ljava/util/List;Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobileappconfig/biz/rpc/model/stage/ClientStageView;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 992
    if-nez p1, :cond_0

    .line 1023
    :goto_0
    return-void

    .line 995
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 996
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1021
    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDao;->getDao()Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDao;

    move-result-object v0

    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDao;->saveOrUpdateAppEntitys(Ljava/util/List;)V

    .line 1022
    invoke-static {v1}, Lcom/alipay/mobile/appstoreapp/language/LanguageHelper;->a(Ljava/util/Map;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->u:Ljava/util/concurrent/ConcurrentHashMap;

    goto :goto_0

    .line 996
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobileappconfig/biz/rpc/model/stage/ClientStageView;

    .line 997
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    const-string/jumbo v4, "AppManageServiceImpl"

    .line 998
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "parentStageCode:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v0, Lcom/alipay/mobileappconfig/biz/rpc/model/stage/ClientStageView;->parentStageCode:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 999
    const-string/jumbo v6, ",stageCode:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/alipay/mobileappconfig/biz/rpc/model/stage/ClientStageView;->stageCode:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1000
    const-string/jumbo v6, ",listSize:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/alipay/mobileappconfig/biz/rpc/model/stage/ClientStageView;->appList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1001
    const-string/jumbo v6, ",version:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/alipay/mobileappconfig/biz/rpc/model/stage/ClientStageView;->dataVersion:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 998
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 997
    invoke-interface {v3, v4, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1002
    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->getDao()Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;

    move-result-object v3

    .line 1003
    iget-object v4, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->g:Ljava/lang/String;

    invoke-static {v4, v0, p2}, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/AppConvertor;->a(Ljava/lang/String;Lcom/alipay/mobileappconfig/biz/rpc/model/stage/ClientStageView;Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;

    move-result-object v4

    .line 1002
    invoke-virtual {v3, v4}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->updateStageEntity(Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;)V

    .line 1004
    iget-object v3, v0, Lcom/alipay/mobileappconfig/biz/rpc/model/stage/ClientStageView;->appList:Ljava/util/List;

    if-eqz v3, :cond_1

    .line 1005
    iget-object v0, v0, Lcom/alipay/mobileappconfig/biz/rpc/model/stage/ClientStageView;->appList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppView;

    .line 1016
    iget-object v4, v0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppView;->appId:Ljava/lang/String;

    .line 1017
    invoke-static {v0, p2}, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/AppConvertor;->a(Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppView;Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    move-result-object v0

    .line 1016
    invoke-interface {v1, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method private b([Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1334
    iput-boolean v0, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->p:Z

    .line 1336
    :try_start_0
    iget-boolean v0, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->c:Z

    .line 1337
    invoke-direct {p0, p1}, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->e([Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 1336
    invoke-static {v0, p1, v2}, Lcom/alipay/mobile/appstoreapp/manager/RpcPbUtil;->a(Z[Ljava/lang/String;Ljava/util/List;)Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppListRes;

    move-result-object v0

    .line 1338
    invoke-static {v0}, Lcom/alipay/mobile/appstoreapp/manager/RpcPbUtil;->a(Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppListRes;)Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppListRes;

    move-result-object v2

    .line 1339
    invoke-static {v2}, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->a(Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppListRes;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1340
    iget-object v3, v2, Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppListRes;->stageList:Ljava/util/List;

    iget-object v4, v0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppListRes;->locale:Ljava/lang/String;

    invoke-direct {p0, v3, v4}, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->b(Ljava/util/List;Ljava/lang/String;)V

    .line 1341
    iget-object v3, v2, Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppListRes;->stageList:Ljava/util/List;

    invoke-static {v3}, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->e(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    .line 1342
    iget-object v0, v0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppListRes;->locale:Ljava/lang/String;

    invoke-direct {p0, v3, v0}, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->a(Ljava/util/List;Ljava/lang/String;)V

    .line 1343
    iget-object v0, v2, Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppListRes;->stageList:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->c(Ljava/util/List;)V

    .line 1344
    array-length v2, p1

    move v0, v1

    :goto_0
    if-lt v0, v2, :cond_1

    .line 1348
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v2, "AppManageServiceImpl"

    const-string/jumbo v3, "queryclientapp success"

    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1349
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v2, "com.alipay.mobile.intent.action.APPDATACHANGED"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/AlipayApplication;->getApplicationContext()Landroid/app/Application;

    move-result-object v2

    invoke-static {v2}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 1350
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->o:Z

    .line 1351
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->p:Z

    .line 1368
    :cond_0
    :goto_1
    return-void

    .line 1344
    :cond_1
    aget-object v3, p1, v0

    .line 1345
    new-instance v4, Ljava/util/Observable;

    invoke-direct {v4}, Ljava/util/Observable;-><init>()V

    new-instance v5, Lcom/alipay/mobile/framework/service/ext/openplatform/MemoryAppsChangeNotify;

    .line 1346
    const/4 v6, 0x1

    invoke-direct {v5, v6, v3}, Lcom/alipay/mobile/framework/service/ext/openplatform/MemoryAppsChangeNotify;-><init>(ILjava/lang/String;)V

    .line 1345
    invoke-direct {p0, v4, v5}, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->a(Ljava/util/Observable;Ljava/lang/Object;)V

    .line 1344
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1353
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->p:Z

    .line 1354
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v3, "AppManageServiceImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "queryClientApp error:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v2, Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppListRes;->resultMsg:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v3, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1356
    :catch_0
    move-exception v0

    .line 1357
    iput-boolean v1, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->p:Z

    .line 1358
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "AppManageServiceImpl"

    const-string/jumbo v3, "queryClientApp globalException!"

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 1359
    instance-of v1, v0, Lcom/alipay/mobile/common/rpc/RpcException;

    if-eqz v1, :cond_0

    .line 1360
    check-cast v0, Lcom/alipay/mobile/common/rpc/RpcException;

    .line 1361
    invoke-virtual {v0}, Lcom/alipay/mobile/common/rpc/RpcException;->getCode()I

    move-result v0

    const/16 v1, 0x3ea

    if-ne v0, v1, :cond_0

    .line 1362
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "AppManageServiceImpl"

    .line 1363
    const-string/jumbo v2, "queryClientApp resultCode:1002"

    .line 1362
    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 1364
    invoke-direct {p0, p1}, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->d([Ljava/lang/String;)V

    goto :goto_1
.end method

.method private c(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobileappconfig/biz/rpc/model/stage/ClientStageView;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 975
    if-nez p1, :cond_1

    .line 989
    :cond_0
    return-void

    .line 977
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/alipay/mobileappconfig/biz/rpc/model/stage/ClientStageView;

    .line 978
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->b:Ljava/util/Map;

    iget-object v3, v1, Lcom/alipay/mobileappconfig/biz/rpc/model/stage/ClientStageView;->stageCode:Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 979
    iget-object v0, v1, Lcom/alipay/mobileappconfig/biz/rpc/model/stage/ClientStageView;->appList:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 980
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 981
    iget-object v0, v1, Lcom/alipay/mobileappconfig/biz/rpc/model/stage/ClientStageView;->appList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4

    .line 986
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->b:Ljava/util/Map;

    iget-object v1, v1, Lcom/alipay/mobileappconfig/biz/rpc/model/stage/ClientStageView;->stageCode:Ljava/lang/String;

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 981
    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppView;

    .line 982
    const-string/jumbo v5, "OFFLINE"

    iget-object v6, v0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppView;->status:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 983
    iget-object v0, v0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppView;->appId:Ljava/lang/String;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private c([Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 1372
    :try_start_0
    iget-boolean v0, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->c:Z

    .line 1373
    invoke-direct {p0, p1}, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->e([Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 1372
    invoke-static {v0, p1, v1}, Lcom/alipay/mobile/appstoreapp/manager/RpcPbUtil;->a(Z[Ljava/lang/String;Ljava/util/List;)Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppListRes;

    move-result-object v0

    .line 1374
    invoke-static {v0}, Lcom/alipay/mobile/appstoreapp/manager/RpcPbUtil;->a(Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppListRes;)Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppListRes;

    move-result-object v1

    .line 1375
    invoke-static {v1}, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->a(Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppListRes;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1376
    iget-object v2, v1, Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppListRes;->stageList:Ljava/util/List;

    iget-object v3, v0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppListRes;->locale:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->b(Ljava/util/List;Ljava/lang/String;)V

    .line 1377
    iget-object v2, v1, Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppListRes;->stageList:Ljava/util/List;

    invoke-static {v2}, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->e(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 1378
    iget-object v0, v0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppListRes;->locale:Ljava/lang/String;

    invoke-direct {p0, v2, v0}, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->a(Ljava/util/List;Ljava/lang/String;)V

    .line 1379
    iget-object v0, v1, Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppListRes;->stageList:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->c(Ljava/util/List;)V

    .line 1380
    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v1, :cond_1

    .line 1384
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "AppManageServiceImpl"

    const-string/jumbo v2, "queryclientapp success"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1399
    :cond_0
    :goto_1
    return-void

    .line 1380
    :cond_1
    aget-object v2, p1, v0

    .line 1381
    new-instance v3, Ljava/util/Observable;

    invoke-direct {v3}, Ljava/util/Observable;-><init>()V

    new-instance v4, Lcom/alipay/mobile/framework/service/ext/openplatform/MemoryAppsChangeNotify;

    .line 1382
    const/4 v5, 0x1

    invoke-direct {v4, v5, v2}, Lcom/alipay/mobile/framework/service/ext/openplatform/MemoryAppsChangeNotify;-><init>(ILjava/lang/String;)V

    .line 1381
    invoke-direct {p0, v3, v4}, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->a(Ljava/util/Observable;Ljava/lang/Object;)V

    .line 1380
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1386
    :cond_2
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v2, "AppManageServiceImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "queryClientApp error:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v1, Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppListRes;->resultMsg:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1388
    :catch_0
    move-exception v0

    .line 1389
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "AppManageServiceImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "queryClientApp globalException!  "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 1390
    instance-of v1, v0, Lcom/alipay/mobile/common/rpc/RpcException;

    if-eqz v1, :cond_0

    .line 1391
    check-cast v0, Lcom/alipay/mobile/common/rpc/RpcException;

    .line 1392
    invoke-virtual {v0}, Lcom/alipay/mobile/common/rpc/RpcException;->getCode()I

    move-result v0

    const/16 v1, 0x3ea

    if-ne v0, v1, :cond_0

    .line 1393
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "AppManageServiceImpl"

    .line 1394
    const-string/jumbo v2, "queryClientUserApp resultCode:1002"

    .line 1393
    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 1395
    invoke-direct {p0, p1}, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->d([Ljava/lang/String;)V

    goto :goto_1
.end method

.method private c()Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 230
    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;->getInstance()Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;->setNeedFetchApps(Z)V

    .line 231
    iput-boolean v0, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->t:Z

    .line 234
    const/4 v2, 0x1

    :try_start_0
    invoke-virtual {p0, v2}, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->reportUserRank(Z)Z

    .line 235
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->h:Ljava/lang/Boolean;

    .line 236
    invoke-direct {p0}, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->f()Ljava/util/List;

    .line 237
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->h:Ljava/lang/Boolean;

    .line 238
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->t:Z

    .line 240
    invoke-direct {p0}, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->i()V

    .line 241
    invoke-direct {p0}, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->d()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 248
    :goto_0
    return v0

    .line 243
    :catch_0
    move-exception v0

    .line 244
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->h:Ljava/lang/Boolean;

    .line 245
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 246
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "AppManageServiceImpl"

    const-string/jumbo v4, "changeLanguage failed"

    invoke-interface {v2, v3, v4, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 247
    iput-boolean v1, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->t:Z

    move v0, v1

    .line 248
    goto :goto_0
.end method

.method private d()V
    .locals 3

    .prologue
    .line 255
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->getDao()Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->g:Ljava/lang/String;

    .line 256
    const-string/jumbo v2, "globalSearch"

    .line 255
    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->getStageEntity(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;

    move-result-object v0

    .line 257
    if-eqz v0, :cond_0

    .line 258
    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;->setLastRefreshTime(J)V

    .line 259
    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->getDao()Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->updateStageEntity(Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;)V

    .line 260
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "AppManageServiceImpl"

    .line 261
    const-string/jumbo v2, "updateGlobalStageRefreshTime success"

    .line 260
    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 266
    :cond_0
    :goto_0
    return-void

    .line 264
    :catch_0
    move-exception v0

    const-string/jumbo v0, "AppManageServiceImpl"

    const-string/jumbo v1, "updateGlobalStageRefreshTime error"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static d(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1031
    if-nez p0, :cond_0

    .line 1046
    :goto_0
    return-void

    .line 1034
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1035
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1045
    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDao;->getDao()Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDao;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDao;->saveOrUpdateAppEntitys(Ljava/util/List;)V

    goto :goto_0

    .line 1035
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;

    .line 1037
    iget-object v3, v0, Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;->appId:Ljava/lang/String;

    if-eqz v3, :cond_1

    const-string/jumbo v3, ""

    iget-object v4, v0, Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;->appId:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1038
    invoke-static {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/AppConvertor;->a(Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;)Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    move-result-object v0

    .line 1041
    if-eqz v0, :cond_1

    .line 1042
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private d([Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 1446
    if-nez p1, :cond_1

    .line 1492
    :cond_0
    return-void

    .line 1450
    :cond_1
    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v2, p1, v0

    .line 1451
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 1452
    const-string/jumbo v3, "indexStage"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1456
    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->getDao()Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->g:Ljava/lang/String;

    .line 1457
    const-string/jumbo v4, "firstScreen"

    .line 1456
    invoke-virtual {v2, v3, v4}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->getStageEntity(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;

    move-result-object v2

    .line 1458
    if-eqz v2, :cond_2

    .line 1459
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;->setLastRefreshTime(J)V

    .line 1460
    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->getDao()Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->updateStageEntity(Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;)V

    .line 1463
    :cond_2
    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->getDao()Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;

    move-result-object v2

    .line 1464
    iget-object v3, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->g:Ljava/lang/String;

    const-string/jumbo v4, "secondScreen"

    invoke-virtual {v2, v3, v4}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->getStageEntity(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;

    move-result-object v2

    .line 1465
    if-eqz v2, :cond_3

    .line 1466
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;->setLastRefreshTime(J)V

    .line 1467
    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->getDao()Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->updateStageEntity(Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;)V

    .line 1450
    :cond_3
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1469
    :cond_4
    const-string/jumbo v3, "contactStage"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1470
    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->getDao()Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->g:Ljava/lang/String;

    .line 1471
    const-string/jumbo v4, "contactA"

    .line 1470
    invoke-virtual {v2, v3, v4}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->getStageEntity(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;

    move-result-object v2

    .line 1472
    if-eqz v2, :cond_3

    .line 1473
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;->setLastRefreshTime(J)V

    .line 1474
    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->getDao()Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->updateStageEntity(Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;)V

    goto :goto_1

    .line 1476
    :cond_5
    const-string/jumbo v3, "urgentStage"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1477
    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->getDao()Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->g:Ljava/lang/String;

    .line 1478
    const-string/jumbo v4, "urgentA"

    .line 1477
    invoke-virtual {v2, v3, v4}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->getStageEntity(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;

    move-result-object v2

    .line 1479
    if-eqz v2, :cond_3

    .line 1480
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;->setLastRefreshTime(J)V

    .line 1481
    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->getDao()Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->updateStageEntity(Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;)V

    goto :goto_1

    .line 1483
    :cond_6
    const-string/jumbo v3, "userInfo"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1484
    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->getDao()Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->g:Ljava/lang/String;

    .line 1485
    const-string/jumbo v4, "userInfo"

    .line 1484
    invoke-virtual {v2, v3, v4}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->getStageEntity(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;

    move-result-object v2

    .line 1486
    if-eqz v2, :cond_3

    .line 1487
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;->setLastRefreshTime(J)V

    .line 1488
    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->getDao()Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->updateStageEntity(Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;)V

    goto :goto_1
.end method

.method private static e(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobileappconfig/biz/rpc/model/stage/ClientStageView;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppView;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1067
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1068
    if-nez p0, :cond_0

    .line 1069
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1080
    :goto_0
    return-object v0

    .line 1071
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1080
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_0

    .line 1071
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobileappconfig/biz/rpc/model/stage/ClientStageView;

    .line 1072
    iget-object v3, v0, Lcom/alipay/mobileappconfig/biz/rpc/model/stage/ClientStageView;->appList:Ljava/util/List;

    if-eqz v3, :cond_1

    .line 1073
    iget-object v0, v0, Lcom/alipay/mobileappconfig/biz/rpc/model/stage/ClientStageView;->appList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppView;

    .line 1074
    iget-object v4, v0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppView;->appId:Ljava/lang/String;

    invoke-interface {v1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 1075
    iget-object v4, v0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppView;->appId:Ljava/lang/String;

    invoke-interface {v1, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method private e([Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppVersion;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2272
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2273
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 2275
    array-length v4, p1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lt v1, v4, :cond_1

    .line 2284
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4

    .line 2294
    return-object v2

    .line 2275
    :cond_1
    aget-object v0, p1, v1

    .line 2276
    invoke-direct {p0, v0}, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 2277
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    .line 2278
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2275
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 2278
    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/Stage;

    .line 2279
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/Stage;->getApps()Ljava/util/List;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    .line 2284
    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    .line 2285
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getInstallerType()Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;

    move-result-object v3

    sget-object v4, Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;->H5App:Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;

    if-ne v3, v4, :cond_0

    .line 2286
    new-instance v3, Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppVersion;

    invoke-direct {v3}, Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppVersion;-><init>()V

    .line 2287
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppId()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppVersion;->appId:Ljava/lang/String;

    .line 2288
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getPkgVersion()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 2289
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getPkgVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppVersion;->version:Ljava/lang/String;

    .line 2290
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private declared-synchronized e()V
    .locals 4

    .prologue
    .line 376
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "AppManageServiceImpl"

    const-string/jumbo v2, "initDefaultStage"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;->getInstance()Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;->getHasMovedApp()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 378
    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->getDao()Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->hasOldUserStage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 379
    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->getDao()Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->g:Ljava/lang/String;

    const-string/jumbo v2, "firstScreen"

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->copyOldStage(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->getDao()Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->g:Ljava/lang/String;

    const-string/jumbo v2, "secondScreen"

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->copyOldStage(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    :goto_0
    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;->getInstance()Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;->clearHasMovedAppPreference()V

    .line 390
    :goto_1
    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->getDao()Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->g:Ljava/lang/String;

    const-string/jumbo v2, "userInfo1"

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->copyPreinstallStage(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->getDao()Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->g:Ljava/lang/String;

    const-string/jumbo v2, "userInfo2"

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->copyPreinstallStage(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->getDao()Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->g:Ljava/lang/String;

    const-string/jumbo v2, "userInfo3"

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->copyPreinstallStage(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->getDao()Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->g:Ljava/lang/String;

    const-string/jumbo v2, "userConfig1"

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->copyPreinstallStage(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->getDao()Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->g:Ljava/lang/String;

    const-string/jumbo v2, "userConfig2"

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->copyPreinstallStage(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->getDao()Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->g:Ljava/lang/String;

    const-string/jumbo v2, "contactB"

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->copyPreinstallStage(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->getDao()Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->g:Ljava/lang/String;

    const-string/jumbo v2, "contactA"

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->copyPreinstallStage(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->getDao()Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->g:Ljava/lang/String;

    const-string/jumbo v2, "groupHome"

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->copyPreinstallStage(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->getDao()Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->g:Ljava/lang/String;

    const-string/jumbo v2, "topAppSubStage1"

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->copyPreinstallStage(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->getDao()Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->g:Ljava/lang/String;

    const-string/jumbo v2, "SelectPanel"

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->copyPreinstallStage(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    new-instance v0, Ljava/util/Observable;

    invoke-direct {v0}, Ljava/util/Observable;-><init>()V

    new-instance v1, Lcom/alipay/mobile/framework/service/ext/openplatform/MemoryAppsChangeNotify;

    .line 402
    const/4 v2, 0x1

    .line 403
    const-string/jumbo v3, "indexStage"

    invoke-direct {v1, v2, v3}, Lcom/alipay/mobile/framework/service/ext/openplatform/MemoryAppsChangeNotify;-><init>(ILjava/lang/String;)V

    .line 401
    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->a(Ljava/util/Observable;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 404
    monitor-exit p0

    return-void

    .line 382
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->getDao()Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->g:Ljava/lang/String;

    const-string/jumbo v2, "firstScreen"

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->copyPreinstallStage(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->getDao()Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->g:Ljava/lang/String;

    const-string/jumbo v2, "secondScreen"

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->copyPreinstallStage(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 376
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 387
    :cond_1
    :try_start_2
    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->getDao()Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->g:Ljava/lang/String;

    const-string/jumbo v2, "firstScreen"

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->copyPreinstallStage(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->getDao()Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->g:Ljava/lang/String;

    const-string/jumbo v2, "secondScreen"

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->copyPreinstallStage(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1
.end method

.method private f()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 514
    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;->getInstance()Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;->getNeedFetchApps()Z

    move-result v0

    .line 515
    if-nez v0, :cond_0

    .line 516
    new-array v0, v1, [Ljava/lang/String;

    .line 517
    const-string/jumbo v1, "firstScreen"

    aput-object v1, v0, v2

    const-string/jumbo v1, "secondScreen"

    aput-object v1, v0, v3

    .line 518
    const-string/jumbo v1, "contactA"

    aput-object v1, v0, v4

    .line 516
    invoke-direct {p0, v0}, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->a([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 521
    :cond_0
    const/16 v0, 0xc

    :try_start_0
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 522
    const-string/jumbo v2, "fastStage1"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 523
    const-string/jumbo v2, "normalStage1"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 524
    const-string/jumbo v2, "indexStage"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 525
    const-string/jumbo v2, "contactStage"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    .line 526
    const-string/jumbo v2, "groupStage"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    .line 527
    const-string/jumbo v2, "contactGroup"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 528
    const-string/jumbo v2, "userInfo"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    .line 529
    const-string/jumbo v2, "topAppStage"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    .line 530
    const-string/jumbo v2, "userConfig"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    .line 531
    const-string/jumbo v2, "PublicPlatform"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    .line 532
    const-string/jumbo v2, "strategyStage"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    .line 533
    const-string/jumbo v2, "h5Stage"

    aput-object v2, v0, v1

    .line 521
    invoke-direct {p0, v0}, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->b([Ljava/lang/String;)V

    .line 535
    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;->getInstance()Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;->setNeedFetchApps(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 541
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 536
    :catch_0
    move-exception v0

    .line 537
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "AppManageServiceImpl"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static f(Ljava/util/List;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1087
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1088
    if-nez p0, :cond_0

    move-object v0, v1

    .line 1111
    :goto_0
    return-object v0

    .line 1091
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    move-object v0, v1

    .line 1111
    goto :goto_0

    .line 1091
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;

    .line 1092
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    const-string/jumbo v4, "AppManageServiceImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "filterRemoteBack item id:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v0, Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;->appId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1093
    const-string/jumbo v6, " name:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " version:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;->version:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1094
    const-string/jumbo v6, " installerType:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;->installerType:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1092
    invoke-interface {v3, v4, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 1096
    const-string/jumbo v3, "offline"

    iget-object v4, v0, Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;->status:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1098
    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDao;->getDao()Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDao;

    move-result-object v3

    iget-object v0, v0, Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;->appId:Ljava/lang/String;

    invoke-virtual {v3, v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDao;->getAppByAppId(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    move-result-object v0

    .line 1100
    if-eqz v0, :cond_1

    .line 1101
    const-string/jumbo v3, "offline"

    .line 1102
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getStatus()Ljava/lang/String;

    move-result-object v4

    .line 1101
    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1103
    const-string/jumbo v3, "offline"

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setStatus(Ljava/lang/String;)V

    .line 1104
    invoke-static {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/AppConvertor;->a(Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;)Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;

    move-result-object v0

    .line 1105
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1107
    :cond_3
    invoke-static {v0}, Lcom/alipay/mobile/appstoreapp/util/AppStoreUtil;->a(Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1108
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1
.end method

.method private g(Ljava/util/List;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 1210
    if-eqz p1, :cond_0

    .line 1211
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1212
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->l:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1232
    :cond_0
    :goto_0
    return-object p1

    .line 1216
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1217
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1228
    iput-boolean v6, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->j:Z

    .line 1229
    iput-object v4, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->l:Ljava/lang/String;

    .line 1230
    iput-object v4, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->k:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    goto :goto_0

    .line 1218
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    .line 1219
    iget-object v2, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->l:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1220
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "AppManageServiceImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "filterStrategicApp:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->l:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1221
    iput-object v0, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->k:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    .line 1222
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->k:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppInfo()Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setMovable(Z)V

    .line 1223
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0
.end method

.method private g()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v0, 0x0

    .line 734
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "AppManageServiceImpl"

    const-string/jumbo v3, "deleteOldApps"

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 735
    new-array v1, v6, [Ljava/lang/String;

    .line 736
    const-string/jumbo v2, "80000001"

    aput-object v2, v1, v0

    const/4 v2, 0x1

    const-string/jumbo v3, "09999990"

    aput-object v3, v1, v2

    .line 738
    :goto_0
    if-lt v0, v6, :cond_0

    .line 743
    return-void

    .line 735
    :cond_0
    aget-object v2, v1, v0

    .line 739
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v5

    .line 740
    invoke-interface {v5}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Landroid/app/Application;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Application;->getFilesDir()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v5, "/apps/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 739
    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 741
    invoke-direct {p0, v3}, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->a(Ljava/io/File;)V

    .line 738
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private declared-synchronized h(Ljava/util/List;)Lcom/alipay/mobileappconfig/biz/rpc/model/app/UserRankReportReq;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/alipay/mobileappconfig/biz/rpc/model/app/UserRankReportReq;"
        }
    .end annotation

    .prologue
    .line 1434
    monitor-enter p0

    :try_start_0
    new-instance v1, Lcom/alipay/mobileappconfig/biz/rpc/model/app/UserRankReportReq;

    invoke-direct {v1}, Lcom/alipay/mobileappconfig/biz/rpc/model/app/UserRankReportReq;-><init>()V

    .line 1435
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1436
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1439
    iput-object v2, v1, Lcom/alipay/mobileappconfig/biz/rpc/model/app/UserRankReportReq;->userStageRankList:Ljava/util/List;

    .line 1440
    const-string/jumbo v0, "ANDROID"

    iput-object v0, v1, Lcom/alipay/mobileappconfig/biz/rpc/model/app/UserRankReportReq;->platform:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1441
    monitor-exit p0

    return-object v1

    .line 1436
    :cond_0
    :try_start_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1437
    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->getDao()Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;

    move-result-object v4

    iget-object v5, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->g:Ljava/lang/String;

    invoke-virtual {v4, v5, v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->getUserStageRankForStage(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobileappconfig/core/model/stage/UserStageRank;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1434
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static h()V
    .locals 3

    .prologue
    .line 1581
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1582
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    .line 1583
    sget v2, Lcom/alipay/mobile/openplatform/R$string;->p:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1584
    const/4 v2, 0x0

    .line 1582
    invoke-interface {v1, v0, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->Toast(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1588
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static i(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1533
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1536
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1547
    return-object p0

    .line 1537
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    .line 1538
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/ChannelConfigUtils;->isBannedApp(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1539
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 1543
    :cond_2
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppId()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "10000008"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v2, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->isLogin()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->getUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->isWirelessUser()Z

    move-result v0

    :goto_1
    if-eqz v0, :cond_0

    .line 1544
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 1543
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private i()V
    .locals 7

    .prologue
    const/4 v3, 0x1

    .line 2456
    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDao;->getDao()Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDao;->getAllApps()Ljava/util/List;

    move-result-object v0

    .line 2457
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 2458
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2487
    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2488
    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDao;->getDao()Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDao;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDao;->saveOrUpdateAppEntitys(Ljava/util/List;)V

    .line 2490
    :cond_1
    return-void

    .line 2458
    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    .line 2459
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->u:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2460
    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/alipay/mobile/framework/locale/LocaleHelper;->getInstance()Lcom/alipay/mobile/framework/locale/LocaleHelper;

    move-result-object v2

    .line 2461
    invoke-virtual {v2}, Lcom/alipay/mobile/framework/locale/LocaleHelper;->getAlipayLocaleDes()Ljava/lang/String;

    move-result-object v2

    .line 2460
    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2462
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->u:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/appstoreapp/language/LanguageAppModle;

    .line 2463
    invoke-virtual {v0}, Lcom/alipay/mobile/appstoreapp/language/LanguageAppModle;->getNameMap()Ljava/util/Map;

    move-result-object v0

    .line 2464
    if-nez v0, :cond_5

    const-string/jumbo v0, ""

    .line 2466
    :goto_1
    const/4 v2, 0x0

    .line 2467
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 2468
    invoke-virtual {v1, v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setName(Ljava/lang/String;)V

    .line 2469
    invoke-static {}, Lcom/alipay/mobile/framework/locale/LocaleHelper;->getInstance()Lcom/alipay/mobile/framework/locale/LocaleHelper;

    move-result-object v0

    .line 2470
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/locale/LocaleHelper;->getAlipayLocaleDes()Ljava/lang/String;

    move-result-object v0

    .line 2469
    invoke-virtual {v1, v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setLanguage(Ljava/lang/String;)V

    move v2, v3

    .line 2473
    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->u:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getAppId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/appstoreapp/language/LanguageAppModle;

    .line 2474
    invoke-virtual {v0}, Lcom/alipay/mobile/appstoreapp/language/LanguageAppModle;->getDescMap()Ljava/util/Map;

    move-result-object v0

    .line 2475
    if-nez v0, :cond_6

    const-string/jumbo v0, ""

    .line 2477
    :goto_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 2478
    invoke-virtual {v1, v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setName(Ljava/lang/String;)V

    move v2, v3

    .line 2481
    :cond_4
    if-eqz v2, :cond_0

    .line 2482
    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getAppId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 2465
    :cond_5
    invoke-static {}, Lcom/alipay/mobile/framework/locale/LocaleHelper;->getInstance()Lcom/alipay/mobile/framework/locale/LocaleHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/locale/LocaleHelper;->getAlipayLocaleDes()Ljava/lang/String;

    move-result-object v2

    .line 2464
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_1

    .line 2476
    :cond_6
    invoke-static {}, Lcom/alipay/mobile/framework/locale/LocaleHelper;->getInstance()Lcom/alipay/mobile/framework/locale/LocaleHelper;

    move-result-object v6

    invoke-virtual {v6}, Lcom/alipay/mobile/framework/locale/LocaleHelper;->getAlipayLocaleDes()Ljava/lang/String;

    move-result-object v6

    .line 2475
    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_2
.end method

.method private static j(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1551
    if-nez p0, :cond_1

    .line 1552
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 1561
    :cond_0
    return-object p0

    .line 1554
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1555
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1556
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    .line 1557
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->isOffline()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1558
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0
.end method


# virtual methods
.method public auth(Ljava/lang/String;Lcom/alipay/mobile/framework/service/ext/openplatform/service/AuthorizeCallback;)V
    .locals 1

    .prologue
    .line 1127
    const-string/jumbo v0, ""

    invoke-virtual {p0, p1, p2, v0}, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->auth(Ljava/lang/String;Lcom/alipay/mobile/framework/service/ext/openplatform/service/AuthorizeCallback;Ljava/lang/String;)V

    .line 1128
    return-void
.end method

.method public auth(Ljava/lang/String;Lcom/alipay/mobile/framework/service/ext/openplatform/service/AuthorizeCallback;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1132
    new-instance v0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    invoke-direct {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;-><init>()V

    .line 1133
    invoke-virtual {v0, p1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setAppId(Ljava/lang/String;)V

    .line 1134
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setNeedAuthorize(Z)V

    .line 1135
    new-instance v1, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/ApkApp;

    invoke-direct {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/ApkApp;-><init>()V

    .line 1136
    invoke-virtual {v1, v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->setAppInfo(Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;)V

    .line 1137
    invoke-virtual {v1, p3}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->setAuthType(Ljava/lang/String;)V

    .line 1138
    invoke-virtual {v1, p1, p2}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->auth(Ljava/lang/String;Lcom/alipay/mobile/framework/service/ext/openplatform/service/AuthorizeCallback;)V

    .line 1139
    return-void
.end method

.method public authAndLaunch(Ljava/lang/String;Ljava/lang/String;ZLandroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 1116
    new-instance v0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    invoke-direct {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;-><init>()V

    .line 1117
    invoke-virtual {v0, p1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setAppId(Ljava/lang/String;)V

    .line 1118
    invoke-virtual {v0, p2}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setPackageName(Ljava/lang/String;)V

    .line 1119
    invoke-virtual {v0, p3}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setNeedAuthorize(Z)V

    .line 1120
    new-instance v1, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/ApkApp;

    invoke-direct {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/ApkApp;-><init>()V

    .line 1121
    invoke-virtual {v1, v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->setAppInfo(Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;)V

    .line 1122
    invoke-virtual {v1, p4}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->authAndLaunch(Landroid/os/Bundle;)V

    .line 1123
    return-void
.end method

.method public autoUpdateApps()V
    .locals 6

    .prologue
    .line 551
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "AppManageServiceImpl"

    .line 552
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "afterFetchDataFromRemote:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->o:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 551
    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 553
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 554
    iget-object v3, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->a:Ljava/util/Map;

    monitor-enter v3

    .line 555
    :try_start_0
    iget-boolean v0, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->o:Z

    if-nez v0, :cond_1

    .line 556
    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDao;->getDao()Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDao;->getAllApps()Ljava/util/List;

    move-result-object v0

    .line 557
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 567
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    .line 554
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 571
    invoke-static {v2}, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->a(Ljava/util/Map;)V

    .line 572
    return-void

    .line 557
    :cond_2
    :try_start_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    .line 558
    iget-object v4, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->a:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getAppId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 559
    invoke-static {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/AppFactory;->createApp(Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;)Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    move-result-object v0

    .line 560
    if-eqz v0, :cond_0

    .line 561
    iget-object v4, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->a:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 562
    invoke-virtual {v0, p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->addObserver(Ljava/util/Observer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 554
    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0

    .line 567
    :cond_3
    :try_start_2
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 568
    iget-object v1, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->a:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public changeStageLanguage()Z
    .locals 12

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2384
    invoke-direct {p0}, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->c()Z

    move-result v0

    .line 2385
    if-eqz v0, :cond_0

    move v0, v2

    .line 2449
    :goto_0
    return v0

    .line 2388
    :cond_0
    const-string/jumbo v0, "AppManageServiceImpl"

    const-string/jumbo v1, "changeStageLanguage start!"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2389
    iget-boolean v0, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->c:Z

    invoke-static {v0}, Lcom/alipay/mobile/appstoreapp/manager/RpcPbUtil;->a(Z)Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientSimpleAppRes;

    move-result-object v4

    .line 2390
    if-nez v4, :cond_1

    .line 2391
    const-string/jumbo v0, "AppManageServiceImpl"

    const-string/jumbo v1, "changeStageLanguage rpc error!"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2392
    invoke-direct {p0}, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->i()V

    move v0, v3

    .line 2393
    goto :goto_0

    .line 2395
    :cond_1
    iget-object v0, v4, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientSimpleAppRes;->locale:Ljava/lang/String;

    .line 2396
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 2397
    invoke-static {}, Lcom/alipay/mobile/framework/locale/LocaleHelper;->getInstance()Lcom/alipay/mobile/framework/locale/LocaleHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/locale/LocaleHelper;->getAlipayLocaleDes()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 2399
    :goto_1
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 2400
    iget-object v0, v4, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientSimpleAppRes;->stageList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2406
    invoke-interface {v5}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2407
    invoke-direct {p0}, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->i()V

    move v0, v3

    .line 2408
    goto :goto_0

    .line 2400
    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientSimpleStageView;

    .line 2401
    iget-object v6, v0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientSimpleStageView;->stageCode:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    iget-object v6, v0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientSimpleStageView;->appList:Ljava/util/List;

    if-eqz v6, :cond_2

    .line 2402
    iget-object v6, v0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientSimpleStageView;->appList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_2

    .line 2403
    iget-object v6, v0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientSimpleStageView;->stageCode:Ljava/lang/String;

    iget-object v0, v0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientSimpleStageView;->appList:Ljava/util/List;

    invoke-interface {v5, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 2412
    :cond_4
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/appstoreapp/language/LanguageHelper;->a()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v4

    .line 2413
    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_6

    .line 2438
    iput-object v4, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->u:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2440
    new-instance v0, Ljava/util/ArrayList;

    .line 2441
    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    .line 2440
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2442
    invoke-static {}, Lcom/alipay/mobile/appstoreapp/language/LanguageCache;->a()Lcom/alipay/mobile/appstoreapp/language/LanguageCache;

    move-result-object v1

    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/appstoreapp/language/LanguageCache;->a(Ljava/lang/String;)V

    .line 2443
    invoke-direct {p0}, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->i()V

    .line 2444
    const-string/jumbo v0, "AppManageServiceImpl"

    const-string/jumbo v1, "changeStageLanguage sucess!"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    .line 2445
    goto/16 :goto_0

    .line 2413
    :cond_6
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2414
    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 2415
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientSimpleAppView;

    .line 2416
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 2417
    iget-object v9, v0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientSimpleAppView;->appName:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_7

    .line 2418
    iget-object v9, v0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientSimpleAppView;->appName:Ljava/lang/String;

    invoke-interface {v8, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2420
    :cond_7
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 2421
    iget-object v10, v0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientSimpleAppView;->appDesc:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_8

    .line 2422
    iget-object v10, v0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientSimpleAppView;->appDesc:Ljava/lang/String;

    invoke-interface {v9, v1, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2424
    :cond_8
    iget-object v10, v0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientSimpleAppView;->appId:Ljava/lang/String;

    invoke-virtual {v4, v10}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 2425
    iget-object v0, v0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientSimpleAppView;->appId:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/appstoreapp/language/LanguageAppModle;

    .line 2426
    invoke-virtual {v0}, Lcom/alipay/mobile/appstoreapp/language/LanguageAppModle;->getNameMap()Ljava/util/Map;

    move-result-object v10

    invoke-interface {v10, v8}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 2427
    invoke-virtual {v0}, Lcom/alipay/mobile/appstoreapp/language/LanguageAppModle;->getDescMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v9}, Ljava/util/Map;->putAll(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 2446
    :catch_0
    move-exception v0

    .line 2447
    const-string/jumbo v1, "AppManageServiceImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "changeStageLanguage error: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/logging/LogCatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v3

    .line 2449
    goto/16 :goto_0

    .line 2429
    :cond_9
    :try_start_1
    new-instance v10, Lcom/alipay/mobile/appstoreapp/language/LanguageAppModle;

    invoke-direct {v10}, Lcom/alipay/mobile/appstoreapp/language/LanguageAppModle;-><init>()V

    .line 2430
    iget-object v11, v0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientSimpleAppView;->appId:Ljava/lang/String;

    invoke-virtual {v10, v11}, Lcom/alipay/mobile/appstoreapp/language/LanguageAppModle;->setAppId(Ljava/lang/String;)V

    .line 2431
    invoke-virtual {v10, v8}, Lcom/alipay/mobile/appstoreapp/language/LanguageAppModle;->setNameMap(Ljava/util/Map;)V

    .line 2432
    invoke-virtual {v10, v9}, Lcom/alipay/mobile/appstoreapp/language/LanguageAppModle;->setDescMap(Ljava/util/Map;)V

    .line 2433
    iget-object v0, v0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientSimpleAppView;->appId:Ljava/lang/String;

    invoke-virtual {v4, v0, v10}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_3

    :cond_a
    move-object v1, v0

    goto/16 :goto_1
.end method

.method public getAppById(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;
    .locals 4

    .prologue
    .line 668
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 669
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    .line 678
    :cond_0
    :goto_0
    return-object v0

    .line 671
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDao;->getDao()Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDao;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDao;->getAppByAppId(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/AppFactory;->createApp(Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;)Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    move-result-object v0

    .line 672
    if-eqz v0, :cond_0

    .line 673
    invoke-virtual {v0, p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->addObserver(Ljava/util/Observer;)V

    .line 674
    iget-object v1, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->a:Ljava/util/Map;

    monitor-enter v1

    .line 675
    :try_start_0
    iget-object v2, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->a:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 674
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getAppByStage(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1827
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move-object v0, v1

    .line 1844
    :goto_0
    return-object v0

    .line 1830
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    move-object v0, v1

    .line 1831
    goto :goto_0

    .line 1833
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1834
    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_4

    :cond_3
    move-object v0, v1

    .line 1835
    goto :goto_0

    .line 1837
    :cond_4
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_6

    move-object v0, v1

    .line 1844
    goto :goto_0

    .line 1837
    :cond_6
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1838
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1839
    invoke-virtual {p0, p2}, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->getAppById(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    move-result-object v0

    goto :goto_0
.end method

.method public getAppCenterAppsFromLocal()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1249
    const-string/jumbo v0, "secondScreen"

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->getStageFromLocal(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/openplatform/app/Stage;

    move-result-object v0

    .line 1250
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/Stage;->getApps()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAppStatusByStage(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/openplatform/app/ExtAppStatus;
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1864
    new-instance v2, Lcom/alipay/mobile/framework/service/ext/openplatform/app/ExtAppStatus;

    invoke-direct {v2}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/ExtAppStatus;-><init>()V

    .line 1865
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1866
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1867
    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->getDao()Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->isAppInThisStage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1868
    iput-boolean v4, v2, Lcom/alipay/mobile/framework/service/ext/openplatform/app/ExtAppStatus;->exist:Z

    .line 1869
    iput-object v5, v2, Lcom/alipay/mobile/framework/service/ext/openplatform/app/ExtAppStatus;->version:Ljava/lang/String;

    .line 1907
    :cond_0
    :goto_0
    return-object v2

    .line 1872
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1873
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    .line 1874
    if-eqz v0, :cond_4

    .line 1875
    iput-boolean v3, v2, Lcom/alipay/mobile/framework/service/ext/openplatform/app/ExtAppStatus;->exist:Z

    .line 1876
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->isInstalled()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "installed"

    :goto_1
    iput-object v1, v2, Lcom/alipay/mobile/framework/service/ext/openplatform/app/ExtAppStatus;->status:Ljava/lang/String;

    .line 1877
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppStatus()Lcom/alipay/mobile/framework/service/ext/openplatform/AppStatus;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->a(Lcom/alipay/mobile/framework/service/ext/openplatform/AppStatus;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/alipay/mobile/framework/service/ext/openplatform/app/ExtAppStatus;->extStatus:Ljava/lang/String;

    .line 1878
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getVersion()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/alipay/mobile/framework/service/ext/openplatform/app/ExtAppStatus;->version:Ljava/lang/String;

    .line 1879
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getInstallerType()Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;->nativeApp:Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;

    if-ne v0, v1, :cond_3

    .line 1880
    const-string/jumbo v0, "microApp"

    .line 1879
    :goto_2
    iput-object v0, v2, Lcom/alipay/mobile/framework/service/ext/openplatform/app/ExtAppStatus;->type:Ljava/lang/String;

    goto :goto_0

    .line 1876
    :cond_2
    const-string/jumbo v1, "uninstall"

    goto :goto_1

    .line 1880
    :cond_3
    const-string/jumbo v0, ""

    goto :goto_2

    .line 1883
    :cond_4
    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDao;->getDao()Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDao;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDao;->getAppByAppId(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    move-result-object v0

    .line 1884
    if-nez v0, :cond_6

    .line 1886
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 1887
    invoke-interface {v0, p1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findDescriptionByAppId(Ljava/lang/String;)Lcom/alipay/mobile/framework/app/ApplicationDescription;

    move-result-object v0

    .line 1885
    if-nez v0, :cond_5

    .line 1889
    iput-boolean v4, v2, Lcom/alipay/mobile/framework/service/ext/openplatform/app/ExtAppStatus;->exist:Z

    .line 1890
    iput-object v5, v2, Lcom/alipay/mobile/framework/service/ext/openplatform/app/ExtAppStatus;->version:Ljava/lang/String;

    goto :goto_0

    .line 1892
    :cond_5
    iput-boolean v3, v2, Lcom/alipay/mobile/framework/service/ext/openplatform/app/ExtAppStatus;->exist:Z

    .line 1893
    const-string/jumbo v0, "installed"

    iput-object v0, v2, Lcom/alipay/mobile/framework/service/ext/openplatform/app/ExtAppStatus;->status:Ljava/lang/String;

    .line 1894
    const-string/jumbo v0, "online"

    iput-object v0, v2, Lcom/alipay/mobile/framework/service/ext/openplatform/app/ExtAppStatus;->extStatus:Ljava/lang/String;

    .line 1895
    const-string/jumbo v0, "microApp"

    move-object v1, v2

    .line 1903
    :goto_3
    iput-object v0, v1, Lcom/alipay/mobile/framework/service/ext/openplatform/app/ExtAppStatus;->type:Ljava/lang/String;

    goto :goto_0

    .line 1898
    :cond_6
    invoke-static {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/AppFactory;->createApp(Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;)Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    move-result-object v1

    .line 1899
    iput-boolean v3, v2, Lcom/alipay/mobile/framework/service/ext/openplatform/app/ExtAppStatus;->exist:Z

    .line 1900
    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->isInstalled()Z

    move-result v0

    if-eqz v0, :cond_7

    const-string/jumbo v0, "installed"

    :goto_4
    iput-object v0, v2, Lcom/alipay/mobile/framework/service/ext/openplatform/app/ExtAppStatus;->status:Ljava/lang/String;

    .line 1901
    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppStatus()Lcom/alipay/mobile/framework/service/ext/openplatform/AppStatus;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->a(Lcom/alipay/mobile/framework/service/ext/openplatform/AppStatus;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/alipay/mobile/framework/service/ext/openplatform/app/ExtAppStatus;->extStatus:Ljava/lang/String;

    .line 1902
    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/alipay/mobile/framework/service/ext/openplatform/app/ExtAppStatus;->version:Ljava/lang/String;

    .line 1903
    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getInstallerType()Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;->nativeApp:Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;

    if-ne v0, v1, :cond_8

    .line 1904
    const-string/jumbo v0, "microApp"

    move-object v1, v2

    goto :goto_3

    .line 1900
    :cond_7
    const-string/jumbo v0, "uninstall"

    goto :goto_4

    .line 1904
    :cond_8
    const-string/jumbo v0, ""

    move-object v1, v2

    goto :goto_3
.end method

.method public getAppsByPage(II)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1260
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Lcom/alipay/mobile/appstoreapp/util/GeneralRequestBuilder;->a(Ljava/util/List;)Lcom/alipay/mobileapp/common/service/facade/app/facade/QueryAppstoreReq;

    move-result-object v0

    .line 1261
    iget-boolean v1, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->c:Z

    iput-boolean v1, v0, Lcom/alipay/mobileapp/common/service/facade/app/facade/QueryAppstoreReq;->pre:Z

    .line 1262
    iput p1, v0, Lcom/alipay/mobileapp/common/service/facade/app/facade/QueryAppstoreReq;->page:I

    .line 1263
    iput p2, v0, Lcom/alipay/mobileapp/common/service/facade/app/facade/QueryAppstoreReq;->pagesize:I

    .line 1265
    invoke-direct {p0}, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->b()Lcom/alipay/mobileapp/common/service/facade/app/facade/MobileAppInfoServiceFacade;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/alipay/mobileapp/common/service/facade/app/facade/MobileAppInfoServiceFacade;->queryIndependantAppList(Lcom/alipay/mobileapp/common/service/facade/app/facade/QueryAppstoreReq;)Lcom/alipay/mobileapp/common/service/facade/app/facade/QueryAppstoreRes;

    move-result-object v0

    .line 1266
    if-eqz v0, :cond_2

    iget v1, v0, Lcom/alipay/mobileapp/common/service/facade/app/facade/QueryAppstoreRes;->resultStatus:I

    const/16 v2, 0x3e8

    if-ne v1, v2, :cond_2

    .line 1267
    iget-object v0, v0, Lcom/alipay/mobileapp/common/service/facade/app/facade/QueryAppstoreRes;->appList:Ljava/util/List;

    invoke-static {v0}, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->f(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 1268
    invoke-direct {p0, v0}, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->a(Ljava/util/List;)V

    .line 1270
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1271
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1276
    return-object v1

    .line 1271
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;

    .line 1272
    iget-object v3, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->a:Ljava/util/Map;

    iget-object v4, v0, Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;->appId:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1273
    iget-object v3, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->a:Ljava/util/Map;

    iget-object v0, v0, Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;->appId:Ljava/lang/String;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1278
    :cond_2
    new-instance v1, Lcom/alipay/mobile/framework/service/ext/openplatform/AppStoreException;

    iget v2, v0, Lcom/alipay/mobileapp/common/service/facade/app/facade/QueryAppstoreRes;->resultStatus:I

    iget-object v0, v0, Lcom/alipay/mobileapp/common/service/facade/app/facade/QueryAppstoreRes;->memo:Ljava/lang/String;

    invoke-direct {v1, v2, v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/AppStoreException;-><init>(ILjava/lang/String;)V

    throw v1
.end method

.method public getAppsFromRemote([Ljava/lang/String;Lcom/alipay/mobile/framework/service/ext/openplatform/AppFetchCallback;)V
    .locals 0

    .prologue
    .line 1330
    return-void
.end method

.method public getConfigStagesFromRemote()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2207
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "AppManageServiceImpl"

    const-string/jumbo v2, "getConfigStagesFromRemote"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 2208
    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;->getInstance()Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;->getNeedFetchConfigStage()Z

    move-result v0

    .line 2209
    if-nez v0, :cond_0

    .line 2210
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    .line 2211
    const-string/jumbo v1, "userConfig1"

    aput-object v1, v0, v3

    .line 2212
    const-string/jumbo v1, "userConfig2"

    aput-object v1, v0, v4

    .line 2210
    invoke-direct {p0, v0}, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->a([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2214
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "AppManageServiceImpl"

    const-string/jumbo v2, "getConfigStagesFromRemote start"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 2215
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 2216
    const-string/jumbo v2, "userConfig"

    aput-object v2, v0, v1

    .line 2215
    invoke-direct {p0, v0}, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->c([Ljava/lang/String;)V

    .line 2218
    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;->getInstance()Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;->setNeedFetchConfigStage(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2223
    :cond_1
    :goto_0
    return-void

    .line 2219
    :catch_0
    move-exception v0

    .line 2220
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "AppManageServiceImpl"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getHomeAppsFromLocal()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 1237
    const-string/jumbo v0, "firstScreen"

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->getStageFromLocal(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/openplatform/app/Stage;

    move-result-object v1

    .line 1238
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/Stage;->getApps()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/Stage;->getApps()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    iput-object v6, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->k:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    iput-object v6, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->l:Ljava/lang/String;

    iput-boolean v7, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->j:Z

    iget-boolean v0, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->j:Z

    :goto_0
    if-eqz v0, :cond_5

    .line 1239
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v2, "AppManageServiceImpl"

    const-string/jumbo v3, "isStrategicTemplate"

    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1240
    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/Stage;->getApps()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->g(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 1243
    :goto_1
    return-object v0

    .line 1238
    :cond_1
    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/Stage;->getTemplateId()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "AppManageServiceImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "templateId: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string/jumbo v2, "gift"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/Stage;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v3, "AppManageServiceImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "appId: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/Stage;->getApps()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    iput-object v6, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->k:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    iput-object v6, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->l:Ljava/lang/String;

    iput-boolean v7, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->j:Z

    iget-boolean v0, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->j:Z

    goto :goto_0

    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iput-object v2, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->l:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->j:Z

    iget-boolean v0, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->j:Z

    goto/16 :goto_0

    .line 1242
    :cond_5
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v2, "AppManageServiceImpl"

    const-string/jumbo v3, "is not StrategicTemplate"

    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1243
    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/Stage;->getApps()Ljava/util/List;

    move-result-object v0

    goto/16 :goto_1
.end method

.method public getHomeUrgentAppsFromRemote()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 615
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "AppManageServiceImpl"

    const-string/jumbo v2, "getHomeUrgentAppsFromRemote"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 616
    iget-boolean v0, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->t:Z

    if-eqz v0, :cond_1

    .line 617
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "AppManageServiceImpl"

    const-string/jumbo v2, "isChangedLanguage ing!"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 658
    :cond_0
    :goto_0
    return-void

    .line 620
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;->getInstance()Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;->getNeedFetchApps()Z

    move-result v0

    .line 621
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 623
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    .line 624
    const-string/jumbo v3, "firstScreen"

    aput-object v3, v2, v5

    const-string/jumbo v3, "secondScreen"

    aput-object v3, v2, v6

    .line 623
    invoke-direct {p0, v2}, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->a([Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 626
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "AppManageServiceImpl"

    const-string/jumbo v4, "getHomeUrgentAppsFromRemote-HOME-MORE start"

    invoke-interface {v2, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 627
    const-string/jumbo v2, "indexStage"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 628
    const-string/jumbo v2, "h5Stage"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 631
    :cond_2
    new-array v2, v6, [Ljava/lang/String;

    .line 632
    const-string/jumbo v3, "topAppSubStage1"

    aput-object v3, v2, v5

    .line 631
    invoke-direct {p0, v2}, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->a([Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 634
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "AppManageServiceImpl"

    const-string/jumbo v4, "getHomeUrgentAppsFromRemote-INDEX_TOP_SUB start"

    invoke-interface {v2, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 635
    const-string/jumbo v2, "topAppStage"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 638
    :cond_3
    new-array v2, v6, [Ljava/lang/String;

    .line 639
    const-string/jumbo v3, "strategyStage1"

    aput-object v3, v2, v5

    .line 638
    invoke-direct {p0, v2}, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->a([Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 641
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "AppManageServiceImpl"

    const-string/jumbo v4, "getHomeUrgentAppsFromRemote-STAGE_CODE_STRATEGY_PARENT start"

    invoke-interface {v2, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 642
    const-string/jumbo v2, "strategyStage"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 644
    :cond_4
    if-nez v0, :cond_5

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 646
    :cond_5
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v2, "AppManageServiceImpl"

    const-string/jumbo v3, "getHomeUrgentAppsFromRemote really start"

    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 647
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->reportUserRank(Z)Z

    .line 648
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->h:Ljava/lang/Boolean;

    .line 649
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 650
    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->b([Ljava/lang/String;)V

    .line 651
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->h:Ljava/lang/Boolean;

    .line 652
    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;->getInstance()Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;->setNeedFetchApps(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 653
    :catch_0
    move-exception v0

    .line 654
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->h:Ljava/lang/Boolean;

    .line 655
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "AppManageServiceImpl"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public getSearchStagesFromRemote()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2052
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "AppManageServiceImpl"

    const-string/jumbo v2, "getSearchStagesFromRemote"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 2053
    iget-boolean v0, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->r:Z

    if-eqz v0, :cond_1

    .line 2075
    :cond_0
    :goto_0
    return-void

    .line 2056
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;->getInstance()Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;->getNeedFetchSearchStage()Z

    move-result v0

    .line 2057
    if-nez v0, :cond_2

    .line 2058
    new-array v0, v4, [Ljava/lang/String;

    .line 2059
    const-string/jumbo v1, "globalSearch"

    aput-object v1, v0, v3

    .line 2058
    invoke-direct {p0, v0}, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->a([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2061
    :cond_2
    iput-boolean v4, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->r:Z

    .line 2063
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "AppManageServiceImpl"

    const-string/jumbo v2, "getSearchStagesFromRemote start"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 2064
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 2065
    const-string/jumbo v2, "global"

    aput-object v2, v0, v1

    .line 2064
    invoke-direct {p0, v0}, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->c([Ljava/lang/String;)V

    .line 2067
    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;->getInstance()Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;->setNeedFetchSearchStage(Z)V

    .line 2068
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->r:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2069
    :catch_0
    move-exception v0

    .line 2070
    iput-boolean v3, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->r:Z

    .line 2071
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "AppManageServiceImpl"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getServiceWindowFromRemote()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2227
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "AppManageServiceImpl"

    const-string/jumbo v2, "getServiceWindowFromRemote"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 2228
    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;->getInstance()Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;->getNeedFetchServiceWindowStage()Z

    move-result v0

    .line 2229
    if-nez v0, :cond_0

    .line 2230
    new-array v0, v4, [Ljava/lang/String;

    .line 2231
    const-string/jumbo v1, "SelectPanel"

    aput-object v1, v0, v3

    .line 2230
    invoke-direct {p0, v0}, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->a([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2233
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "AppManageServiceImpl"

    const-string/jumbo v2, "getServiceWindowFromRemote start"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 2234
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 2235
    const-string/jumbo v2, "PublicPlatform"

    aput-object v2, v0, v1

    .line 2234
    invoke-direct {p0, v0}, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->c([Ljava/lang/String;)V

    .line 2237
    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;->getInstance()Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;->setNeedFetchConfigStage(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2242
    :cond_1
    :goto_0
    return-void

    .line 2238
    :catch_0
    move-exception v0

    .line 2239
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "AppManageServiceImpl"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getSocialStagesFromRemote()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2178
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "AppManageServiceImpl"

    const-string/jumbo v2, "getSocialStagesFromRemote"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 2179
    iget-boolean v0, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->q:Z

    if-eqz v0, :cond_1

    .line 2203
    :cond_0
    :goto_0
    return-void

    .line 2182
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;->getInstance()Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;->getNeedFetchSocialStage()Z

    move-result v0

    .line 2183
    if-nez v0, :cond_2

    .line 2184
    new-array v0, v6, [Ljava/lang/String;

    .line 2185
    const-string/jumbo v1, "contactB"

    aput-object v1, v0, v3

    .line 2186
    const-string/jumbo v1, "groupHome"

    aput-object v1, v0, v4

    const-string/jumbo v1, "contactA"

    aput-object v1, v0, v5

    .line 2184
    invoke-direct {p0, v0}, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->a([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2188
    :cond_2
    iput-boolean v4, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->q:Z

    .line 2190
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "AppManageServiceImpl"

    const-string/jumbo v2, "getSocialStagesFromRemote start"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 2191
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 2192
    const-string/jumbo v2, "contactStage"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 2193
    const-string/jumbo v2, "contactGroup"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 2194
    const-string/jumbo v2, "groupStage"

    aput-object v2, v0, v1

    .line 2191
    invoke-direct {p0, v0}, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->c([Ljava/lang/String;)V

    .line 2196
    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;->getInstance()Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;->setNeedFetchSearchStage(Z)V

    .line 2197
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->q:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2198
    :catch_0
    move-exception v0

    .line 2199
    iput-boolean v3, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->q:Z

    .line 2200
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "AppManageServiceImpl"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getStageFromLocal(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/openplatform/app/Stage;
    .locals 1

    .prologue
    .line 1206
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->getStageFromLocalWithDisplay(Ljava/lang/String;Z)Lcom/alipay/mobile/framework/service/ext/openplatform/app/Stage;

    move-result-object v0

    return-object v0
.end method

.method public getStageFromLocalWithDisplay(Ljava/lang/String;Z)Lcom/alipay/mobile/framework/service/ext/openplatform/app/Stage;
    .locals 10

    .prologue
    .line 2086
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "AppManageServiceImpl"

    .line 2087
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "getStageFromLocal, stageCode:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ",userId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->g:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2086
    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 2088
    const-string/jumbo v1, "-1"

    iget-object v2, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2089
    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;->getInstance()Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;->getLastUser()Ljava/lang/String;

    move-result-object v1

    .line 2090
    :goto_0
    new-instance v4, Lcom/alipay/mobile/framework/service/ext/openplatform/app/Stage;

    invoke-direct {v4}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/Stage;-><init>()V

    .line 2091
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "AppManageServiceImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "user:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v3, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 2092
    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->getDao()Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;

    move-result-object v2

    invoke-virtual {v2, v1, p1}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->getStageEntity(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;

    move-result-object v2

    .line 2093
    if-nez v2, :cond_c

    .line 2094
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "AppManageServiceImpl"

    const-string/jumbo v3, "stage is null"

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 2095
    const-string/jumbo v2, "-1"

    .line 2096
    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->getDao()Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;

    move-result-object v1

    const-string/jumbo v3, "-1"

    invoke-virtual {v1, v3, p1}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->getStageEntity(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;

    move-result-object v1

    .line 2098
    :goto_1
    if-eqz v1, :cond_b

    .line 2099
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    const-string/jumbo v5, "AppManageServiceImpl"

    .line 2100
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "stageEntity is not null, templateId:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;->getTemplateId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2099
    invoke-interface {v3, v5, v6}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 2101
    invoke-virtual {v4, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/Stage;->setStageInfo(Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;)V

    .line 2102
    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;->getMaxShowAppNum()I

    move-result v3

    invoke-virtual {v4, v3}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/Stage;->setMaxShowNum(I)V

    .line 2103
    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;->getMaxAppNum()I

    move-result v3

    invoke-virtual {v4, v3}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/Stage;->setMaxNum(I)V

    .line 2104
    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;->getRefreshInterval()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/Stage;->setRefreshInterval(J)V

    .line 2105
    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;->getReportInterval()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/Stage;->setReportInterval(J)V

    .line 2106
    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;->getTemplateId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/Stage;->setTemplateId(Ljava/lang/String;)V

    .line 2107
    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/Stage;->setAppId(Ljava/lang/String;)V

    .line 2109
    if-eqz p2, :cond_1

    .line 2110
    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->getDao()Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;

    move-result-object v1

    invoke-virtual {v1, v2, p1}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->getDisplayAppsForStage(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    move-object v3, v1

    .line 2116
    :goto_2
    if-eqz p2, :cond_2

    .line 2117
    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDao;->getDao()Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDao;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDao;->getAppListByAppRanks(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 2121
    :goto_3
    if-nez v1, :cond_3

    .line 2122
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v4, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/Stage;->setApps(Ljava/util/List;)V

    move-object v1, v4

    .line 2172
    :goto_4
    return-object v1

    .line 2089
    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->g:Ljava/lang/String;

    goto/16 :goto_0

    .line 2112
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->getDao()Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;

    move-result-object v1

    invoke-virtual {v1, v2, p1}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->getAppsForStage(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    move-object v3, v1

    goto :goto_2

    .line 2119
    :cond_2
    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDao;->getDao()Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDao;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDao;->getAppListWithoutDisplay(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    goto :goto_3

    .line 2125
    :cond_3
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v5, "AppManageServiceImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "getStageFromLocal, stage:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 2126
    const-string/jumbo v7, "appEntities num:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2125
    invoke-interface {v2, v5, v6}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 2128
    iget-boolean v2, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->v:Z

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->u:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->v:Z

    invoke-static {}, Lcom/alipay/mobile/appstoreapp/language/LanguageHelper;->a()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    iput-object v2, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->u:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2129
    :cond_4
    iget-object v5, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->a:Ljava/util/Map;

    monitor-enter v5

    .line 2130
    :try_start_0
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 2131
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_5
    :goto_5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_6

    .line 2147
    invoke-static {v6}, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->i(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->j(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/Stage;->setApps(Ljava/util/List;)V

    .line 2148
    iget-object v1, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->a:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    .line 2149
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_8

    .line 2152
    iget-object v1, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->b:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2153
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 2154
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_7
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_9

    .line 2165
    iget-object v1, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->b:Ljava/util/Map;

    invoke-interface {v1, p1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2129
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2170
    :goto_8
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "AppManageServiceImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "getStageFromLocal, stage:"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2171
    const-string/jumbo v5, " end!"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2170
    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v4

    .line 2172
    goto/16 :goto_4

    .line 2131
    :cond_6
    :try_start_1
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    move-object v2, v0

    .line 2132
    iget-object v1, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->a:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getAppId()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v1, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 2133
    iget-object v1, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->a:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getAppId()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    .line 2134
    if-eqz v1, :cond_5

    .line 2135
    invoke-virtual {v1, v2}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->setAppInfo(Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;)V

    .line 2136
    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_5

    .line 2129
    :catchall_0
    move-exception v1

    monitor-exit v5

    throw v1

    .line 2139
    :cond_7
    :try_start_2
    invoke-static {v2}, Lcom/alipay/mobile/framework/service/ext/openplatform/AppFactory;->createApp(Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;)Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    move-result-object v1

    .line 2140
    if-eqz v1, :cond_5

    .line 2141
    iget-object v2, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->a:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppId()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v2, v8, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2142
    invoke-virtual {v1, p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->addObserver(Ljava/util/Observer;)V

    .line 2143
    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    .line 2149
    :cond_8
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    .line 2150
    invoke-virtual {v1, p1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->removeFromStage(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/openplatform/app/AppRank;

    goto/16 :goto_6

    .line 2154
    :cond_9
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/AppRank;

    move-object v2, v0

    .line 2155
    iget-object v1, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->a:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/AppRank;->getAppId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    move-object v3, v0

    .line 2156
    if-eqz v3, :cond_a

    .line 2157
    invoke-virtual {v3, v2, p1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->addToStage(Lcom/alipay/mobile/framework/service/ext/openplatform/app/AppRank;Ljava/lang/String;)V

    .line 2158
    iget-object v1, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->u:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/AppRank;->getAppId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 2159
    iget-object v1, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->u:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/AppRank;->getAppId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/appstoreapp/language/LanguageAppModle;

    invoke-virtual {v1}, Lcom/alipay/mobile/appstoreapp/language/LanguageAppModle;->getNameMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->setCacheName(Ljava/util/Map;)V

    .line 2160
    iget-object v1, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->u:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/AppRank;->getAppId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/appstoreapp/language/LanguageAppModle;

    invoke-virtual {v1}, Lcom/alipay/mobile/appstoreapp/language/LanguageAppModle;->getDescMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->setCacheDesc(Ljava/util/Map;)V

    .line 2163
    :cond_a
    invoke-virtual {v2}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/AppRank;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_7

    .line 2168
    :cond_b
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v4, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/Stage;->setApps(Ljava/util/List;)V

    goto/16 :goto_8

    :cond_c
    move-object v9, v2

    move-object v2, v1

    move-object v1, v9

    goto/16 :goto_1
.end method

.method public getStages(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/framework/service/ext/openplatform/app/Stage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1917
    const-string/jumbo v0, "-1"

    iget-object v1, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1918
    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;->getInstance()Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;->getLastUser()Ljava/lang/String;

    move-result-object v0

    .line 1919
    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1920
    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->getDao()Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;

    move-result-object v2

    invoke-virtual {v2, v0, p1}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->getStageEntityList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 1922
    if-eqz v0, :cond_3

    .line 1923
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    move-object v0, v1

    .line 1931
    :goto_2
    return-object v0

    .line 1918
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->g:Ljava/lang/String;

    goto :goto_0

    .line 1923
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;

    .line 1924
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;->getStageCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->getStageFromLocal(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/openplatform/app/Stage;

    move-result-object v0

    .line 1925
    if-eqz v0, :cond_0

    .line 1926
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1931
    :cond_3
    const/4 v0, 0x0

    goto :goto_2
.end method

.method public getStrategicApp()Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;
    .locals 1

    .prologue
    .line 1816
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->k:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    return-object v0
.end method

.method public getStrategyAppsFromLocal()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2045
    const-string/jumbo v0, "strategyStage1"

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->getStageFromLocal(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/openplatform/app/Stage;

    move-result-object v0

    .line 2046
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/Stage;->getApps()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getStrategyStagesFromRemote()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2250
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "AppManageServiceImpl"

    const-string/jumbo v2, "getStrategyStagesFromRemote"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 2251
    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;->getInstance()Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;->getNeedFetchConfigStage()Z

    move-result v0

    .line 2252
    if-nez v0, :cond_0

    .line 2253
    new-array v0, v4, [Ljava/lang/String;

    .line 2254
    const-string/jumbo v1, "strategyStage1"

    aput-object v1, v0, v3

    .line 2253
    invoke-direct {p0, v0}, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->a([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2256
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "AppManageServiceImpl"

    const-string/jumbo v2, "getStrageStageFromRemote start"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 2257
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 2258
    const-string/jumbo v2, "strategyStage"

    aput-object v2, v0, v1

    .line 2257
    invoke-direct {p0, v0}, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->c([Ljava/lang/String;)V

    .line 2260
    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;->getInstance()Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;->setNeedFetchStrategyStage(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2265
    :cond_1
    :goto_0
    return-void

    .line 2261
    :catch_0
    move-exception v0

    .line 2262
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "AppManageServiceImpl"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getThirdAppsFromLocal()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1174
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1175
    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDao;->getDao()Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDao;

    move-result-object v0

    .line 1176
    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/FastLoginAppDao;->getDao()Lcom/alipay/mobile/framework/service/ext/openplatform/persist/FastLoginAppDao;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/FastLoginAppDao;->getAllFastLoginIds()Ljava/util/List;

    move-result-object v1

    const/4 v3, 0x1

    .line 1175
    invoke-virtual {v0, v1, v3}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDao;->getAppListByIds(Ljava/util/List;Z)Ljava/util/List;

    move-result-object v0

    .line 1177
    if-nez v0, :cond_0

    move-object v0, v2

    .line 1196
    :goto_0
    return-object v0

    .line 1180
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    move-object v0, v2

    .line 1196
    goto :goto_0

    .line 1180
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    .line 1181
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v4, "AppManageServiceImpl"

    .line 1182
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "getThirdAppsFromLocal, appid:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getAppId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1181
    invoke-interface {v0, v4, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1183
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->a:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getAppId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1184
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->a:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getAppId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    .line 1185
    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->setAppInfo(Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;)V

    .line 1186
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1188
    :cond_3
    invoke-static {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/AppFactory;->createApp(Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;)Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    move-result-object v0

    .line 1189
    if-eqz v0, :cond_1

    .line 1190
    iget-object v1, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->a:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1191
    invoke-virtual {v0, p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->addObserver(Ljava/util/Observer;)V

    .line 1192
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public getTopScreenAppsFromLocal()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2027
    const-string/jumbo v0, "topAppSubStage1"

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->getStageFromLocal(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/openplatform/app/Stage;

    move-result-object v0

    .line 2029
    if-nez v0, :cond_0

    .line 2030
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "AppManageServiceImpl"

    const-string/jumbo v2, "stage is null"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 2031
    const/4 v0, 0x0

    .line 2034
    :goto_0
    return-object v0

    .line 2033
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "AppManageServiceImpl"

    const-string/jumbo v3, "stage is not null"

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 2034
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/Stage;->getApps()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getUserAppsFromLocal(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/framework/service/ext/openplatform/app/Stage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1912
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->getStages(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getUserAppsFromRemote()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2003
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "AppManageServiceImpl"

    const-string/jumbo v2, "getUserAppsFromRemote"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 2004
    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;->getInstance()Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;->getNeedFetchUserStage()Z

    move-result v0

    .line 2005
    if-nez v0, :cond_0

    .line 2006
    new-array v0, v4, [Ljava/lang/String;

    .line 2007
    const-string/jumbo v1, "userInfo1"

    aput-object v1, v0, v3

    .line 2006
    invoke-direct {p0, v0}, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->a([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2010
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "AppManageServiceImpl"

    const-string/jumbo v2, "getHomeAppsFromRemote start"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 2011
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 2012
    const-string/jumbo v2, "userInfo"

    aput-object v2, v0, v1

    .line 2011
    invoke-direct {p0, v0}, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->c([Ljava/lang/String;)V

    .line 2014
    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;->getInstance()Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;->setNeedFetchUserStage(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2020
    :cond_1
    :goto_0
    return-void

    .line 2015
    :catch_0
    move-exception v0

    .line 2016
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "AppManageServiceImpl"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public handleSyncData(Ljava/lang/String;)Z
    .locals 10

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 2299
    const-string/jumbo v1, "AppManageServiceImpl"

    const-string/jumbo v2, "handleSyncData"

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/logging/LogCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2300
    invoke-static {p1}, Lcom/alipay/mobile/appstoreapp/util/SyncDataHelper;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    .line 2301
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move v1, v4

    .line 2376
    :goto_0
    return v1

    .line 2305
    :cond_1
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2306
    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDao;->getDao()Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDao;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDao;->saveOrUpdateAppEntitys(Ljava/util/List;)V

    .line 2308
    iget-object v5, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->a:Ljava/util/Map;

    monitor-enter v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2309
    :try_start_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_3

    .line 2308
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2368
    :try_start_2
    new-instance v1, Ljava/util/Observable;

    invoke-direct {v1}, Ljava/util/Observable;-><init>()V

    new-instance v2, Lcom/alipay/mobile/framework/service/ext/openplatform/MemoryAppsChangeNotify;

    .line 2369
    const/4 v5, 0x1

    .line 2370
    const-string/jumbo v6, "indexStage"

    invoke-direct {v2, v5, v6}, Lcom/alipay/mobile/framework/service/ext/openplatform/MemoryAppsChangeNotify;-><init>(ILjava/lang/String;)V

    .line 2368
    invoke-direct {p0, v1, v2}, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->a(Ljava/util/Observable;Ljava/lang/Object;)V

    .line 2371
    const-string/jumbo v1, "AppManageServiceImpl"

    const-string/jumbo v2, "handleSyncData sucess!"

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/logging/LogCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move v1, v3

    .line 2372
    goto :goto_0

    .line 2309
    :cond_3
    :try_start_3
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    move-object v2, v0

    .line 2310
    iget-object v1, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->a:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getAppId()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 2311
    iget-object v1, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->a:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getAppId()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    .line 2313
    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getInstallerType()Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;

    move-result-object v7

    if-eqz v7, :cond_5

    .line 2315
    invoke-virtual {v2}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getInstallerType()Ljava/lang/String;

    move-result-object v7

    .line 2314
    invoke-static {v7}, Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;->getEnum(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;

    move-result-object v7

    .line 2316
    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getInstallerType()Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;

    move-result-object v8

    .line 2314
    if-eq v7, v8, :cond_5

    .line 2317
    invoke-static {v2}, Lcom/alipay/mobile/framework/service/ext/openplatform/AppFactory;->createApp(Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;)Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    move-result-object v7

    .line 2318
    if-eqz v7, :cond_4

    .line 2319
    invoke-virtual {v7, p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->addObserver(Ljava/util/Observer;)V

    .line 2320
    iget-object v8, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->a:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v8, v2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2323
    invoke-static {v1, v7}, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->a(Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;)V

    .line 2325
    new-instance v1, Lcom/alipay/mobile/framework/service/ext/openplatform/AppStatusChangeNotify;

    .line 2326
    const/4 v2, 0x1

    .line 2327
    invoke-direct {v1, v2, v7}, Lcom/alipay/mobile/framework/service/ext/openplatform/AppStatusChangeNotify;-><init>(ILcom/alipay/mobile/framework/service/ext/openplatform/app/App;)V

    .line 2325
    invoke-direct {p0, v7, v1}, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->a(Ljava/util/Observable;Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 2308
    :catchall_0
    move-exception v1

    :try_start_4
    monitor-exit v5

    throw v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 2373
    :catch_0
    move-exception v1

    .line 2374
    const-string/jumbo v2, "AppManageServiceImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "handleSyncData error: "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v4

    .line 2376
    goto/16 :goto_0

    .line 2329
    :cond_4
    :try_start_5
    iget-object v1, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->a:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 2333
    :cond_5
    invoke-static {v1, v2}, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->a(Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;)V

    .line 2334
    invoke-virtual {v2}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getVersion()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppInfo()Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    move-result-object v8

    .line 2335
    invoke-virtual {v8}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getVersion()Ljava/lang/String;

    move-result-object v8

    .line 2334
    invoke-static {v7, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 2336
    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppInfo()Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    move-result-object v7

    invoke-virtual {v7}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getPkgPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setPkgPath(Ljava/lang/String;)V

    .line 2338
    :cond_6
    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppInfo()Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    move-result-object v7

    invoke-virtual {v7}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getPkgVersion()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setPkgVersion(Ljava/lang/String;)V

    .line 2339
    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppInfo()Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    move-result-object v7

    invoke-virtual {v7}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getLocalIcon()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setLocalIcon(Ljava/lang/String;)V

    .line 2340
    invoke-virtual {v1, v2}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->setAppInfo(Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;)V

    goto/16 :goto_1

    .line 2343
    :cond_7
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v7, "AppManageServiceImpl"

    .line 2344
    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "createapp:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getAppId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 2343
    invoke-interface {v1, v7, v8}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 2345
    invoke-static {v2}, Lcom/alipay/mobile/framework/service/ext/openplatform/AppFactory;->createApp(Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;)Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    move-result-object v1

    .line 2346
    if-eqz v1, :cond_2

    .line 2347
    iget-object v7, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->a:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppId()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2348
    invoke-virtual {v1, p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->addObserver(Ljava/util/Observer;)V

    .line 2350
    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppInfo()Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    move-result-object v7

    .line 2351
    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setNeedShowNewFlag(Z)V

    .line 2352
    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDao;->getDao()Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDao;

    move-result-object v8

    .line 2353
    invoke-virtual {v7}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getAppId()Ljava/lang/String;

    move-result-object v7

    .line 2352
    invoke-virtual {v8, v7}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDao;->getAppByAppId(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    move-result-object v7

    .line 2354
    if-eqz v7, :cond_2

    .line 2355
    invoke-virtual {v2}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getVersion()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getVersion()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 2356
    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppInfo()Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    move-result-object v7

    invoke-virtual {v7}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getPkgPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setPkgPath(Ljava/lang/String;)V

    .line 2358
    :cond_8
    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppInfo()Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    move-result-object v7

    .line 2359
    invoke-virtual {v7}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getPkgVersion()Ljava/lang/String;

    move-result-object v7

    .line 2358
    invoke-virtual {v2, v7}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setPkgVersion(Ljava/lang/String;)V

    .line 2360
    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppInfo()Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getLocalIcon()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setLocalIcon(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_1
.end method

.method public initAndSyncApps()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 196
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "AppManageServiceImpl"

    const-string/jumbo v2, "initAndSyncApps"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->initConfig()V

    .line 200
    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;->getInstance()Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;->isFirstLoginThisVersion()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 201
    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;->getInstance()Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;->setNeedFetchApps(Z)V

    .line 202
    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;->getInstance()Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;->setLoginVersion()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 208
    :cond_0
    :goto_0
    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;->getInstance()Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;->setNeedFetchApps(Z)V

    .line 212
    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->o:Z

    .line 213
    invoke-direct {p0}, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->e()V

    .line 214
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->reportUserRank(Z)Z

    .line 215
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->h:Ljava/lang/Boolean;

    .line 216
    invoke-direct {p0}, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->f()Ljava/util/List;

    .line 217
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->h:Ljava/lang/Boolean;

    .line 218
    invoke-direct {p0}, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->d()V

    .line 219
    invoke-virtual {p0}, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->autoUpdateApps()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 226
    :goto_1
    iput-boolean v4, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->s:Z

    .line 227
    return-void

    .line 204
    :catch_0
    move-exception v0

    .line 205
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "AppManageServiceImpl"

    const-string/jumbo v3, "initConfig failed"

    invoke-interface {v1, v2, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 220
    :catch_1
    move-exception v0

    .line 221
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->h:Ljava/lang/Boolean;

    .line 222
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 223
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "AppManageServiceImpl"

    const-string/jumbo v3, "sync app failed"

    invoke-interface {v1, v2, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public declared-synchronized initConfig()V
    .locals 8

    .prologue
    .line 270
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;->getInstance()Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;->isFirstTime()Z

    move-result v0

    .line 271
    if-nez v0, :cond_0

    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDao;->getDao()Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDao;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 272
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "AppManageServiceImpl"

    const-string/jumbo v2, "initConfig for first time"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 274
    :try_start_1
    invoke-static {}, Lcom/alipay/mobile/common/info/DeviceInfo;->getInstance()Lcom/alipay/mobile/common/info/DeviceInfo;

    move-result-object v0

    .line 275
    const-string/jumbo v1, "downloads"

    .line 274
    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/info/DeviceInfo;->getExternalStoragePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 276
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 277
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 278
    invoke-direct {p0, v1}, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->a(Ljava/io/File;)V

    .line 280
    :cond_1
    invoke-direct {p0}, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->g()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 284
    :goto_0
    :try_start_2
    const-string/jumbo v0, "AppManageServiceImpl"

    const-string/jumbo v1, "initPreInstallAppInfo"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v6, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDao;

    invoke-direct {v6}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDao;-><init>()V

    invoke-virtual {v6}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDao;->getAppEntities()Ljava/util/List;

    move-result-object v7

    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDao;->getDao()Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDao;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDao;->updatePreinstallApps(Ljava/util/List;)V

    invoke-virtual {v6}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDao;->getHomeDisplayApps()Ljava/util/List;

    move-result-object v5

    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->getDao()Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;

    move-result-object v0

    const-string/jumbo v1, "-1"

    const-string/jumbo v2, "firstScreen"

    const-string/jumbo v3, "indexStage"

    const/4 v4, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->saveOrUpdateStage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;)V

    invoke-virtual {v6}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDao;->getMoreDisplayApps()Ljava/util/List;

    move-result-object v5

    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->getDao()Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;

    move-result-object v0

    const-string/jumbo v1, "-1"

    const-string/jumbo v2, "secondScreen"

    const-string/jumbo v3, "indexStage"

    const/4 v4, 0x2

    invoke-virtual/range {v0 .. v5}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->saveOrUpdateStage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;)V

    invoke-virtual {v6}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDao;->getGroupStagesHomeApps()Ljava/util/List;

    move-result-object v5

    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->getDao()Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;

    move-result-object v0

    const-string/jumbo v1, "-1"

    const-string/jumbo v2, "groupHome"

    const-string/jumbo v3, "groupStage"

    const/4 v4, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->saveOrUpdateStage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;)V

    invoke-virtual {v6}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDao;->getContactDisplayApps()Ljava/util/List;

    move-result-object v5

    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->getDao()Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;

    move-result-object v0

    const-string/jumbo v1, "-1"

    const-string/jumbo v2, "contactA"

    const-string/jumbo v3, "contactStage"

    const/4 v4, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->saveOrUpdateStage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;)V

    invoke-virtual {v6}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDao;->getUserStages1Apps()Ljava/util/List;

    move-result-object v5

    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->getDao()Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;

    move-result-object v0

    const-string/jumbo v1, "-1"

    const-string/jumbo v2, "userInfo1"

    const-string/jumbo v3, "userInfo"

    const/4 v4, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->saveOrUpdateStage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;)V

    invoke-virtual {v6}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDao;->getUserStages2Apps()Ljava/util/List;

    move-result-object v5

    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->getDao()Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;

    move-result-object v0

    const-string/jumbo v1, "-1"

    const-string/jumbo v2, "userInfo2"

    const-string/jumbo v3, "userInfo"

    const/4 v4, 0x2

    invoke-virtual/range {v0 .. v5}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->saveOrUpdateStage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;)V

    invoke-virtual {v6}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDao;->getUserStages3Apps()Ljava/util/List;

    move-result-object v5

    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->getDao()Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;

    move-result-object v0

    const-string/jumbo v1, "-1"

    const-string/jumbo v2, "userInfo3"

    const-string/jumbo v3, "userInfo"

    const/4 v4, 0x3

    invoke-virtual/range {v0 .. v5}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->saveOrUpdateStage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;)V

    invoke-virtual {v6}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDao;->getUserConfig1Apps()Ljava/util/List;

    move-result-object v5

    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->getDao()Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;

    move-result-object v0

    const-string/jumbo v1, "-1"

    const-string/jumbo v2, "userConfig1"

    const-string/jumbo v3, "userConfig"

    const/4 v4, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->saveOrUpdateStage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;)V

    invoke-virtual {v6}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDao;->getUserConfig2Apps()Ljava/util/List;

    move-result-object v5

    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->getDao()Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;

    move-result-object v0

    const-string/jumbo v1, "-1"

    const-string/jumbo v2, "userConfig2"

    const-string/jumbo v3, "userConfig"

    const/4 v4, 0x2

    invoke-virtual/range {v0 .. v5}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->saveOrUpdateStage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;)V

    invoke-virtual {v6}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDao;->getContactBApps()Ljava/util/List;

    move-result-object v5

    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->getDao()Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;

    move-result-object v0

    const-string/jumbo v1, "-1"

    const-string/jumbo v2, "contactB"

    const-string/jumbo v3, "contactGroup"

    const/4 v4, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->saveOrUpdateStage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;)V

    invoke-virtual {v6}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDao;->getTopStageApps()Ljava/util/List;

    move-result-object v5

    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->getDao()Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;

    move-result-object v0

    const-string/jumbo v1, "-1"

    const-string/jumbo v2, "topAppSubStage1"

    const-string/jumbo v3, "topAppStage"

    const/4 v4, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->saveOrUpdateStage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;)V

    invoke-virtual {v6}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDao;->getSelectPanelStageApps()Ljava/util/List;

    move-result-object v5

    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->getDao()Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;

    move-result-object v0

    const-string/jumbo v1, "-1"

    const-string/jumbo v2, "SelectPanel"

    const-string/jumbo v3, "PublicPlatform"

    const/4 v4, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->saveOrUpdateStage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;)V

    invoke-direct {p0, v7}, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->b(Ljava/util/List;)V

    new-instance v0, Ljava/util/Observable;

    invoke-direct {v0}, Ljava/util/Observable;-><init>()V

    new-instance v1, Lcom/alipay/mobile/framework/service/ext/openplatform/MemoryAppsChangeNotify;

    const/4 v2, 0x1

    const-string/jumbo v3, "indexStage"

    invoke-direct {v1, v2, v3}, Lcom/alipay/mobile/framework/service/ext/openplatform/MemoryAppsChangeNotify;-><init>(ILjava/lang/String;)V

    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->a(Ljava/util/Observable;Ljava/lang/Object;)V

    .line 285
    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;->getInstance()Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;->setFirstTime()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 287
    :cond_2
    monitor-exit p0

    return-void

    .line 281
    :catch_0
    move-exception v0

    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 270
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public installApplication(Ljava/lang/String;Lcom/alipay/mobile/framework/app/IApplicationInstaller$IApplicationInstallCallback;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1593
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "AppManageServiceImpl"

    .line 1594
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "installApplication, appid:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",apps contains:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->a:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1593
    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1596
    iget-object v1, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->a:Ljava/util/Map;

    monitor-enter v1

    .line 1597
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1598
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    .line 1596
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1610
    if-nez v0, :cond_3

    .line 1611
    invoke-static {}, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->h()V

    .line 1612
    invoke-interface {p2, v5}, Lcom/alipay/mobile/framework/app/IApplicationInstaller$IApplicationInstallCallback;->installed(Z)V

    .line 1708
    :cond_0
    :goto_1
    return-void

    .line 1600
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDao;->getDao()Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDao;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDao;->getAppByAppId(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    move-result-object v0

    .line 1601
    if-eqz v0, :cond_2

    .line 1602
    invoke-static {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/AppFactory;->createApp(Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;)Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    move-result-object v0

    .line 1603
    invoke-virtual {v0, p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->addObserver(Ljava/util/Observer;)V

    .line 1604
    iget-object v2, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->a:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1596
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 1606
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 1615
    :cond_3
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    .line 1616
    const-string/jumbo v2, "AppManageServiceImpl"

    .line 1617
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "app isavailable:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->isAvailable()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ",pkgpath:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1618
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppInfo()Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getPkgPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1617
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1615
    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1619
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->isAvailable()Z

    move-result v1

    if-nez v1, :cond_7

    .line 1621
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getInstallerType()Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;

    move-result-object v1

    sget-object v2, Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;->H5App:Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;

    if-ne v1, v2, :cond_4

    .line 1622
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    .line 1623
    const-string/jumbo v2, "AppManageServiceImpl"

    .line 1624
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "app isAvailable false, goto h5 fallback; appId = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1622
    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1625
    invoke-direct {p0, v0, p2}, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->a(Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;Lcom/alipay/mobile/framework/app/IApplicationInstaller$IApplicationInstallCallback;)V

    .line 1626
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->isDownloading()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->isPkgAvailable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1628
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    .line 1630
    const-string/jumbo v2, "AppManageServiceImpl"

    .line 1631
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "app isAvailable false, goto h5 fallback and start to downloadApp; appId = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1632
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1631
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1629
    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1633
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/alipay/mobile/appstoreapp/manager/a;

    invoke-direct {v2, p0, v0}, Lcom/alipay/mobile/appstoreapp/manager/a;-><init>(Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1638
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto/16 :goto_1

    .line 1642
    :cond_4
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->isDownloading()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1643
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "AppManageServiceImpl"

    const-string/jumbo v2, "isDownloading"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1644
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1645
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    .line 1646
    sget v2, Lcom/alipay/mobile/openplatform/R$string;->q:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1645
    invoke-interface {v1, v0, v5}, Lcom/alipay/mobile/framework/MicroApplicationContext;->Toast(Ljava/lang/String;I)V

    .line 1648
    invoke-interface {p2, v5}, Lcom/alipay/mobile/framework/app/IApplicationInstaller$IApplicationInstallCallback;->installed(Z)V

    goto/16 :goto_1

    .line 1650
    :cond_5
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->matchLocalDownloadedPackage()Z

    move-result v1

    if-nez v1, :cond_7

    .line 1651
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getDownloadUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 1653
    new-instance v1, Lcom/alipay/mobile/appstoreapp/manager/b;

    invoke-direct {v1, p0, v0, p2}, Lcom/alipay/mobile/appstoreapp/manager/b;-><init>(Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;Lcom/alipay/mobile/framework/app/IApplicationInstaller$IApplicationInstallCallback;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->downloadApp(Lcom/alipay/mobile/framework/service/ext/download/DownloadCallback;)V

    goto/16 :goto_1

    .line 1702
    :cond_6
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->isPreInstall()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1703
    :cond_7
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "AppManageServiceImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "installApp, isInstallingApp:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->m:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->m:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {p2, v5}, Lcom/alipay/mobile/framework/app/IApplicationInstaller$IApplicationInstallCallback;->installed(Z)V

    goto/16 :goto_1

    :cond_8
    new-instance v1, Lcom/alipay/mobile/appstoreapp/manager/c;

    invoke-direct {v1, p0, v0, p2}, Lcom/alipay/mobile/appstoreapp/manager/c;-><init>(Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;Lcom/alipay/mobile/framework/app/IApplicationInstaller$IApplicationInstallCallback;)V

    invoke-static {v1}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    goto/16 :goto_1
.end method

.method public isAppAvailableById(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 692
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->getAppById(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    move-result-object v0

    .line 693
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 694
    const/4 v0, 0x1

    .line 695
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAppInstalledById(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 684
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->getAppById(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    move-result-object v0

    .line 685
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->isInstalled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 686
    const/4 v0, 0x1

    .line 687
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFetchingHomeUrgentApps()Z
    .locals 1

    .prologue
    .line 600
    iget-boolean v0, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->s:Z

    if-nez v0, :cond_0

    .line 601
    const/4 v0, 0x1

    .line 603
    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->p:Z

    goto :goto_0
.end method

.method public isStrategicTemplate()Z
    .locals 1

    .prologue
    .line 1284
    iget-boolean v0, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->j:Z

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 152
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "AppManageServiceImpl"

    const-string/jumbo v2, "initOpenPlatformPreFlag"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;->getInstance()Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;->isPreOpen()Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->c:Z

    .line 153
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 154
    const-string/jumbo v1, "com.alipay.mobile.language.CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 155
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v1

    .line 156
    invoke-virtual {v1}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Landroid/app/Application;

    move-result-object v1

    .line 157
    iget-object v2, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->w:Lcom/alipay/mobile/appstoreapp/manager/LanguageSettingReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Application;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 158
    return-void
.end method

.method protected onDestroy(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 764
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    .line 765
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    .line 764
    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    .line 766
    iget-object v1, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->w:Lcom/alipay/mobile/appstoreapp/manager/LanguageSettingReceiver;

    .line 765
    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 767
    return-void
.end method

.method public reportUserRank(Z)Z
    .locals 3

    .prologue
    .line 413
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 414
    const-string/jumbo v2, "firstScreen"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "secondScreen"

    aput-object v2, v0, v1

    .line 413
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->a(Ljava/util/List;Z)Z

    move-result v0

    return v0
.end method

.method public requestUser()V
    .locals 0

    .prologue
    .line 703
    return-void
.end method

.method public requestUser(Z)V
    .locals 3

    .prologue
    .line 712
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->s:Z

    .line 713
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 714
    const-class v1, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    .line 715
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->isLogin()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->getUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 716
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->getUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->g:Ljava/lang/String;

    .line 717
    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDao;->getDao()Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDao;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDao;->setUserId(Ljava/lang/String;)V

    .line 718
    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;->getInstance()Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;->setLastUser(Ljava/lang/String;)V

    .line 719
    if-eqz p1, :cond_0

    .line 720
    iget-object v1, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->a:Ljava/util/Map;

    monitor-enter v1

    .line 721
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    .line 722
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 720
    monitor-exit v1

    .line 728
    :cond_0
    return-void

    .line 722
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    .line 723
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->clearStage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 720
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public declared-synchronized saveAppsInStage(Ljava/util/List;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1413
    monitor-enter p0

    if-eqz p1, :cond_1

    .line 1414
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1415
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1427
    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->getDao()Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;

    move-result-object v0

    iget-object v2, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->g:Ljava/lang/String;

    invoke-virtual {v0, v2, p2, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->saveOrderInStage(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 1428
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->i:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1430
    :cond_1
    monitor-exit p0

    return-void

    .line 1415
    :cond_2
    :try_start_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    .line 1416
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppId()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "20000081"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1417
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppId()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "10000111"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1418
    invoke-virtual {v0, p2}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppRankForStage(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/openplatform/app/AppRank;

    move-result-object v3

    .line 1421
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v4

    .line 1422
    const-string/jumbo v5, "AppManageServiceImpl"

    .line 1423
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "saveAppsInStage, appid:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v6, ",apprank is null:"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1424
    if-nez v3, :cond_3

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1423
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1421
    invoke-interface {v4, v5, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1425
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1413
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1424
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public syncOneAppInfo(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1153
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;

    invoke-direct {v3}, Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;-><init>()V

    iput-object p1, v3, Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;->appId:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/alipay/mobile/appstoreapp/util/GeneralRequestBuilder;->a()Lcom/alipay/mobileapp/common/service/facade/app/facade/QueryMyAppReq;

    move-result-object v3

    iput-object v2, v3, Lcom/alipay/mobileapp/common/service/facade/app/facade/QueryMyAppReq;->appList:Ljava/util/List;

    .line 1154
    iget-boolean v2, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->c:Z

    iput-boolean v2, v3, Lcom/alipay/mobileapp/common/service/facade/app/facade/QueryMyAppReq;->pre:Z

    .line 1155
    invoke-direct {p0}, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->b()Lcom/alipay/mobileapp/common/service/facade/app/facade/MobileAppInfoServiceFacade;

    move-result-object v2

    invoke-interface {v2, v3}, Lcom/alipay/mobileapp/common/service/facade/app/facade/MobileAppInfoServiceFacade;->queryMobileAppInfoByAppList(Lcom/alipay/mobileapp/common/service/facade/app/facade/QueryMyAppReq;)Lcom/alipay/mobileapp/common/service/facade/app/facade/QueryMyAppRes;

    move-result-object v2

    .line 1156
    iget v3, v2, Lcom/alipay/mobileapp/common/service/facade/app/facade/QueryMyAppRes;->resultStatus:I

    const/16 v4, 0x3e8

    if-eq v3, v4, :cond_2

    :cond_0
    :goto_0
    if-eqz v0, :cond_4

    .line 1157
    iget-object v0, v2, Lcom/alipay/mobileapp/common/service/facade/app/facade/QueryMyAppRes;->appList:Ljava/util/List;

    invoke-static {v0}, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->f(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 1158
    invoke-static {v0}, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->d(Ljava/util/List;)V

    .line 1159
    invoke-direct {p0, v0}, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->a(Ljava/util/List;)V

    .line 1160
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1165
    const/4 v0, 0x0

    :goto_1
    return-object v0

    .line 1156
    :cond_2
    iget-object v3, v2, Lcom/alipay/mobileapp/common/service/facade/app/facade/QueryMyAppRes;->appList:Ljava/util/List;

    if-eqz v3, :cond_0

    iget-object v3, v2, Lcom/alipay/mobileapp/common/service/facade/app/facade/QueryMyAppRes;->appList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_0

    move v0, v1

    goto :goto_0

    .line 1160
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;

    .line 1161
    iget-object v2, v0, Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;->appId:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->a:Ljava/util/Map;

    iget-object v3, v0, Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;->appId:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1162
    iget-object v1, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->a:Ljava/util/Map;

    iget-object v0, v0, Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;->appId:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    goto :goto_1

    .line 1168
    :cond_4
    new-instance v0, Lcom/alipay/mobile/framework/service/ext/openplatform/AppStoreException;

    iget-object v2, v2, Lcom/alipay/mobileapp/common/service/facade/app/facade/QueryMyAppRes;->memo:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/framework/service/ext/openplatform/AppStoreException;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 776
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->a(Ljava/util/Observable;Ljava/lang/Object;)V

    .line 777
    return-void
.end method
