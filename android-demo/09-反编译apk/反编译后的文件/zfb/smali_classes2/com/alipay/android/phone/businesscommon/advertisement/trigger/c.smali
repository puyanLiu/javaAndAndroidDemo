.class public final Lcom/alipay/android/phone/businesscommon/advertisement/trigger/c;
.super Ljava/lang/Object;
.source "AdvertisementFinishAdvice.java"

# interfaces
.implements Lcom/alipay/mobile/aspect/Advice;


# instance fields
.field private a:Lcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    .line 24
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 25
    const-class v1, Lcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService;

    .line 23
    iput-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/trigger/c;->a:Lcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService;

    .line 26
    return-void
.end method

.method static synthetic a(Lcom/alipay/android/phone/businesscommon/advertisement/trigger/c;)Lcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/trigger/c;->a:Lcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService;

    return-object v0
.end method

.method static synthetic a(Lcom/alipay/android/phone/businesscommon/advertisement/trigger/c;Lcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService;)V
    .locals 0

    .prologue
    .line 20
    iput-object p1, p0, Lcom/alipay/android/phone/businesscommon/advertisement/trigger/c;->a:Lcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService;

    return-void
.end method


# virtual methods
.method public final onCallAfter(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 40
    return-void
.end method

.method public final onCallAround(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Landroid/util/Pair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Object;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 35
    const/4 v0, 0x0

    return-object v0
.end method

.method public final onCallBefore(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 30
    return-void
.end method

.method public final onExecutionAfter(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 56
    const-string/jumbo v0, "void com.alipay.mobile.framework.app.ui.BaseActivity.finish()"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 57
    const-string/jumbo v0, "void com.alipay.mobile.framework.app.ui.BaseActivity.finish()"

    .line 58
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 60
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    .line 61
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/framework/service/common/TaskScheduleService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/TaskScheduleService;

    .line 60
    new-instance v1, Lcom/alipay/android/phone/businesscommon/advertisement/trigger/d;

    invoke-direct {v1, p0, p2}, Lcom/alipay/android/phone/businesscommon/advertisement/trigger/d;-><init>(Lcom/alipay/android/phone/businesscommon/advertisement/trigger/c;Ljava/lang/Object;)V

    .line 76
    const-string/jumbo v2, "AdvertisementFinishTask"

    .line 62
    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/framework/service/common/TaskScheduleService;->parallelExecute(Ljava/lang/Runnable;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    :cond_1
    :goto_0
    return-void

    .line 77
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/phone/businesscommon/advertisement/h/a;->b(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final onExecutionAround(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Landroid/util/Pair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Object;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 50
    const/4 v0, 0x0

    return-object v0
.end method

.method public final onExecutionBefore(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 45
    return-void
.end method
