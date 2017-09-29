.class public Lcom/alipay/mobile/security/gesture/service/c;
.super Ljava/lang/Object;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# static fields
.field public static a:Ljava/lang/String;

.field private static volatile d:Lcom/alipay/mobile/security/gesture/service/c;


# instance fields
.field private b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private c:Ljava/util/concurrent/LinkedBlockingDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingDeque",
            "<",
            "Lcom/alipay/mobile/security/gesture/service/f;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/String;

.field private final g:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "ooooxxxx"

    sput-object v0, Lcom/alipay/mobile/security/gesture/service/c;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/alipay/mobile/security/gesture/service/c;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/security/gesture/service/c;->c:Ljava/util/concurrent/LinkedBlockingDeque;

    const-string/jumbo v0, "show_color_window"

    iput-object v0, p0, Lcom/alipay/mobile/security/gesture/service/c;->e:Ljava/lang/String;

    const-string/jumbo v0, "lastColorTimeInfo"

    iput-object v0, p0, Lcom/alipay/mobile/security/gesture/service/c;->f:Ljava/lang/String;

    const-wide/32 v0, 0x5265c00

    iput-wide v0, p0, Lcom/alipay/mobile/security/gesture/service/c;->g:J

    return-void
.end method

.method public static a()Lcom/alipay/mobile/security/gesture/service/c;
    .locals 2

    sget-object v0, Lcom/alipay/mobile/security/gesture/service/c;->d:Lcom/alipay/mobile/security/gesture/service/c;

    if-nez v0, :cond_1

    const-class v1, Lcom/alipay/mobile/security/gesture/service/c;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/mobile/security/gesture/service/c;->d:Lcom/alipay/mobile/security/gesture/service/c;

    if-nez v0, :cond_0

    new-instance v0, Lcom/alipay/mobile/security/gesture/service/c;

    invoke-direct {v0}, Lcom/alipay/mobile/security/gesture/service/c;-><init>()V

    sput-object v0, Lcom/alipay/mobile/security/gesture/service/c;->d:Lcom/alipay/mobile/security/gesture/service/c;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/alipay/mobile/security/gesture/service/c;->d:Lcom/alipay/mobile/security/gesture/service/c;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a(I)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/service/c;->c:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingDeque;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/security/gesture/service/f;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/security/gesture/service/f;->a(I)V

    goto :goto_0
.end method

.method private static a(Lcom/alipay/mobile/security/gesture/data/UserGesture;)V
    .locals 4

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/data/UserGesture;->userGestureList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/security/gesture/data/UserGestureData;

    new-instance v2, Lcom/alipay/mobile/security/gesture/GestureConfigDBItem;

    invoke-direct {v2}, Lcom/alipay/mobile/security/gesture/GestureConfigDBItem;-><init>()V

    iget-object v3, v0, Lcom/alipay/mobile/security/gesture/data/UserGestureData;->userId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/security/gesture/GestureConfigDBItem;->setUdrtif(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/security/gesture/GestureConfigDBItem;->setData(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/security/gesture/data/GestureConfigHelper;->getInstance()Lcom/alipay/mobile/security/gesture/data/GestureConfigHelper;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/security/gesture/data/GestureConfigHelper;->addOrUpdateUserGestureConfig(Lcom/alipay/mobile/security/gesture/GestureConfigDBItem;)Z

    goto :goto_0
.end method

.method static synthetic a(Lcom/alipay/mobile/security/gesture/service/c;)V
    .locals 8

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    const-string/jumbo v1, "show_color_window"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/framework/AlipayApplication;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string/jumbo v0, "lastColorTimeInfo"

    const-wide/16 v3, 0x0

    invoke-interface {v2, v0, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long v0, v3, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/32 v3, 0x5265c00

    cmp-long v0, v0, v3

    if-gez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->isLogin()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/alipay/mobile/security/gesture/service/c;->c()Lcom/alipay/mobile/security/gesture/data/UserGestureData;

    move-result-object v3

    if-nez v3, :cond_2

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/alipay/mobile/security/gesture/service/c;->a(I)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/alipay/mobile/security/gesture/data/GestureConfigHelper;->getInstance()Lcom/alipay/mobile/security/gesture/data/GestureConfigHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/security/gesture/data/GestureConfigHelper;->getUsersConfig()Lcom/alipay/mobile/security/gesture/data/UserGesture;

    move-result-object v0

    if-nez v0, :cond_8

    invoke-static {}, Lcom/alipay/mobile/security/gesture/service/GestureConfigImpl;->genDefault()Lcom/alipay/mobile/security/gesture/data/UserGestureData;

    move-result-object v1

    new-instance v0, Lcom/alipay/mobile/security/gesture/data/UserGesture;

    invoke-direct {v0}, Lcom/alipay/mobile/security/gesture/data/UserGesture;-><init>()V

    iget-object v4, v0, Lcom/alipay/mobile/security/gesture/data/UserGesture;->userGestureList:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v1, v0

    :goto_1
    if-eqz v3, :cond_5

    if-eqz v1, :cond_5

    sget-object v0, Lcom/alipay/mobile/security/gesture/service/c;->a:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/security/gesture/data/UserGesture;->getUserGestureData(Ljava/lang/String;)Lcom/alipay/mobile/security/gesture/data/UserGestureData;

    move-result-object v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/alipay/mobile/security/gesture/service/GestureConfigImpl;->genDefault()Lcom/alipay/mobile/security/gesture/data/UserGestureData;

    move-result-object v0

    iget-object v4, v1, Lcom/alipay/mobile/security/gesture/data/UserGesture;->userGestureList:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    iget-object v0, v3, Lcom/alipay/mobile/security/gesture/data/UserGestureData;->modeList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_6

    :cond_5
    invoke-static {v1}, Lcom/alipay/mobile/security/gesture/service/c;->a(Lcom/alipay/mobile/security/gesture/data/UserGesture;)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/alipay/mobile/security/gesture/service/c;->a(I)V

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "lastColorTimeInfo"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    :cond_6
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    iget-object v0, v1, Lcom/alipay/mobile/security/gesture/data/UserGesture;->userGestureList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_7
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/security/gesture/data/UserGestureData;

    iget-object v6, v0, Lcom/alipay/mobile/security/gesture/data/UserGestureData;->userId:Ljava/lang/String;

    sget-object v7, Lcom/alipay/mobile/security/gesture/service/c;->a:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "merge default "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Lcom/alipay/mobile/security/gesture/service/c;->a:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v3, Lcom/alipay/mobile/security/gesture/data/UserGestureData;->modeList:Ljava/util/List;

    if-eqz v5, :cond_4

    iget-object v5, v3, Lcom/alipay/mobile/security/gesture/data/UserGestureData;->modeList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, v0, Lcom/alipay/mobile/security/gesture/data/UserGestureData;->modeList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    iget-object v0, v0, Lcom/alipay/mobile/security/gesture/data/UserGestureData;->modeList:Ljava/util/List;

    iget-object v5, v3, Lcom/alipay/mobile/security/gesture/data/UserGestureData;->modeList:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    :cond_8
    move-object v1, v0

    goto/16 :goto_1
.end method

.method private static c()Lcom/alipay/mobile/security/gesture/data/UserGestureData;
    .locals 12

    const/4 v11, 0x2

    const/4 v5, 0x0

    const/4 v2, 0x0

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;

    new-array v6, v11, [Ljava/lang/String;

    const-string/jumbo v1, "fastStage2"

    aput-object v1, v6, v5

    const/4 v1, 0x1

    const-string/jumbo v3, "normalStage2"

    aput-object v3, v6, v1

    if-nez v0, :cond_0

    move-object v0, v2

    :goto_0
    return-object v0

    :cond_0
    new-instance v3, Lcom/alipay/mobile/security/gesture/data/UserGestureData;

    invoke-direct {v3}, Lcom/alipay/mobile/security/gesture/data/UserGestureData;-><init>()V

    move v4, v5

    :goto_1
    if-lt v4, v11, :cond_1

    move-object v0, v3

    goto :goto_0

    :cond_1
    aget-object v1, v6, v4

    invoke-virtual {v0, v1, v5}, Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;->getStageFromLocalWithDisplay(Ljava/lang/String;Z)Lcom/alipay/mobile/framework/service/ext/openplatform/app/Stage;

    move-result-object v1

    sget-object v7, Lcom/alipay/mobile/security/gesture/service/c;->a:Ljava/lang/String;

    iput-object v7, v3, Lcom/alipay/mobile/security/gesture/data/UserGestureData;->userId:Ljava/lang/String;

    if-nez v1, :cond_2

    move-object v0, v2

    goto :goto_0

    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "parseStageData stagecode: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/Stage;->getStageCode()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/Stage;->getApps()Ljava/util/List;

    move-result-object v7

    if-nez v7, :cond_3

    move-object v0, v2

    goto :goto_0

    :cond_3
    new-instance v8, Lcom/alipay/mobile/security/gesture/data/GestureAppearModeBaseData;

    invoke-direct {v8}, Lcom/alipay/mobile/security/gesture/data/GestureAppearModeBaseData;-><init>()V

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/Stage;->getStageCode()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v8, Lcom/alipay/mobile/security/gesture/data/GestureAppearModeBaseData;->modeName:Ljava/lang/String;

    iget-object v1, v3, Lcom/alipay/mobile/security/gesture/data/UserGestureData;->modeList:Ljava/util/List;

    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "parseStageData appList count: "

    invoke-direct {v1, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_4
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, v8, Lcom/alipay/mobile/security/gesture/data/GestureAppearModeBaseData;->configItem:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_7

    move-object v0, v2

    goto :goto_0

    :cond_5
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    if-nez v1, :cond_6

    move-object v0, v2

    goto :goto_0

    :cond_6
    iget-object v9, v8, Lcom/alipay/mobile/security/gesture/data/GestureAppearModeBaseData;->modeName:Ljava/lang/String;

    invoke-virtual {v1, v9}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getStageExtProp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_4

    :try_start_0
    const-class v9, Lcom/alipay/mobile/security/gesture/data/ConfigItemData;

    invoke-static {v1, v9}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/security/gesture/data/ConfigItemData;

    iget-object v9, v8, Lcom/alipay/mobile/security/gesture/data/GestureAppearModeBaseData;->configItem:Ljava/util/List;

    invoke-interface {v9, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "parseServerData cid appId "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, v1, Lcom/alipay/mobile/security/gesture/data/ConfigItemData;->appId:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "  cid on "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v1, v1, Lcom/alipay/mobile/security/gesture/data/ConfigItemData;->on:Ljava/lang/Integer;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "parseStageData err happen"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v0, v2

    goto/16 :goto_0

    :cond_7
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto/16 :goto_1
.end method


# virtual methods
.method public final a(Lcom/alipay/mobile/security/gesture/service/f;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/service/c;->c:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingDeque;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final b(Lcom/alipay/mobile/security/gesture/service/f;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/service/c;->c:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingDeque;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final b()Z
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/service/c;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method
