.class public Lcom/alipay/mobile/nebulauc/util/UCConfigUtil;
.super Ljava/lang/Object;
.source "UCConfigUtil.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "UCConfigUtil"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 15
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 16
    invoke-interface {v0, p0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 15
    return-object v0
.end method

.method public static getConfig(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 20
    const-class v0, Lcom/alipay/mobile/base/config/ConfigService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebulauc/util/UCConfigUtil;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/base/config/ConfigService;

    .line 21
    if-nez v0, :cond_1

    .line 22
    const-string/jumbo v0, "UCConfigUtil"

    const-string/jumbo v2, "failed get config service"

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebulauc/util/UCH5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 38
    :cond_0
    :goto_0
    return-object v0

    .line 27
    :cond_1
    :try_start_0
    invoke-virtual {v0, p0}, Lcom/alipay/mobile/base/config/ConfigService;->getConfig(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 32
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 33
    sget-object v1, Lcom/alipay/mobile/nebulauc/util/UCDefaultConfig;->sSwitchMap:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 34
    sget-object v0, Lcom/alipay/mobile/nebulauc/util/UCDefaultConfig;->sSwitchMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 36
    :cond_2
    const-string/jumbo v1, "UCConfigUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "failed to get config value for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebulauc/util/UCH5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 28
    :catch_0
    move-exception v0

    .line 29
    const-string/jumbo v2, "UCConfigUtil"

    const-string/jumbo v3, "getConfig exception"

    invoke-static {v2, v3, v0}, Lcom/alipay/mobile/nebulauc/util/UCH5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    .line 30
    goto :goto_0
.end method
