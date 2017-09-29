.class Lcom/alipay/mobile/nebulacore/core/H5PageFactoryImpl$2;
.super Ljava/lang/Object;
.source "H5PageFactoryImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/nebulacore/core/H5PageFactoryImpl;

.field private final synthetic b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

.field private final synthetic c:Lcom/alipay/mobile/nebulacore/ui/H5PageViewHolder;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/core/H5PageFactoryImpl;Lcom/alipay/mobile/nebulacore/core/H5PageImpl;Lcom/alipay/mobile/nebulacore/ui/H5PageViewHolder;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/core/H5PageFactoryImpl$2;->a:Lcom/alipay/mobile/nebulacore/core/H5PageFactoryImpl;

    iput-object p2, p0, Lcom/alipay/mobile/nebulacore/core/H5PageFactoryImpl$2;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    iput-object p3, p0, Lcom/alipay/mobile/nebulacore/core/H5PageFactoryImpl$2;->c:Lcom/alipay/mobile/nebulacore/ui/H5PageViewHolder;

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 80
    const-string/jumbo v0, "H5PageFactoryImpl"

    const-string/jumbo v1, "init nav bar"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulacore/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    :try_start_0
    new-instance v0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/core/H5PageFactoryImpl$2;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-direct {v0, v1}, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;-><init>(Lcom/alipay/mobile/h5container/api/H5Page;)V

    .line 83
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/core/H5PageFactoryImpl$2;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {v1}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getPluginManager()Lcom/alipay/mobile/h5container/api/H5PluginManager;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/alipay/mobile/h5container/api/H5PluginManager;->register(Lcom/alipay/mobile/h5container/api/H5Plugin;)Z

    .line 84
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/core/H5PageFactoryImpl$2;->c:Lcom/alipay/mobile/nebulacore/ui/H5PageViewHolder;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/nebulacore/ui/H5PageViewHolder;->setH5NavBar(Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageFactoryImpl$2;->a:Lcom/alipay/mobile/nebulacore/core/H5PageFactoryImpl;

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/core/H5PageFactoryImpl;->a(Lcom/alipay/mobile/nebulacore/core/H5PageFactoryImpl;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 89
    const-string/jumbo v0, "H5PageFactoryImpl"

    const-string/jumbo v1, "init nav bar end"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulacore/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    return-void

    .line 85
    :catch_0
    move-exception v0

    .line 86
    const-string/jumbo v1, "H5PageFactoryImpl"

    const-string/jumbo v2, "init exception"

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/nebulacore/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
