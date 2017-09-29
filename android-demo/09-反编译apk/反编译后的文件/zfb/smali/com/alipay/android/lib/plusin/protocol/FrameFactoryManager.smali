.class public Lcom/alipay/android/lib/plusin/protocol/FrameFactoryManager;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/alipay/android/lib/plusin/protocol/FrameFactoryManager;


# instance fields
.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/alipay/android/app/helper/ProtocolType;",
            "Lcom/alipay/android/lib/plusin/protocol/IFrameFactory",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/lib/plusin/protocol/FrameFactoryManager;->b:Ljava/util/Map;

    .line 28
    return-void
.end method

.method public static a(Lcom/alipay/android/app/helper/ProtocolType;Lcom/alipay/android/lib/plusin/protocol/FrameData;)Lcom/alipay/android/lib/plusin/protocol/FrameData;
    .locals 3

    .prologue
    .line 53
    invoke-static {}, Lcom/alipay/android/lib/plusin/protocol/FrameFactoryManager;->a()Lcom/alipay/android/lib/plusin/protocol/FrameFactoryManager;

    move-result-object v2

    .line 57
    iget-object v0, v2, Lcom/alipay/android/lib/plusin/protocol/FrameFactoryManager;->b:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/lib/plusin/protocol/IFrameFactory;

    .line 58
    if-nez v0, :cond_0

    .line 59
    new-instance v0, Lcom/alipay/android/app/exception/AppErrorException;

    const-string/jumbo v1, "no such frame factory type "

    invoke-direct {v0, v1}, Lcom/alipay/android/app/exception/AppErrorException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    :cond_0
    const/4 v1, 0x0

    .line 62
    iget-object v2, v2, Lcom/alipay/android/lib/plusin/protocol/FrameFactoryManager;->b:Ljava/util/Map;

    invoke-interface {v2, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 63
    invoke-interface {v0, p1}, Lcom/alipay/android/lib/plusin/protocol/IFrameFactory;->b(Lcom/alipay/android/lib/plusin/protocol/FrameData;)Lcom/alipay/android/lib/plusin/ui/WindowData;

    move-result-object v1

    .line 65
    :cond_1
    if-nez v1, :cond_2

    .line 68
    :goto_0
    invoke-interface {v0, p1}, Lcom/alipay/android/lib/plusin/protocol/IFrameFactory;->a(Lcom/alipay/android/lib/plusin/protocol/FrameData;)V

    .line 70
    invoke-virtual {p1}, Lcom/alipay/android/lib/plusin/protocol/FrameData;->i()Lcom/alipay/android/app/net/Response;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/alipay/android/app/net/Response;->a(Lcom/alipay/android/app/helper/ProtocolType;)V

    .line 72
    return-object p1

    :cond_2
    move-object p1, v1

    goto :goto_0
.end method

.method private static a()Lcom/alipay/android/lib/plusin/protocol/FrameFactoryManager;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/alipay/android/lib/plusin/protocol/FrameFactoryManager;->a:Lcom/alipay/android/lib/plusin/protocol/FrameFactoryManager;

    if-nez v0, :cond_0

    .line 32
    new-instance v0, Lcom/alipay/android/lib/plusin/protocol/FrameFactoryManager;

    invoke-direct {v0}, Lcom/alipay/android/lib/plusin/protocol/FrameFactoryManager;-><init>()V

    sput-object v0, Lcom/alipay/android/lib/plusin/protocol/FrameFactoryManager;->a:Lcom/alipay/android/lib/plusin/protocol/FrameFactoryManager;

    .line 34
    :cond_0
    sget-object v0, Lcom/alipay/android/lib/plusin/protocol/FrameFactoryManager;->a:Lcom/alipay/android/lib/plusin/protocol/FrameFactoryManager;

    return-object v0
.end method

.method public static a(Lcom/alipay/android/lib/plusin/protocol/IFrameFactory;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/android/lib/plusin/protocol/IFrameFactory",
            "<+",
            "Lcom/alipay/android/lib/plusin/ui/WindowData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 43
    invoke-static {}, Lcom/alipay/android/lib/plusin/protocol/FrameFactoryManager;->a()Lcom/alipay/android/lib/plusin/protocol/FrameFactoryManager;

    move-result-object v0

    .line 44
    invoke-interface {p0}, Lcom/alipay/android/lib/plusin/protocol/IFrameFactory;->a()Lcom/alipay/android/app/helper/ProtocolType;

    move-result-object v1

    .line 45
    iget-object v2, v0, Lcom/alipay/android/lib/plusin/protocol/FrameFactoryManager;->b:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 46
    iget-object v0, v0, Lcom/alipay/android/lib/plusin/protocol/FrameFactoryManager;->b:Ljava/util/Map;

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    :cond_0
    return-void
.end method
