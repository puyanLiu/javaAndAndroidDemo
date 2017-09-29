.class final Lcom/alipay/android/widgets/asset/rpc/b;
.super Landroid/os/AsyncTask;
.source "AssetDynamicDataProcessor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        "Lcom/alipay/mobilewealth/biz/service/gw/result/home/WealthHomeDynamicV92Result;",
        ">;"
    }
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field final synthetic b:Lcom/alipay/android/widgets/asset/rpc/AssetDynamicDataProcessor;


# direct methods
.method private constructor <init>(Lcom/alipay/android/widgets/asset/rpc/AssetDynamicDataProcessor;)V
    .locals 0

    .prologue
    .line 312
    iput-object p1, p0, Lcom/alipay/android/widgets/asset/rpc/b;->b:Lcom/alipay/android/widgets/asset/rpc/AssetDynamicDataProcessor;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/android/widgets/asset/rpc/AssetDynamicDataProcessor;B)V
    .locals 0

    .prologue
    .line 312
    invoke-direct {p0, p1}, Lcom/alipay/android/widgets/asset/rpc/b;-><init>(Lcom/alipay/android/widgets/asset/rpc/AssetDynamicDataProcessor;)V

    return-void
.end method


# virtual methods
.method protected final varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/alipay/android/widgets/asset/rpc/b;->a:Ljava/lang/String;

    invoke-static {}, Lcom/alipay/android/widgets/asset/utils/AssetCacheHelper;->a()Lcom/alipay/android/widgets/asset/utils/AssetCacheHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/widgets/asset/rpc/b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/android/widgets/asset/utils/AssetCacheHelper;->a(Ljava/lang/String;)Lcom/alipay/mobilewealth/biz/service/gw/result/home/WealthHomeDynamicV92Result;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 1
    check-cast p1, Lcom/alipay/mobilewealth/biz/service/gw/result/home/WealthHomeDynamicV92Result;

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "AssetDynamicDataProcessor"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "get cache = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/alipay/android/widgets/asset/rpc/b;->b:Lcom/alipay/android/widgets/asset/rpc/AssetDynamicDataProcessor;

    invoke-static {v0}, Lcom/alipay/android/widgets/asset/rpc/AssetDynamicDataProcessor;->a(Lcom/alipay/android/widgets/asset/rpc/AssetDynamicDataProcessor;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/widgets/asset/rpc/b;->a:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/alipay/android/widgets/asset/rpc/b;->b:Lcom/alipay/android/widgets/asset/rpc/AssetDynamicDataProcessor;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/alipay/android/widgets/asset/rpc/AssetDynamicDataProcessor;->b(Lcom/alipay/mobilewealth/biz/service/gw/result/home/WealthHomeDynamicV92Result;Z)V

    :cond_0
    return-void
.end method
