.class public Lcom/alipay/mobile/nebulacore/global/H5GlobalResource;
.super Ljava/lang/Object;
.source "H5GlobalResource.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "H5GlobalResource"

.field private static a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation
.end field

.field private static b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/alipay/mobile/nebulacore/global/H5GlobalResource;->a:Ljava/util/Map;

    .line 21
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/alipay/mobile/nebulacore/global/H5GlobalResource;->b:Ljava/util/Map;

    .line 15
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Ljava/util/Map;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/alipay/mobile/nebulacore/global/H5GlobalResource;->a:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic b()Ljava/util/Map;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/alipay/mobile/nebulacore/global/H5GlobalResource;->b:Ljava/util/Map;

    return-object v0
.end method

.method public static final clearPackage(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 49
    const-string/jumbo v0, "20000196"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    sget-object v0, Lcom/alipay/mobile/nebulacore/global/H5GlobalResource;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 54
    :goto_0
    return-void

    .line 52
    :cond_0
    sget-object v0, Lcom/alipay/mobile/nebulacore/global/H5GlobalResource;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    goto :goto_0
.end method

.method public static getContent(Ljava/lang/String;)[B
    .locals 2

    .prologue
    .line 57
    sget-object v0, Lcom/alipay/mobile/nebulacore/global/H5GlobalResource;->b:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    const-string/jumbo v0, "H5GlobalResource"

    const-string/jumbo v1, "load response from operation package"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulacore/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    sget-object v0, Lcom/alipay/mobile/nebulacore/global/H5GlobalResource;->b:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 64
    :goto_0
    return-object v0

    .line 60
    :cond_0
    sget-object v0, Lcom/alipay/mobile/nebulacore/global/H5GlobalResource;->a:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 61
    const-string/jumbo v0, "H5GlobalResource"

    const-string/jumbo v1, "load response from global package."

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulacore/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    sget-object v0, Lcom/alipay/mobile/nebulacore/global/H5GlobalResource;->a:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    goto :goto_0

    .line 64
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final initResPackage(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 27
    const-string/jumbo v0, "20000196"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/alipay/mobile/nebulacore/global/H5GlobalResource;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 28
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getExecutor()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/nebulacore/global/H5GlobalResource$1;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/nebulacore/global/H5GlobalResource$1;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 42
    :cond_0
    :goto_0
    return-void

    .line 34
    :cond_1
    const-string/jumbo v0, "20000202"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/alipay/mobile/nebulacore/global/H5GlobalResource;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 35
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getExecutor()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/nebulacore/global/H5GlobalResource$2;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/nebulacore/global/H5GlobalResource$2;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static final isResPackageEmpty(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 45
    const-string/jumbo v0, "20000196"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/alipay/mobile/nebulacore/global/H5GlobalResource;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/alipay/mobile/nebulacore/global/H5GlobalResource;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    goto :goto_0
.end method
