.class public Lcom/alipay/android/phone/businesscommon/advertisement/impl/AdvertisementServiceImpl;
.super Lcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService;
.source "AdvertisementServiceImpl.java"


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService$IAdDataChangeCallBack;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/alipay/android/phone/businesscommon/advertisement/ActionExecutor;

.field private d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService$IAdDataChangeCallBack;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/lang/String;

.field private f:Lcom/alipay/mobile/framework/service/common/TaskScheduleService;


# direct methods
.method public constructor <init>()V
    .locals 8

    .prologue
    const/4 v5, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 57
    invoke-direct {p0}, Lcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService;-><init>()V

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/impl/AdvertisementServiceImpl;->a:Ljava/util/List;

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/impl/AdvertisementServiceImpl;->b:Ljava/util/Map;

    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/impl/AdvertisementServiceImpl;->d:Ljava/util/Map;

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/impl/AdvertisementServiceImpl;->e:Ljava/lang/String;

    .line 58
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "AdvertisementService.Construction: startTime:"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/phone/businesscommon/advertisement/h/a;->c(Ljava/lang/String;)V

    .line 60
    new-array v0, v5, [Ljava/lang/String;

    const-string/jumbo v3, "GestureVerifyActivity_"

    aput-object v3, v0, v6

    const-string/jumbo v3, "20000181"

    aput-object v3, v0, v7

    .line 61
    new-array v3, v5, [Ljava/lang/String;

    const-string/jumbo v4, "UserLoginActivity_"

    aput-object v4, v3, v6

    const-string/jumbo v4, "20000008"

    aput-object v4, v3, v7

    .line 62
    new-array v4, v5, [Ljava/lang/String;

    const-string/jumbo v5, "GestureSettingActivity"

    aput-object v5, v4, v6

    const-string/jumbo v5, "20000183"

    aput-object v5, v4, v7

    .line 63
    iget-object v5, p0, Lcom/alipay/android/phone/businesscommon/advertisement/impl/AdvertisementServiceImpl;->a:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/impl/AdvertisementServiceImpl;->a:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/impl/AdvertisementServiceImpl;->a:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    .line 68
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 69
    const-class v3, Lcom/alipay/mobile/framework/service/common/TaskScheduleService;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/TaskScheduleService;

    .line 67
    iput-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/impl/AdvertisementServiceImpl;->f:Lcom/alipay/mobile/framework/service/common/TaskScheduleService;

    .line 70
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/impl/AdvertisementServiceImpl;->f:Lcom/alipay/mobile/framework/service/common/TaskScheduleService;

    new-instance v3, Lcom/alipay/android/phone/businesscommon/advertisement/impl/n;

    invoke-direct {v3, p0}, Lcom/alipay/android/phone/businesscommon/advertisement/impl/n;-><init>(Lcom/alipay/android/phone/businesscommon/advertisement/impl/AdvertisementServiceImpl;)V

    .line 83
    const-string/jumbo v4, "AdvertisementServiceConstruction"

    .line 70
    invoke-virtual {v0, v3, v4}, Lcom/alipay/mobile/framework/service/common/TaskScheduleService;->parallelExecute(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 84
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "AdvertisementService.Construction: completeTime:"

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 86
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v5, " usedTime:"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sub-long v1, v3, v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 87
    const-string/jumbo v1, "ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 85
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/phone/businesscommon/advertisement/h/a;->c(Ljava/lang/String;)V

    .line 88
    return-void
.end method

.method private static a(Lcom/alipay/android/phone/businesscommon/advertisement/db/bean/SpaceInfoTable;Lcom/alipay/android/phone/businesscommon/advertisement/db/bean/SpaceInfoTable;)Lcom/alipay/android/phone/businesscommon/advertisement/db/bean/SpaceInfoTable;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 586
    if-nez p0, :cond_1

    .line 618
    :cond_0
    :goto_0
    return-object p1

    .line 588
    :cond_1
    if-nez p1, :cond_2

    move-object p1, p0

    .line 589
    goto :goto_0

    .line 592
    :cond_2
    invoke-virtual {p0, p1}, Lcom/alipay/android/phone/businesscommon/advertisement/db/bean/SpaceInfoTable;->compareTo(Lcom/alipay/android/phone/businesscommon/advertisement/db/bean/SpaceInfoTable;)I

    move-result v0

    .line 593
    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    .line 595
    if-gtz v0, :cond_3

    move-object p1, p0

    .line 596
    goto :goto_0

    .line 600
    :cond_3
    invoke-static {p0}, Lcom/alipay/android/phone/businesscommon/advertisement/c/a;->a(Lcom/alipay/android/phone/businesscommon/advertisement/db/bean/SpaceInfoTable;)Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;->spaceObjectList:Ljava/util/List;

    .line 599
    invoke-static {v0}, Lcom/alipay/android/phone/businesscommon/advertisement/c/a;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 602
    invoke-static {p1}, Lcom/alipay/android/phone/businesscommon/advertisement/c/a;->a(Lcom/alipay/android/phone/businesscommon/advertisement/db/bean/SpaceInfoTable;)Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;->spaceObjectList:Ljava/util/List;

    .line 601
    invoke-static {v1}, Lcom/alipay/android/phone/businesscommon/advertisement/c/a;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 603
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 606
    if-eqz v1, :cond_4

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_4
    move-object p1, p0

    .line 607
    goto :goto_0

    .line 609
    :cond_5
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectInfo;

    .line 610
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectInfo;

    .line 611
    if-eqz v0, :cond_0

    .line 613
    if-nez v1, :cond_6

    move-object p1, p0

    .line 614
    goto :goto_0

    .line 615
    :cond_6
    iget v0, v0, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectInfo;->priority:I

    iget v1, v1, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectInfo;->priority:I

    if-le v0, v1, :cond_0

    move-object p1, p0

    .line 616
    goto :goto_0
.end method

.method static synthetic a(Lcom/alipay/android/phone/businesscommon/advertisement/impl/AdvertisementServiceImpl;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/impl/AdvertisementServiceImpl;->e:Ljava/lang/String;

    return-object v0
.end method

.method private a(Landroid/app/Activity;Lcom/alipay/android/phone/businesscommon/advertisement/db/bean/SpaceInfoTable;)V
    .locals 5

    .prologue
    .line 415
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p2, :cond_1

    .line 440
    :cond_0
    :goto_0
    return-void

    .line 419
    :cond_1
    const-string/jumbo v0, "ANNOUNCEMENT"

    .line 420
    iget-object v1, p2, Lcom/alipay/android/phone/businesscommon/advertisement/db/bean/SpaceInfoTable;->multiStyle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 421
    invoke-static {}, Lcom/alipay/android/phone/businesscommon/advertisement/g/a;->a()Lcom/alipay/android/phone/businesscommon/advertisement/g/a;

    move-result-object v0

    .line 422
    invoke-virtual {p0, p1}, Lcom/alipay/android/phone/businesscommon/advertisement/impl/AdvertisementServiceImpl;->getAppId(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v1

    .line 423
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    .line 422
    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/phone/businesscommon/advertisement/g/a;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/android/phone/businesscommon/advertisement/db/bean/SpaceInfoTable;

    move-result-object v0

    .line 421
    invoke-static {v0, p2}, Lcom/alipay/android/phone/businesscommon/advertisement/impl/AdvertisementServiceImpl;->a(Lcom/alipay/android/phone/businesscommon/advertisement/db/bean/SpaceInfoTable;Lcom/alipay/android/phone/businesscommon/advertisement/db/bean/SpaceInfoTable;)Lcom/alipay/android/phone/businesscommon/advertisement/db/bean/SpaceInfoTable;

    move-result-object v0

    .line 426
    :goto_1
    invoke-static {v0}, Lcom/alipay/android/phone/businesscommon/advertisement/c/a;->a(Lcom/alipay/android/phone/businesscommon/advertisement/db/bean/SpaceInfoTable;)Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/phone/businesscommon/advertisement/c/a;->b(Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;)Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;

    move-result-object v1

    .line 427
    iget-object v0, v1, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;->spaceObjectList:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 428
    iget-object v0, v1, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;->spaceObjectList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 430
    :cond_2
    iget-object v0, p2, Lcom/alipay/android/phone/businesscommon/advertisement/db/bean/SpaceInfoTable;->spaceCode:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/alipay/android/phone/businesscommon/advertisement/impl/AdvertisementServiceImpl;->a(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    .line 433
    :cond_3
    const-string/jumbo v0, "NOTIFY"

    iget-object v2, v1, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;->multiStyle:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 434
    invoke-virtual {p0, p1}, Lcom/alipay/android/phone/businesscommon/advertisement/impl/AdvertisementServiceImpl;->getAppId(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 435
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    .line 434
    invoke-static {}, Lcom/alipay/android/phone/businesscommon/advertisement/g/a;->a()Lcom/alipay/android/phone/businesscommon/advertisement/g/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/android/phone/businesscommon/advertisement/g/a;->b()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_7

    :cond_5
    const/4 v0, 0x0

    :goto_2
    if-nez v0, :cond_0

    .line 439
    :cond_6
    new-instance v0, Lcom/alipay/android/phone/businesscommon/advertisement/impl/h;

    invoke-direct {v0, p1}, Lcom/alipay/android/phone/businesscommon/advertisement/impl/h;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, p1, v1}, Lcom/alipay/android/phone/businesscommon/advertisement/impl/h;->a(Landroid/app/Activity;Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;)V

    goto :goto_0

    .line 434
    :cond_7
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v4, "*"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    invoke-static {v2}, Lcom/alipay/mobile/common/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_8
    const/4 v0, 0x1

    goto :goto_2

    :cond_9
    move-object v0, p2

    goto :goto_1
.end method

.method private a(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 945
    .line 946
    const v0, 0x1020002

    :try_start_0
    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 945
    check-cast v0, Landroid/view/ViewGroup;

    .line 947
    invoke-virtual {v0, p2}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    .line 948
    if-eqz v1, :cond_0

    .line 949
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 950
    if-eqz v0, :cond_0

    .line 951
    new-instance v2, Lcom/alipay/android/phone/businesscommon/advertisement/impl/p;

    invoke-direct {v2, p0, v0, v1}, Lcom/alipay/android/phone/businesscommon/advertisement/impl/p;-><init>(Lcom/alipay/android/phone/businesscommon/advertisement/impl/AdvertisementServiceImpl;Landroid/view/ViewGroup;Landroid/view/View;)V

    invoke-virtual {p1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 962
    :cond_0
    :goto_0
    return-void

    .line 959
    :catch_0
    move-exception v0

    .line 960
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "removeADbySpaceCode:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/phone/businesscommon/advertisement/h/a;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 273
    if-nez p1, :cond_1

    .line 274
    const-string/jumbo v0, "addAnnuouncement: activity==null"

    invoke-static {v0}, Lcom/alipay/android/phone/businesscommon/advertisement/h/a;->a(Ljava/lang/String;)V

    .line 319
    :cond_0
    :goto_0
    return-void

    .line 278
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/impl/AdvertisementServiceImpl;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    .line 285
    invoke-static {}, Lcom/alipay/android/phone/businesscommon/advertisement/g/a;->a()Lcom/alipay/android/phone/businesscommon/advertisement/g/a;

    move-result-object v0

    .line 286
    invoke-virtual {v0, p2, p3}, Lcom/alipay/android/phone/businesscommon/advertisement/g/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 288
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 299
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/businesscommon/advertisement/db/bean/SpaceInfoTable;

    .line 301
    invoke-direct {p0, p1, v0}, Lcom/alipay/android/phone/businesscommon/advertisement/impl/AdvertisementServiceImpl;->a(Landroid/app/Activity;Lcom/alipay/android/phone/businesscommon/advertisement/db/bean/SpaceInfoTable;)V

    .line 303
    const/4 v2, 0x0

    .line 304
    new-instance v3, Lcom/alipay/android/phone/businesscommon/advertisement/impl/u;

    invoke-direct {v3, p0, p1}, Lcom/alipay/android/phone/businesscommon/advertisement/impl/u;-><init>(Lcom/alipay/android/phone/businesscommon/advertisement/impl/AdvertisementServiceImpl;Landroid/app/Activity;)V

    .line 303
    invoke-direct {p0, v0, v2, v4, v3}, Lcom/alipay/android/phone/businesscommon/advertisement/impl/AdvertisementServiceImpl;->a(Lcom/alipay/android/phone/businesscommon/advertisement/db/bean/SpaceInfoTable;Ljava/util/Map;ZLcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService$IAdGetSingleSpaceInfoCallBack;)V

    goto :goto_1

    .line 278
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 279
    aget-object v2, v0, v4

    invoke-static {v2, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 280
    const/4 v2, 0x1

    aget-object v0, v0, v2

    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0
.end method

.method private a(Lcom/alipay/android/phone/businesscommon/advertisement/db/bean/SpaceInfoTable;Ljava/util/Map;ZLcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService$IAdGetSingleSpaceInfoCallBack;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/android/phone/businesscommon/advertisement/db/bean/SpaceInfoTable;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z",
            "Lcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService$IAdGetSingleSpaceInfoCallBack;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 352
    const-string/jumbo v2, "TIMER"

    iget-object v3, p1, Lcom/alipay/android/phone/businesscommon/advertisement/db/bean/SpaceInfoTable;->updatePolicy:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 354
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 355
    iget-wide v4, p1, Lcom/alipay/android/phone/businesscommon/advertisement/db/bean/SpaceInfoTable;->reqRpcTime:J

    cmp-long v4, v2, v4

    if-lez v4, :cond_2

    .line 356
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Timer\'s Up time:"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " spaceInfo.reqRpcTime:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 357
    iget-wide v2, p1, Lcom/alipay/android/phone/businesscommon/advertisement/db/bean/SpaceInfoTable;->reqRpcTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 356
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/android/phone/businesscommon/advertisement/h/a;->b(Ljava/lang/String;)V

    .line 384
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 385
    invoke-static {}, Lcom/alipay/android/phone/businesscommon/advertisement/e/a;->a()Lcom/alipay/android/phone/businesscommon/advertisement/e/a;

    move-result-object v0

    .line 386
    iget-object v1, p1, Lcom/alipay/android/phone/businesscommon/advertisement/db/bean/SpaceInfoTable;->spaceCode:Ljava/lang/String;

    .line 387
    new-instance v2, Lcom/alipay/android/phone/businesscommon/advertisement/impl/v;

    invoke-direct {v2, p0, p4}, Lcom/alipay/android/phone/businesscommon/advertisement/impl/v;-><init>(Lcom/alipay/android/phone/businesscommon/advertisement/impl/AdvertisementServiceImpl;Lcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService$IAdGetSingleSpaceInfoCallBack;)V

    .line 385
    invoke-virtual {v0, v1, p2, p3, v2}, Lcom/alipay/android/phone/businesscommon/advertisement/e/a;->a(Ljava/lang/String;Ljava/util/Map;ZLcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService$IAdGetSpaceInfoCallBack;)V

    .line 402
    :cond_1
    :goto_1
    return-void

    :cond_2
    move v0, v1

    .line 361
    goto :goto_0

    .line 363
    :cond_3
    const-string/jumbo v2, "ALWAYS"

    iget-object v3, p1, Lcom/alipay/android/phone/businesscommon/advertisement/db/bean/SpaceInfoTable;->updatePolicy:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 366
    const-string/jumbo v2, "NEVER"

    iget-object v3, p1, Lcom/alipay/android/phone/businesscommon/advertisement/db/bean/SpaceInfoTable;->updatePolicy:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    move v0, v1

    .line 368
    goto :goto_0

    .line 370
    :cond_4
    const-string/jumbo v2, "ONCE"

    iget-object v3, p1, Lcom/alipay/android/phone/businesscommon/advertisement/db/bean/SpaceInfoTable;->updatePolicy:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 372
    iget-object v2, p1, Lcom/alipay/android/phone/businesscommon/advertisement/db/bean/SpaceInfoTable;->spaceObjectList:Ljava/lang/String;

    invoke-static {v2}, Lcom/alipay/mobile/common/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 377
    goto :goto_0

    .line 380
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "illeage spaceInfo.updatePolicy is:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 381
    iget-object v1, p1, Lcom/alipay/android/phone/businesscommon/advertisement/db/bean/SpaceInfoTable;->updatePolicy:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 380
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/phone/businesscommon/advertisement/h/a;->b(Ljava/lang/String;)V

    goto :goto_1
.end method

.method static synthetic a(Lcom/alipay/android/phone/businesscommon/advertisement/impl/AdvertisementServiceImpl;Landroid/app/Activity;Lcom/alipay/android/phone/businesscommon/advertisement/db/bean/SpaceInfoTable;)V
    .locals 0

    .prologue
    .line 413
    invoke-direct {p0, p1, p2}, Lcom/alipay/android/phone/businesscommon/advertisement/impl/AdvertisementServiceImpl;->a(Landroid/app/Activity;Lcom/alipay/android/phone/businesscommon/advertisement/db/bean/SpaceInfoTable;)V

    return-void
.end method

.method static synthetic a(Lcom/alipay/android/phone/businesscommon/advertisement/impl/AdvertisementServiceImpl;Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 943
    invoke-direct {p0, p1, p2}, Lcom/alipay/android/phone/businesscommon/advertisement/impl/AdvertisementServiceImpl;->a(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/alipay/android/phone/businesscommon/advertisement/impl/AdvertisementServiceImpl;Lcom/alipay/android/phone/businesscommon/advertisement/db/bean/SpaceInfoTable;Ljava/util/Map;ZLcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService$IAdGetSingleSpaceInfoCallBack;)V
    .locals 0

    .prologue
    .line 348
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alipay/android/phone/businesscommon/advertisement/impl/AdvertisementServiceImpl;->a(Lcom/alipay/android/phone/businesscommon/advertisement/db/bean/SpaceInfoTable;Ljava/util/Map;ZLcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService$IAdGetSingleSpaceInfoCallBack;)V

    return-void
.end method

.method static synthetic a(Lcom/alipay/android/phone/businesscommon/advertisement/impl/AdvertisementServiceImpl;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/alipay/android/phone/businesscommon/advertisement/impl/AdvertisementServiceImpl;->e:Ljava/lang/String;

    return-void
.end method

.method private b(Landroid/app/Activity;Lcom/alipay/android/phone/businesscommon/advertisement/db/bean/SpaceInfoTable;)V
    .locals 3

    .prologue
    .line 624
    invoke-static {}, Lcom/alipay/android/phone/businesscommon/advertisement/g/a;->a()Lcom/alipay/android/phone/businesscommon/advertisement/g/a;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/alipay/android/phone/businesscommon/advertisement/g/a;->a(Lcom/alipay/android/phone/businesscommon/advertisement/db/bean/SpaceInfoTable;)V

    .line 626
    invoke-static {}, Lcom/alipay/android/phone/businesscommon/advertisement/g/a;->a()Lcom/alipay/android/phone/businesscommon/advertisement/g/a;

    move-result-object v0

    .line 627
    iget-object v1, p2, Lcom/alipay/android/phone/businesscommon/advertisement/db/bean/SpaceInfoTable;->appId:Ljava/lang/String;

    iget-object v2, p2, Lcom/alipay/android/phone/businesscommon/advertisement/db/bean/SpaceInfoTable;->viewId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/phone/businesscommon/advertisement/g/a;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/android/phone/businesscommon/advertisement/db/bean/SpaceInfoTable;

    move-result-object v0

    .line 629
    invoke-static {p2, v0}, Lcom/alipay/android/phone/businesscommon/advertisement/impl/AdvertisementServiceImpl;->a(Lcom/alipay/android/phone/businesscommon/advertisement/db/bean/SpaceInfoTable;Lcom/alipay/android/phone/businesscommon/advertisement/db/bean/SpaceInfoTable;)Lcom/alipay/android/phone/businesscommon/advertisement/db/bean/SpaceInfoTable;

    move-result-object v0

    .line 630
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 632
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "addAnnouncement failed!winner spaceinfo is : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/phone/businesscommon/advertisement/h/a;->b(Ljava/lang/String;)V

    .line 637
    :goto_0
    return-void

    .line 636
    :cond_0
    invoke-direct {p0, p1, v0}, Lcom/alipay/android/phone/businesscommon/advertisement/impl/AdvertisementServiceImpl;->a(Landroid/app/Activity;Lcom/alipay/android/phone/businesscommon/advertisement/db/bean/SpaceInfoTable;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/alipay/android/phone/businesscommon/advertisement/impl/AdvertisementServiceImpl;)V
    .locals 3

    .prologue
    .line 90
    const-string/jumbo v0, "\u6ce8\u518cLoginMsg\u6d88\u606f\u670d\u52a1"

    invoke-static {v0}, Lcom/alipay/android/phone/businesscommon/advertisement/h/a;->c(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v2, "com.alipay.security.login"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v2, Lcom/alipay/android/phone/businesscommon/advertisement/impl/q;

    invoke-direct {v2, p0}, Lcom/alipay/android/phone/businesscommon/advertisement/impl/q;-><init>(Lcom/alipay/android/phone/businesscommon/advertisement/impl/AdvertisementServiceImpl;)V

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method static synthetic c(Lcom/alipay/android/phone/businesscommon/advertisement/impl/AdvertisementServiceImpl;)V
    .locals 3

    .prologue
    .line 142
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v2, "com.alipay.mobile.LAUNCHER_TAB_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "com.alipay.mobile.LAUNCHER_STATUS_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v2, Lcom/alipay/android/phone/businesscommon/advertisement/impl/s;

    invoke-direct {v2, p0}, Lcom/alipay/android/phone/businesscommon/advertisement/impl/s;-><init>(Lcom/alipay/android/phone/businesscommon/advertisement/impl/AdvertisementServiceImpl;)V

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method


# virtual methods
.method public UpdateAdSync(Ljava/util/HashMap;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 803
    if-nez p1, :cond_0

    .line 861
    :goto_0
    return-void

    .line 805
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    .line 806
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getTopActivity()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 807
    invoke-virtual {p0, v0}, Lcom/alipay/android/phone/businesscommon/advertisement/impl/AdvertisementServiceImpl;->getAppId(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v7

    .line 808
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v8

    .line 810
    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 813
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    .line 814
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .line 815
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    move v4, v2

    move v3, v2

    .line 816
    :cond_1
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_3

    .line 856
    if-eqz v3, :cond_2

    if-nez v4, :cond_2

    .line 857
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_2

    .line 858
    invoke-virtual {p0, v0}, Lcom/alipay/android/phone/businesscommon/advertisement/impl/AdvertisementServiceImpl;->checkAndShowAd(Landroid/app/Activity;)V

    .line 860
    :cond_2
    const-string/jumbo v0, "sync\u66f4\u65b0UI\u5b8c\u6bd5\uff01"

    invoke-static {v0}, Lcom/alipay/android/phone/businesscommon/advertisement/h/a;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 817
    :cond_3
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 818
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;

    .line 819
    if-eqz v2, :cond_1

    .line 820
    invoke-virtual {p0, v2, v7, v8}, Lcom/alipay/android/phone/businesscommon/advertisement/impl/AdvertisementServiceImpl;->isMatchSpaceInfo(Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 825
    iget-object v3, v2, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;->spaceCode:Ljava/lang/String;

    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 827
    iget-object v3, v2, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;->spaceCode:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v6

    .line 829
    if-eqz v6, :cond_5

    .line 830
    const-string/jumbo v3, "NOTIFY"

    .line 831
    iget-object v11, v2, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;->multiStyle:Ljava/lang/String;

    invoke-virtual {v3, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 832
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_4

    move v4, v5

    move v3, v5

    .line 834
    goto :goto_1

    .line 836
    :cond_4
    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 837
    if-eqz v3, :cond_5

    .line 838
    new-instance v11, Lcom/alipay/android/phone/businesscommon/advertisement/impl/z;

    invoke-direct {v11, p0, v3, v6}, Lcom/alipay/android/phone/businesscommon/advertisement/impl/z;-><init>(Lcom/alipay/android/phone/businesscommon/advertisement/impl/AdvertisementServiceImpl;Landroid/view/ViewGroup;Landroid/view/View;)V

    invoke-virtual {v0, v11}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_5
    move v6, v5

    .line 847
    :goto_2
    iget-object v3, v2, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;->spaceCode:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/alipay/android/phone/businesscommon/advertisement/impl/AdvertisementServiceImpl;->getAdvertisementViewCallBackBySpaceCode(Ljava/lang/String;)Lcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService$IAdDataChangeCallBack;

    move-result-object v3

    .line 848
    if-eqz v3, :cond_6

    .line 849
    invoke-interface {v3, v2}, Lcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService$IAdDataChangeCallBack;->onChange(Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;)V

    .line 852
    :cond_6
    iget-object v3, p0, Lcom/alipay/android/phone/businesscommon/advertisement/impl/AdvertisementServiceImpl;->b:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService$IAdDataChangeCallBack;

    if-eqz v3, :cond_7

    .line 854
    invoke-interface {v3, v2}, Lcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService$IAdDataChangeCallBack;->onChange(Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;)V

    :cond_7
    move v3, v6

    goto :goto_1

    :cond_8
    move v6, v3

    goto :goto_2
.end method

.method protected final a()V
    .locals 3

    .prologue
    .line 126
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/impl/AdvertisementServiceImpl;->f:Lcom/alipay/mobile/framework/service/common/TaskScheduleService;

    new-instance v1, Lcom/alipay/android/phone/businesscommon/advertisement/impl/r;

    invoke-direct {v1, p0}, Lcom/alipay/android/phone/businesscommon/advertisement/impl/r;-><init>(Lcom/alipay/android/phone/businesscommon/advertisement/impl/AdvertisementServiceImpl;)V

    .line 139
    const-string/jumbo v2, "AdvertisementService.checkAdAfterLogin"

    .line 126
    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/framework/service/common/TaskScheduleService;->parallelExecute(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 140
    return-void
.end method

.method public addAnnouncement(Landroid/app/Activity;Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;)V
    .locals 2

    .prologue
    .line 641
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p2, :cond_1

    .line 653
    :cond_0
    :goto_0
    return-void

    .line 643
    :cond_1
    invoke-static {p2}, Lcom/alipay/android/phone/businesscommon/advertisement/c/a;->a(Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;)Lcom/alipay/android/phone/businesscommon/advertisement/db/bean/SpaceInfoTable;

    move-result-object v0

    .line 644
    iget-object v1, v0, Lcom/alipay/android/phone/businesscommon/advertisement/db/bean/SpaceInfoTable;->multiStyle:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 645
    iget-object v1, v0, Lcom/alipay/android/phone/businesscommon/advertisement/db/bean/SpaceInfoTable;->spaceObjectList:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 646
    iget-object v1, v0, Lcom/alipay/android/phone/businesscommon/advertisement/db/bean/SpaceInfoTable;->appId:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 647
    iget-object v0, v0, Lcom/alipay/android/phone/businesscommon/advertisement/db/bean/SpaceInfoTable;->viewId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 648
    const-string/jumbo v0, "ANNOUNCEMENT"

    .line 649
    iget-object v1, p2, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;->multiStyle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 652
    invoke-static {p2}, Lcom/alipay/android/phone/businesscommon/advertisement/c/a;->a(Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;)Lcom/alipay/android/phone/businesscommon/advertisement/db/bean/SpaceInfoTable;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/alipay/android/phone/businesscommon/advertisement/impl/AdvertisementServiceImpl;->b(Landroid/app/Activity;Lcom/alipay/android/phone/businesscommon/advertisement/db/bean/SpaceInfoTable;)V

    goto :goto_0
.end method

.method public addAnnouncement(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 657
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/alipay/android/phone/businesscommon/advertisement/impl/AdvertisementServiceImpl;->addAnnouncement(Landroid/app/Activity;Ljava/lang/String;Z)V

    .line 658
    return-void
.end method

.method public addAnnouncement(Landroid/app/Activity;Ljava/lang/String;Z)V
    .locals 4

    .prologue
    .line 662
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 694
    :cond_0
    :goto_0
    return-void

    .line 664
    :cond_1
    invoke-virtual {p0, p1}, Lcom/alipay/android/phone/businesscommon/advertisement/impl/AdvertisementServiceImpl;->getMicroAppByActivty(Landroid/app/Activity;)Lcom/alipay/mobile/framework/app/MicroApplication;

    move-result-object v0

    .line 665
    if-nez v0, :cond_2

    .line 666
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "checkAndShowAd application is null!activity:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/phone/businesscommon/advertisement/h/a;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 669
    :cond_2
    new-instance v1, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;

    invoke-direct {v1}, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;-><init>()V

    .line 670
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;->spaceCode:Ljava/lang/String;

    .line 671
    const/16 v2, 0x24

    iput v2, v1, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;->height:I

    .line 672
    const-string/jumbo v2, "TOP"

    iput-object v2, v1, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;->location:Ljava/lang/String;

    .line 673
    invoke-virtual {p0, p1, v0}, Lcom/alipay/android/phone/businesscommon/advertisement/impl/AdvertisementServiceImpl;->getAppId(Landroid/app/Activity;Lcom/alipay/mobile/framework/app/MicroApplication;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;->appId:Ljava/lang/String;

    .line 674
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;->androidViewId:Ljava/lang/String;

    .line 675
    const-string/jumbo v0, "ANNOUNCEMENT"

    iput-object v0, v1, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;->multiStyle:Ljava/lang/String;

    .line 676
    const-string/jumbo v0, "ADVERTISE"

    iput-object v0, v1, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;->type:Ljava/lang/String;

    .line 677
    const-string/jumbo v0, "NEVER"

    iput-object v0, v1, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;->updatePolicy:Ljava/lang/String;

    .line 678
    new-instance v0, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectInfo;

    invoke-direct {v0}, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectInfo;-><init>()V

    .line 679
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectInfo;->objectId:Ljava/lang/String;

    .line 680
    iput-object p2, v0, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectInfo;->content:Ljava/lang/String;

    .line 681
    const/4 v2, 0x2

    iput v2, v0, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectInfo;->priority:I

    .line 682
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectInfo;->behaviors:Ljava/util/List;

    .line 683
    new-instance v2, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectBehavior;

    invoke-direct {v2}, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectBehavior;-><init>()V

    .line 684
    if-eqz p3, :cond_3

    .line 685
    const-string/jumbo v3, "CLOSE_AFTER_SHUT"

    iput-object v3, v2, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectBehavior;->behavior:Ljava/lang/String;

    .line 689
    :goto_1
    iget-object v3, v0, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectInfo;->behaviors:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 690
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;->spaceObjectList:Ljava/util/List;

    .line 692
    iget-object v2, v1, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;->spaceObjectList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 693
    invoke-static {v1}, Lcom/alipay/android/phone/businesscommon/advertisement/c/a;->a(Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;)Lcom/alipay/android/phone/businesscommon/advertisement/db/bean/SpaceInfoTable;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/alipay/android/phone/businesscommon/advertisement/impl/AdvertisementServiceImpl;->b(Landroid/app/Activity;Lcom/alipay/android/phone/businesscommon/advertisement/db/bean/SpaceInfoTable;)V

    goto/16 :goto_0

    .line 687
    :cond_3
    const-string/jumbo v3, "ALWAYS"

    iput-object v3, v2, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectBehavior;->behavior:Ljava/lang/String;

    goto :goto_1
.end method

.method public checkAndShowAd()V
    .locals 3

    .prologue
    .line 170
    invoke-virtual {p0}, Lcom/alipay/android/phone/businesscommon/advertisement/impl/AdvertisementServiceImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getTopActivity()Ljava/lang/ref/WeakReference;

    move-result-object v0

    .line 171
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 172
    if-nez v0, :cond_0

    .line 191
    :goto_0
    return-void

    .line 176
    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 179
    invoke-virtual {p0, v0}, Lcom/alipay/android/phone/businesscommon/advertisement/impl/AdvertisementServiceImpl;->checkAndShowAd(Landroid/app/Activity;)V

    goto :goto_0

    .line 182
    :cond_1
    new-instance v1, Lcom/alipay/android/phone/businesscommon/advertisement/impl/t;

    invoke-direct {v1, p0, v0}, Lcom/alipay/android/phone/businesscommon/advertisement/impl/t;-><init>(Lcom/alipay/android/phone/businesscommon/advertisement/impl/AdvertisementServiceImpl;Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public checkAndShowAd(Landroid/app/Activity;)V
    .locals 4

    .prologue
    .line 241
    invoke-virtual {p0, p1}, Lcom/alipay/android/phone/businesscommon/advertisement/impl/AdvertisementServiceImpl;->getMicroAppByActivty(Landroid/app/Activity;)Lcom/alipay/mobile/framework/app/MicroApplication;

    move-result-object v0

    .line 243
    if-nez v0, :cond_0

    .line 244
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "checkAndShowAd application is null!activity:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/phone/businesscommon/advertisement/h/a;->b(Ljava/lang/String;)V

    .line 258
    :goto_0
    return-void

    .line 247
    :cond_0
    invoke-virtual {p0, p1, v0}, Lcom/alipay/android/phone/businesscommon/advertisement/impl/AdvertisementServiceImpl;->getAppId(Landroid/app/Activity;Lcom/alipay/mobile/framework/app/MicroApplication;)Ljava/lang/String;

    move-result-object v0

    .line 248
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    .line 250
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 251
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "appId is:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "viewId is:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 252
    const-string/jumbo v1, "maybe this activity not start by framework!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 251
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/phone/businesscommon/advertisement/h/a;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 256
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "appid:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " viewid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/android/phone/businesscommon/advertisement/h/a;->c(Ljava/lang/String;)V

    .line 257
    invoke-direct {p0, p1, v0, v1}, Lcom/alipay/android/phone/businesscommon/advertisement/impl/AdvertisementServiceImpl;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public feedback(Lcom/alipay/cdp/common/service/facade/space/domain/SpaceFeedbackReq;)V
    .locals 1

    .prologue
    .line 560
    invoke-static {}, Lcom/alipay/android/phone/businesscommon/advertisement/e/a;->a()Lcom/alipay/android/phone/businesscommon/advertisement/e/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/android/phone/businesscommon/advertisement/e/a;->a(Lcom/alipay/cdp/common/service/facade/space/domain/SpaceFeedbackReq;)V

    .line 561
    return-void
.end method

.method public getActionExecutor()Lcom/alipay/android/phone/businesscommon/advertisement/ActionExecutor;
    .locals 1

    .prologue
    .line 900
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/impl/AdvertisementServiceImpl;->c:Lcom/alipay/android/phone/businesscommon/advertisement/ActionExecutor;

    return-object v0
.end method

.method public getAdvertisementViewCallBackBySpaceCode(Ljava/lang/String;)Lcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService$IAdDataChangeCallBack;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 771
    .line 772
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/impl/AdvertisementServiceImpl;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v1, v2

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 778
    if-nez v1, :cond_2

    .line 782
    :goto_1
    return-object v2

    .line 772
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 774
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v5, "+"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v1, v0

    .line 775
    goto :goto_0

    .line 782
    :cond_2
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/impl/AdvertisementServiceImpl;->d:Ljava/util/Map;

    .line 783
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService$IAdDataChangeCallBack;

    move-object v2, v0

    .line 782
    goto :goto_1
.end method

.method public getAdvertisementViewCallBackMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService$IAdDataChangeCallBack;",
            ">;"
        }
    .end annotation

    .prologue
    .line 915
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/impl/AdvertisementServiceImpl;->d:Ljava/util/Map;

    return-object v0
.end method

.method public getAppId(Landroid/app/Activity;)Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 203
    if-nez p1, :cond_1

    .line 208
    :cond_0
    :goto_0
    return-object v0

    .line 205
    :cond_1
    invoke-virtual {p0, p1}, Lcom/alipay/android/phone/businesscommon/advertisement/impl/AdvertisementServiceImpl;->getMicroAppByActivty(Landroid/app/Activity;)Lcom/alipay/mobile/framework/app/MicroApplication;

    move-result-object v1

    .line 206
    if-eqz v1, :cond_0

    .line 208
    invoke-virtual {p0, p1, v1}, Lcom/alipay/android/phone/businesscommon/advertisement/impl/AdvertisementServiceImpl;->getAppId(Landroid/app/Activity;Lcom/alipay/mobile/framework/app/MicroApplication;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getAppId(Landroid/app/Activity;Lcom/alipay/mobile/framework/app/MicroApplication;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 212
    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    .line 213
    :cond_0
    const-string/jumbo v0, ""

    .line 235
    :cond_1
    :goto_0
    return-object v0

    .line 215
    :cond_2
    const-string/jumbo v0, "com.alipay.android.launcher.TabLauncher"

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 217
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 216
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 219
    const v0, 0x1020012

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 218
    check-cast v0, Landroid/widget/TabHost;

    .line 220
    if-eqz v0, :cond_3

    .line 221
    invoke-virtual {v0}, Landroid/widget/TabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v0

    .line 233
    :goto_1
    if-nez v0, :cond_1

    .line 234
    const-string/jumbo v0, ""

    goto :goto_0

    .line 223
    :cond_3
    const-string/jumbo v0, ""

    goto :goto_1

    .line 225
    :cond_4
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    .line 226
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    .line 227
    invoke-virtual {v0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "com.antfortune.wealth"

    .line 225
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 228
    const-string/jumbo v0, "2000000"

    goto :goto_1

    .line 230
    :cond_5
    invoke-virtual {p2}, Lcom/alipay/mobile/framework/app/MicroApplication;->getAppId()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public getMicroAppByActivty(Landroid/app/Activity;)Lcom/alipay/mobile/framework/app/MicroApplication;
    .locals 1

    .prologue
    .line 194
    instance-of v0, p1, Lcom/alipay/mobile/framework/app/ui/BaseActivity;

    if-eqz v0, :cond_0

    .line 195
    check-cast p1, Lcom/alipay/mobile/framework/app/ui/BaseActivity;

    invoke-virtual {p1}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->getActivityApplication()Lcom/alipay/mobile/framework/app/ActivityApplication;

    move-result-object v0

    .line 199
    :goto_0
    return-object v0

    .line 196
    :cond_0
    instance-of v0, p1, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    if-eqz v0, :cond_1

    .line 197
    check-cast p1, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    invoke-virtual {p1}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->getActivityApplication()Lcom/alipay/mobile/framework/app/ActivityApplication;

    move-result-object v0

    goto :goto_0

    .line 199
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSpaceInfoByCode(Ljava/lang/String;Lcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService$IAdGetSingleSpaceInfoCallBack;)V
    .locals 1

    .prologue
    .line 472
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0, p2}, Lcom/alipay/android/phone/businesscommon/advertisement/impl/AdvertisementServiceImpl;->getSpaceInfoByCode(Ljava/lang/String;ZLcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService$IAdGetSingleSpaceInfoCallBack;)V

    .line 473
    return-void
.end method

.method public getSpaceInfoByCode(Ljava/lang/String;Ljava/util/Map;ZLcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService$IAdGetSingleSpaceInfoCallBack;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z",
            "Lcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService$IAdGetSingleSpaceInfoCallBack;",
            ")V"
        }
    .end annotation

    .prologue
    .line 484
    iget-object v6, p0, Lcom/alipay/android/phone/businesscommon/advertisement/impl/AdvertisementServiceImpl;->f:Lcom/alipay/mobile/framework/service/common/TaskScheduleService;

    new-instance v0, Lcom/alipay/android/phone/businesscommon/advertisement/impl/w;

    move-object v1, p0

    move-object v2, p1

    move v3, p3

    move-object v4, p4

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/alipay/android/phone/businesscommon/advertisement/impl/w;-><init>(Lcom/alipay/android/phone/businesscommon/advertisement/impl/AdvertisementServiceImpl;Ljava/lang/String;ZLcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService$IAdGetSingleSpaceInfoCallBack;Ljava/util/Map;)V

    .line 538
    const-string/jumbo v1, "getSpaceInfoByCodeTask"

    .line 484
    invoke-virtual {v6, v0, v1}, Lcom/alipay/mobile/framework/service/common/TaskScheduleService;->parallelExecute(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 540
    return-void
.end method

.method public getSpaceInfoByCode(Ljava/lang/String;ZLcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService$IAdGetSingleSpaceInfoCallBack;)V
    .locals 2

    .prologue
    .line 478
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, p3}, Lcom/alipay/android/phone/businesscommon/advertisement/impl/AdvertisementServiceImpl;->getSpaceInfoByCode(Ljava/lang/String;Ljava/util/Map;ZLcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService$IAdGetSingleSpaceInfoCallBack;)V

    .line 479
    return-void
.end method

.method public getSpaceInfoByPage(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService$IAdGetSpaceInfoCallBack;)V
    .locals 3

    .prologue
    .line 545
    invoke-static {}, Lcom/alipay/android/phone/businesscommon/advertisement/g/a;->a()Lcom/alipay/android/phone/businesscommon/advertisement/g/a;

    move-result-object v0

    .line 546
    invoke-virtual {v0, p1, p2}, Lcom/alipay/android/phone/businesscommon/advertisement/g/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 547
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 548
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 549
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 552
    if-eqz p3, :cond_0

    .line 553
    invoke-interface {p3, v1}, Lcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService$IAdGetSpaceInfoCallBack;->onSuccess(Ljava/util/List;)V

    .line 556
    :cond_0
    return-void

    .line 549
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/businesscommon/advertisement/db/bean/SpaceInfoTable;

    .line 550
    invoke-static {v0}, Lcom/alipay/android/phone/businesscommon/advertisement/c/a;->a(Lcom/alipay/android/phone/businesscommon/advertisement/db/bean/SpaceInfoTable;)Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getSyncDataChangeCallBackMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService$IAdDataChangeCallBack;",
            ">;"
        }
    .end annotation

    .prologue
    .line 920
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/impl/AdvertisementServiceImpl;->b:Ljava/util/Map;

    return-object v0
.end method

.method public getUseId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 910
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/impl/AdvertisementServiceImpl;->e:Ljava/lang/String;

    return-object v0
.end method

.method public isMatchSpaceInfo(Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 875
    if-eqz p1, :cond_0

    iget-object v2, p1, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;->appId:Ljava/lang/String;

    invoke-static {v2}, Lcom/alipay/mobile/common/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 876
    iget-object v2, p1, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;->androidViewId:Ljava/lang/String;

    invoke-static {v2}, Lcom/alipay/mobile/common/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 877
    invoke-static {p2}, Lcom/alipay/mobile/common/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 878
    invoke-static {p3}, Lcom/alipay/mobile/common/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    move v0, v1

    .line 895
    :cond_1
    :goto_0
    return v0

    .line 881
    :cond_2
    iget-object v2, p1, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;->appId:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 882
    iget-object v2, p1, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;->androidViewId:Ljava/lang/String;

    invoke-virtual {p3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 886
    :cond_3
    const-string/jumbo v2, "*"

    iget-object v3, p1, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;->appId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 887
    const-string/jumbo v2, "*"

    iget-object v3, p1, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;->androidViewId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 891
    :cond_4
    iget-object v2, p1, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;->appId:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 892
    const-string/jumbo v2, "*"

    iget-object v3, p1, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;->androidViewId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_5
    move v0, v1

    .line 895
    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 462
    return-void
.end method

.method protected onDestroy(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 467
    return-void
.end method

.method public registerAdvertisementViewCallBack(Ljava/lang/String;Lcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService$IAdDataChangeCallBack;)V
    .locals 2

    .prologue
    .line 758
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "registerAdvertisementViewCallBack:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/phone/businesscommon/advertisement/h/a;->c(Ljava/lang/String;)V

    .line 759
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/impl/AdvertisementServiceImpl;->d:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 760
    return-void
.end method

.method public registerDataChangeListener(Ljava/lang/String;Lcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService$IAdDataChangeCallBack;)V
    .locals 1

    .prologue
    .line 739
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/impl/AdvertisementServiceImpl;->b:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 740
    return-void
.end method

.method public removeAdvertisement(Ljava/lang/String;Landroid/app/Activity;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 925
    if-nez p2, :cond_0

    .line 941
    :goto_0
    return-void

    .line 929
    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 930
    invoke-direct {p0, p2, p3}, Lcom/alipay/android/phone/businesscommon/advertisement/impl/AdvertisementServiceImpl;->a(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    .line 933
    :cond_1
    new-instance v0, Lcom/alipay/android/phone/businesscommon/advertisement/impl/o;

    invoke-direct {v0, p0, p2, p3}, Lcom/alipay/android/phone/businesscommon/advertisement/impl/o;-><init>(Lcom/alipay/android/phone/businesscommon/advertisement/impl/AdvertisementServiceImpl;Landroid/app/Activity;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public removeAnnouncement(Landroid/app/Activity;)V
    .locals 5

    .prologue
    .line 698
    if-nez p1, :cond_1

    .line 734
    :cond_0
    :goto_0
    return-void

    .line 701
    :cond_1
    invoke-virtual {p0, p1}, Lcom/alipay/android/phone/businesscommon/advertisement/impl/AdvertisementServiceImpl;->getMicroAppByActivty(Landroid/app/Activity;)Lcom/alipay/mobile/framework/app/MicroApplication;

    move-result-object v0

    .line 702
    if-nez v0, :cond_2

    .line 703
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "checkAndShowAd application is null!activity:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/phone/businesscommon/advertisement/h/a;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 706
    :cond_2
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/MicroApplication;->getAppId()Ljava/lang/String;

    move-result-object v0

    .line 707
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    .line 708
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 711
    invoke-static {}, Lcom/alipay/android/phone/businesscommon/advertisement/g/a;->a()Lcom/alipay/android/phone/businesscommon/advertisement/g/a;

    move-result-object v2

    .line 712
    invoke-virtual {p0, p1}, Lcom/alipay/android/phone/businesscommon/advertisement/impl/AdvertisementServiceImpl;->getAppId(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v3

    .line 713
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    .line 712
    invoke-virtual {v2, v3, v4}, Lcom/alipay/android/phone/businesscommon/advertisement/g/a;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/android/phone/businesscommon/advertisement/db/bean/SpaceInfoTable;

    move-result-object v2

    .line 714
    if-eqz v2, :cond_0

    .line 717
    iget-object v3, v2, Lcom/alipay/android/phone/businesscommon/advertisement/db/bean/SpaceInfoTable;->appId:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 718
    iget-object v0, v2, Lcom/alipay/android/phone/businesscommon/advertisement/db/bean/SpaceInfoTable;->viewId:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 719
    invoke-static {}, Lcom/alipay/android/phone/businesscommon/advertisement/g/a;->a()Lcom/alipay/android/phone/businesscommon/advertisement/g/a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/businesscommon/advertisement/g/a;->a(Lcom/alipay/android/phone/businesscommon/advertisement/db/bean/SpaceInfoTable;)V

    .line 724
    const v0, 0x1020002

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 723
    check-cast v0, Landroid/view/ViewGroup;

    .line 725
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 726
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    .line 725
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    .line 727
    if-eqz v0, :cond_0

    .line 730
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public setActionExecutor(Lcom/alipay/android/phone/businesscommon/advertisement/ActionExecutor;)V
    .locals 0

    .prologue
    .line 905
    iput-object p1, p0, Lcom/alipay/android/phone/businesscommon/advertisement/impl/AdvertisementServiceImpl;->c:Lcom/alipay/android/phone/businesscommon/advertisement/ActionExecutor;

    .line 906
    return-void
.end method

.method public showSpaceInfoAd(Landroid/app/Activity;Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;)V
    .locals 1

    .prologue
    .line 405
    invoke-static {p2}, Lcom/alipay/android/phone/businesscommon/advertisement/c/a;->a(Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;)Lcom/alipay/android/phone/businesscommon/advertisement/db/bean/SpaceInfoTable;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/alipay/android/phone/businesscommon/advertisement/impl/AdvertisementServiceImpl;->a(Landroid/app/Activity;Lcom/alipay/android/phone/businesscommon/advertisement/db/bean/SpaceInfoTable;)V

    .line 406
    return-void
.end method

.method public unregisterAdvertisementViewCallBack(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 764
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "unregisterAdvertisementViewCallBack:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/phone/businesscommon/advertisement/h/a;->c(Ljava/lang/String;)V

    .line 765
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/impl/AdvertisementServiceImpl;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 766
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/impl/AdvertisementServiceImpl;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 767
    :cond_0
    return-void
.end method

.method public unregisterAdvertisementViewCallBackByActivity(Landroid/app/Activity;)V
    .locals 5

    .prologue
    .line 789
    if-nez p1, :cond_1

    .line 799
    :cond_0
    return-void

    .line 792
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    .line 793
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/impl/AdvertisementServiceImpl;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 795
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "+"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 796
    invoke-virtual {p0, v0}, Lcom/alipay/android/phone/businesscommon/advertisement/impl/AdvertisementServiceImpl;->unregisterAdvertisementViewCallBack(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public unregisterDataChangeListener(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 744
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/impl/AdvertisementServiceImpl;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 745
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/impl/AdvertisementServiceImpl;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 746
    :cond_0
    return-void
.end method

.method public userFeedback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 565
    const-string/jumbo v0, "SHOW"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 566
    invoke-static {}, Lcom/alipay/android/phone/businesscommon/advertisement/impl/l;->a()Lcom/alipay/android/phone/businesscommon/advertisement/impl/l;

    move-result-object v0

    .line 567
    const-string/jumbo v1, "AdShow"

    .line 566
    invoke-virtual {v0, v1, p1, p2}, Lcom/alipay/android/phone/businesscommon/advertisement/impl/l;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 581
    :goto_0
    return-void

    .line 568
    :cond_0
    const-string/jumbo v0, "CLICK"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 569
    invoke-static {}, Lcom/alipay/android/phone/businesscommon/advertisement/impl/l;->a()Lcom/alipay/android/phone/businesscommon/advertisement/impl/l;

    move-result-object v0

    .line 571
    const-string/jumbo v1, "AdClick"

    .line 570
    invoke-virtual {v0, v1, p1, p2}, Lcom/alipay/android/phone/businesscommon/advertisement/impl/l;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 573
    :cond_1
    const-string/jumbo v0, "CLOSE"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 574
    invoke-static {}, Lcom/alipay/android/phone/businesscommon/advertisement/impl/l;->a()Lcom/alipay/android/phone/businesscommon/advertisement/impl/l;

    move-result-object v0

    .line 576
    const-string/jumbo v1, "AdClose"

    .line 575
    invoke-virtual {v0, v1, p1, p2}, Lcom/alipay/android/phone/businesscommon/advertisement/impl/l;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 579
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "userFeedback not illeagle behaivor!"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/phone/businesscommon/advertisement/h/a;->e(Ljava/lang/String;)V

    goto :goto_0
.end method
