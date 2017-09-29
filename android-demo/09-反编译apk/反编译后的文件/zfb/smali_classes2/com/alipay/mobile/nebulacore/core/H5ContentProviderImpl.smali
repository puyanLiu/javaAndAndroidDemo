.class public Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;
.super Ljava/lang/Object;
.source "H5ContentProviderImpl.java"

# interfaces
.implements Lcom/alipay/mobile/nebulacore/api/H5ContentProvider;
.implements Lcom/alipay/mobile/nebulacore/web/H5InputStream$H5InputListener;


# static fields
.field public static final TAG:Ljava/lang/String; = "H5ContentProviderImpl"


# instance fields
.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation
.end field

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Z

.field private e:Z

.field private f:Ljava/lang/String;

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/nebulacore/web/H5InputStream;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/lang/String;

.field private i:Landroid/os/Bundle;

.field private j:Lcom/alipay/mobile/h5container/api/H5Page;

.field private k:Lcom/alipay/mobile/nebula/provider/H5ResProvider;

.field private l:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private m:Ljava/util/concurrent/CountDownLatch;

.field private n:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/h5container/api/H5Page;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 316
    new-instance v0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl$1;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl$1;-><init>(Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;)V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->n:Landroid/content/BroadcastReceiver;

    .line 72
    invoke-interface {p1}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->i:Landroid/os/Bundle;

    .line 73
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->j:Lcom/alipay/mobile/h5container/api/H5Page;

    .line 74
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->l:Ljava/util/HashMap;

    .line 75
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->i:Landroid/os/Bundle;

    const-string/jumbo v1, "appId"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulacore/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->h:Ljava/lang/String;

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->g:Ljava/util/List;

    .line 77
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->a:Ljava/util/Map;

    .line 78
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->i:Landroid/os/Bundle;

    const-string/jumbo v1, "offlineHost"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulacore/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->b:Ljava/lang/String;

    .line 79
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->i:Landroid/os/Bundle;

    const-string/jumbo v1, "onlineHost"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulacore/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->c:Ljava/lang/String;

    .line 80
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->i:Landroid/os/Bundle;

    const-string/jumbo v1, "mapHost"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/nebulacore/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->d:Z

    .line 81
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->i:Landroid/os/Bundle;

    const-string/jumbo v1, "enableFallback"

    invoke-static {v0, v1, v3}, Lcom/alipay/mobile/nebulacore/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->e:Z

    .line 82
    const-string/jumbo v0, "H5ContentProviderImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "mapHost "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->d:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " enableFallback "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->e:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulacore/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    const-string/jumbo v0, "H5ContentProviderImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "appId "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " offlineHost "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulacore/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    const-string/jumbo v0, "H5ContentProviderImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "appId "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " onlineHost "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulacore/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->i:Landroid/os/Bundle;

    const-string/jumbo v1, "cdnBaseUrl"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulacore/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->f:Ljava/lang/String;

    .line 86
    const-string/jumbo v0, "H5ContentProviderImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "appId "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " cdnHost "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulacore/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/nebula/provider/H5ResProvider;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebula/provider/H5ProviderManager;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5ResProvider;

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->k:Lcom/alipay/mobile/nebula/provider/H5ResProvider;

    .line 88
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->m:Ljava/util/concurrent/CountDownLatch;

    .line 90
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getExecutor()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl$2;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl$2;-><init>(Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 118
    return-void
.end method

.method private static a(I)Landroid/webkit/WebResourceResponse;
    .locals 4

    .prologue
    .line 261
    const-string/jumbo v0, "text/html"

    .line 262
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    .line 263
    new-instance v2, Landroid/webkit/WebResourceResponse;

    const-string/jumbo v3, "UTF-8"

    invoke-direct {v2, v0, v3, v1}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    .line 264
    return-object v2
.end method

.method private static a(Ljava/lang/String;Ljava/io/InputStream;)Landroid/webkit/WebResourceResponse;
    .locals 3

    .prologue
    .line 283
    const/4 v0, 0x0

    .line 284
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 285
    invoke-static {p0}, Lcom/alipay/mobile/nebulacore/util/H5UrlHelper;->getPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 286
    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/util/FileUtil;->getMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 288
    :cond_0
    new-instance v1, Landroid/webkit/WebResourceResponse;

    const-string/jumbo v2, "UTF-8"

    invoke-direct {v1, v0, v2, p1}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    .line 289
    return-object v1
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 4

    .prologue
    .line 268
    if-nez p1, :cond_0

    .line 269
    const-string/jumbo p1, ""

    .line 271
    :cond_0
    const/4 v0, 0x0

    .line 273
    :try_start_0
    const-string/jumbo v1, "utf-8"

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 277
    :goto_0
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 278
    new-instance v0, Landroid/webkit/WebResourceResponse;

    const-string/jumbo v2, "UTF-8"

    invoke-direct {v0, p0, v2, v1}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    .line 279
    return-object v0

    .line 274
    :catch_0
    move-exception v1

    .line 275
    const-string/jumbo v2, "H5ContentProviderImpl"

    const-string/jumbo v3, "failed to get byte array"

    invoke-static {v2, v3, v1}, Lcom/alipay/mobile/nebulacore/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->h:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;)Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->i:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic c(Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->a:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic d(Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;)Lcom/alipay/mobile/h5container/api/H5Page;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->j:Lcom/alipay/mobile/h5container/api/H5Page;

    return-object v0
.end method

.method static synthetic e(Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;)Landroid/content/BroadcastReceiver;
    .locals 1

    .prologue
    .line 316
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->n:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic f(Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->b:Ljava/lang/String;

    invoke-static {v1}, Lcom/alipay/mobile/nebulacore/util/H5UrlHelper;->parseUrl(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".tar"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic g(Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;)Ljava/util/concurrent/CountDownLatch;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->m:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method


# virtual methods
.method public disconnect()V
    .locals 4

    .prologue
    .line 305
    const-string/jumbo v0, "H5ContentProviderImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "disconnect h5 input stream "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->g:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulacore/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 313
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 314
    return-void

    .line 306
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebulacore/web/H5InputStream;

    .line 308
    :try_start_0
    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/web/H5InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 309
    :catch_0
    move-exception v0

    .line 310
    const-string/jumbo v2, "H5ContentProviderImpl"

    const-string/jumbo v3, "close connection exception."

    invoke-static {v2, v3, v0}, Lcom/alipay/mobile/nebulacore/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public getContent(Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 8

    .prologue
    const/4 v4, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 126
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    const-string/jumbo v0, "H5ContentProviderImpl"

    const-string/jumbo v1, "invalid url parameter"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulacore/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    invoke-static {v3, v3}, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->a(Ljava/lang/String;Ljava/io/InputStream;)Landroid/webkit/WebResourceResponse;

    move-result-object v3

    .line 218
    :goto_0
    return-object v3

    .line 131
    :cond_0
    const-string/jumbo v0, "file://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "http://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 132
    const-string/jumbo v0, "https://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 133
    const-string/jumbo v0, "H5ContentProviderImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "skip load resource for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulacore/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 137
    :cond_1
    const-string/jumbo v0, "/favicon.ico"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 139
    const-string/jumbo v0, "H5ContentProviderImpl"

    const-string/jumbo v1, "favicon request intercepted"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulacore/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    const-string/jumbo v0, ""

    invoke-static {p1, v0}, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object v3

    goto :goto_0

    .line 143
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->l:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 144
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 145
    const-string/jumbo v1, "H5ContentProviderImpl"

    const-string/jumbo v2, "load response from map local."

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebulacore/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    const-string/jumbo v1, "text/html"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object v3

    goto :goto_0

    .line 149
    :cond_3
    const-string/jumbo v0, "#"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v4, :cond_17

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :goto_1
    const-string/jumbo v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v4, :cond_16

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 150
    :goto_2
    const-string/jumbo v0, "H5ContentProviderImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "extracted pure url "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/alipay/mobile/nebulacore/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    const-string/jumbo v0, "file://"

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->b:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    const/4 v0, 0x1

    .line 154
    :goto_3
    const-string/jumbo v2, "https://alipay.com/h5container/un_safe.html"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    if-eqz v0, :cond_6

    .line 156
    :cond_4
    const-string/jumbo v0, "H5ContentProviderImpl"

    const-string/jumbo v1, "load response forbidden by safe strategy."

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulacore/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    sget v0, Lcom/alipay/mobile/nebulacore/R$raw;->un_safe:I

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->a(I)Landroid/webkit/WebResourceResponse;

    move-result-object v3

    goto/16 :goto_0

    :cond_5
    move v0, v2

    .line 153
    goto :goto_3

    .line 158
    :cond_6
    const-string/jumbo v0, "https://alipay.com/h5container/redirect_link.html"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 159
    sget v0, Lcom/alipay/mobile/nebulacore/R$raw;->redirect_link:I

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/global/H5ResourceManager;->getRaw(I)Ljava/lang/String;

    move-result-object v0

    .line 160
    const-string/jumbo v1, "####"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string/jumbo v3, "url"

    invoke-virtual {v2, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 161
    const-string/jumbo v1, "text/html"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object v3

    goto/16 :goto_0

    .line 162
    :cond_7
    const-string/jumbo v0, "https://alipay.com/h5container/white_link.html"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 163
    sget v0, Lcom/alipay/mobile/nebulacore/R$raw;->white_link:I

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->a(I)Landroid/webkit/WebResourceResponse;

    move-result-object v3

    goto/16 :goto_0

    .line 164
    :cond_8
    const-string/jumbo v0, "https://alipay.com/h5container/security_link.html"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 165
    sget v0, Lcom/alipay/mobile/nebulacore/R$raw;->security_link:I

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/global/H5ResourceManager;->getRaw(I)Ljava/lang/String;

    move-result-object v0

    .line 166
    const-string/jumbo v1, "####"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string/jumbo v3, "url"

    invoke-virtual {v2, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 167
    const-string/jumbo v1, "text/html"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object v3

    goto/16 :goto_0

    .line 168
    :cond_9
    const-string/jumbo v0, "https://a.alipayobjects.com/bridgeapi/1.0/jsready.js"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 169
    const-string/jumbo v0, "H5ContentProviderImpl"

    const-string/jumbo v1, "load response for h5 js bridge"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulacore/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->j:Lcom/alipay/mobile/h5container/api/H5Page;

    instance-of v0, v0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    if-eqz v0, :cond_15

    .line 172
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->j:Lcom/alipay/mobile/h5container/api/H5Page;

    check-cast v0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getScriptLoader()Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->composeBridge()Ljava/lang/String;

    move-result-object v0

    .line 174
    :goto_4
    const-string/jumbo v1, "application/javascript"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object v3

    goto/16 :goto_0

    .line 177
    :cond_a
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->k:Lcom/alipay/mobile/nebula/provider/H5ResProvider;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->k:Lcom/alipay/mobile/nebula/provider/H5ResProvider;

    invoke-interface {v0, v1}, Lcom/alipay/mobile/nebula/provider/H5ResProvider;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 178
    const-string/jumbo v0, "H5ContentProviderImpl"

    const-string/jumbo v2, "load response from resource provider."

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebulacore/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->k:Lcom/alipay/mobile/nebula/provider/H5ResProvider;

    invoke-interface {v0, v1}, Lcom/alipay/mobile/nebula/provider/H5ResProvider;->getResource(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 180
    invoke-static {v1, v0}, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->a(Ljava/lang/String;Ljava/io/InputStream;)Landroid/webkit/WebResourceResponse;

    move-result-object v3

    goto/16 :goto_0

    .line 184
    :cond_b
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->m:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-lez v0, :cond_c

    .line 185
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 186
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->m:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 187
    const-string/jumbo v0, "H5ContentProviderImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "wait parse elapse "

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v4, v6, v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebulacore/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 193
    :cond_c
    :goto_5
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->a:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 194
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->a:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 195
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 196
    const-string/jumbo v0, "H5ContentProviderImpl"

    const-string/jumbo v3, "load response from resource package."

    invoke-static {v0, v3}, Lcom/alipay/mobile/nebulacore/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    invoke-static {v1, v2}, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->a(Ljava/lang/String;Ljava/io/InputStream;)Landroid/webkit/WebResourceResponse;

    move-result-object v3

    goto/16 :goto_0

    .line 189
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_5

    .line 200
    :cond_d
    invoke-static {v1}, Lcom/alipay/mobile/nebulacore/global/H5GlobalResource;->getContent(Ljava/lang/String;)[B

    move-result-object v0

    .line 201
    if-eqz v0, :cond_e

    .line 202
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 203
    invoke-static {v1, v2}, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->a(Ljava/lang/String;Ljava/io/InputStream;)Landroid/webkit/WebResourceResponse;

    move-result-object v3

    goto/16 :goto_0

    .line 207
    :cond_e
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->e:Z

    if-eqz v0, :cond_14

    .line 208
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->d:Z

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->c:Ljava/lang/String;

    :goto_6
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->f:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_f

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_11

    :cond_f
    const-string/jumbo v0, "H5ContentProviderImpl"

    const-string/jumbo v1, "cdn url or install host empty!"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulacore/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v3

    .line 210
    :goto_7
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_13

    .line 211
    const-string/jumbo v1, "H5ContentProviderImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "get fallback url "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebulacore/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    new-instance v1, Lcom/alipay/mobile/nebulacore/web/H5InputStream;

    invoke-direct {v1, v0, p0}, Lcom/alipay/mobile/nebulacore/web/H5InputStream;-><init>(Ljava/lang/String;Lcom/alipay/mobile/nebulacore/web/H5InputStream$H5InputListener;)V

    .line 213
    const-string/jumbo v2, "H5ContentProviderImpl"

    const-string/jumbo v3, "load response from fallback."

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebulacore/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->a(Ljava/lang/String;Ljava/io/InputStream;)Landroid/webkit/WebResourceResponse;

    move-result-object v3

    goto/16 :goto_0

    .line 208
    :cond_10
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->b:Ljava/lang/String;

    goto :goto_6

    :cond_11
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_12

    const-string/jumbo v0, "H5ContentProviderImpl"

    const-string/jumbo v1, "url not starts with host"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulacore/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v3

    goto :goto_7

    :cond_12
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->f:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "H5ContentProviderImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "fallback final url "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebulacore/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v1}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    const-string/jumbo v2, "fallbackUrl"

    invoke-virtual {v1, v2, v0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->j:Lcom/alipay/mobile/h5container/api/H5Page;

    sget-object v4, Lcom/alipay/mobile/h5container/api/H5Plugin$CommonEvents;->H5_AL_SESSION_FALLBACK:Ljava/lang/String;

    invoke-interface {v2, v4, v1}, Lcom/alipay/mobile/h5container/api/H5Page;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    goto :goto_7

    .line 217
    :cond_13
    const-string/jumbo v0, "H5ContentProviderImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "load response from web "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulacore/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_14
    move-object v0, v3

    goto/16 :goto_7

    :cond_15
    move-object v0, v3

    goto/16 :goto_4

    :cond_16
    move-object v1, v0

    goto/16 :goto_2

    :cond_17
    move-object v0, p1

    goto/16 :goto_1
.end method

.method public mapContent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->l:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    return-void
.end method

.method public onInputClose(Lcom/alipay/mobile/nebulacore/web/H5InputStream;)V
    .locals 2

    .prologue
    .line 294
    const-string/jumbo v0, "H5ContentProviderImpl"

    const-string/jumbo v1, "on input stream close."

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulacore/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 296
    return-void
.end method

.method public onInputOpen(Lcom/alipay/mobile/nebulacore/web/H5InputStream;)V
    .locals 2

    .prologue
    .line 300
    const-string/jumbo v0, "H5ContentProviderImpl"

    const-string/jumbo v1, "on input stream open."

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulacore/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 302
    return-void
.end method

.method public releaseContent()V
    .locals 2

    .prologue
    .line 361
    const-string/jumbo v0, "H5ContentProviderImpl"

    const-string/jumbo v1, "releaseContent"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulacore/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    .line 363
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->n:Landroid/content/BroadcastReceiver;

    .line 362
    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 364
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 365
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->j:Lcom/alipay/mobile/h5container/api/H5Page;

    .line 366
    return-void
.end method
