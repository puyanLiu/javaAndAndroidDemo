.class final Lcom/alipay/android/phone/businesscommon/advertisement/trigger/d;
.super Ljava/lang/Object;
.source "AdvertisementFinishAdvice.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/businesscommon/advertisement/trigger/c;

.field private final synthetic b:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/businesscommon/advertisement/trigger/c;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/phone/businesscommon/advertisement/trigger/d;->a:Lcom/alipay/android/phone/businesscommon/advertisement/trigger/c;

    iput-object p2, p0, Lcom/alipay/android/phone/businesscommon/advertisement/trigger/d;->b:Ljava/lang/Object;

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 65
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/trigger/d;->a:Lcom/alipay/android/phone/businesscommon/advertisement/trigger/c;

    invoke-static {v0}, Lcom/alipay/android/phone/businesscommon/advertisement/trigger/c;->a(Lcom/alipay/android/phone/businesscommon/advertisement/trigger/c;)Lcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService;

    move-result-object v0

    if-nez v0, :cond_0

    .line 66
    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/advertisement/trigger/d;->a:Lcom/alipay/android/phone/businesscommon/advertisement/trigger/c;

    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    .line 67
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 68
    const-class v2, Lcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService;

    .line 66
    invoke-static {v1, v0}, Lcom/alipay/android/phone/businesscommon/advertisement/trigger/c;->a(Lcom/alipay/android/phone/businesscommon/advertisement/trigger/c;Lcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService;)V

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/trigger/d;->a:Lcom/alipay/android/phone/businesscommon/advertisement/trigger/c;

    invoke-static {v0}, Lcom/alipay/android/phone/businesscommon/advertisement/trigger/c;->a(Lcom/alipay/android/phone/businesscommon/advertisement/trigger/c;)Lcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 71
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/trigger/d;->a:Lcom/alipay/android/phone/businesscommon/advertisement/trigger/c;

    invoke-static {v0}, Lcom/alipay/android/phone/businesscommon/advertisement/trigger/c;->a(Lcom/alipay/android/phone/businesscommon/advertisement/trigger/c;)Lcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService;

    move-result-object v1

    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/trigger/d;->b:Ljava/lang/Object;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v1, v0}, Lcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService;->unregisterAdvertisementViewCallBackByActivity(Landroid/app/Activity;)V

    .line 75
    :goto_0
    return-void

    .line 73
    :cond_1
    const-string/jumbo v0, "removeAdvertisementListener: advertisementService==null"

    invoke-static {v0}, Lcom/alipay/android/phone/businesscommon/advertisement/h/a;->a(Ljava/lang/String;)V

    goto :goto_0
.end method
