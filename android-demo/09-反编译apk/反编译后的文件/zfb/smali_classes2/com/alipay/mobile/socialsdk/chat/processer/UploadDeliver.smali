.class public Lcom/alipay/mobile/socialsdk/chat/processer/UploadDeliver;
.super Ljava/lang/Object;
.source "UploadDeliver.java"


# static fields
.field private static c:Lcom/alipay/mobile/socialsdk/chat/processer/UploadDeliver;


# instance fields
.field private final a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/socialsdk/chat/processer/UploadDeliver$OnResourceUploadListener;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Landroid/os/Handler;

.field private e:Ljava/lang/String;

.field private f:I


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/processer/UploadDeliver;->a:Ljava/util/HashMap;

    .line 17
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/processer/UploadDeliver;->b:Ljava/util/HashSet;

    .line 21
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/processer/UploadDeliver;->d:Landroid/os/Handler;

    .line 29
    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/socialsdk/chat/processer/UploadDeliver;)Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/processer/UploadDeliver;->a:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic b(Lcom/alipay/mobile/socialsdk/chat/processer/UploadDeliver;)Ljava/util/HashSet;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/processer/UploadDeliver;->b:Ljava/util/HashSet;

    return-object v0
.end method

.method public static declared-synchronized getInstance()Lcom/alipay/mobile/socialsdk/chat/processer/UploadDeliver;
    .locals 2

    .prologue
    .line 32
    const-class v1, Lcom/alipay/mobile/socialsdk/chat/processer/UploadDeliver;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/mobile/socialsdk/chat/processer/UploadDeliver;->c:Lcom/alipay/mobile/socialsdk/chat/processer/UploadDeliver;

    if-nez v0, :cond_0

    .line 33
    new-instance v0, Lcom/alipay/mobile/socialsdk/chat/processer/UploadDeliver;

    invoke-direct {v0}, Lcom/alipay/mobile/socialsdk/chat/processer/UploadDeliver;-><init>()V

    sput-object v0, Lcom/alipay/mobile/socialsdk/chat/processer/UploadDeliver;->c:Lcom/alipay/mobile/socialsdk/chat/processer/UploadDeliver;

    .line 35
    :cond_0
    sget-object v0, Lcom/alipay/mobile/socialsdk/chat/processer/UploadDeliver;->c:Lcom/alipay/mobile/socialsdk/chat/processer/UploadDeliver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 32
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public addUploadId(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/processer/UploadDeliver;->b:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 92
    return-void
.end method

.method public deliverProcess(Ljava/lang/String;I)V
    .locals 5

    .prologue
    .line 67
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/chat/processer/UploadDeliver;->e:Ljava/lang/String;

    .line 68
    const/16 v0, 0x64

    if-ne p2, v0, :cond_0

    const/16 v0, 0x63

    :goto_0
    iput v0, p0, Lcom/alipay/mobile/socialsdk/chat/processer/UploadDeliver;->f:I

    .line 69
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/processer/UploadDeliver;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/chat/processer/UploadDeliver$OnResourceUploadListener;

    .line 70
    if-nez v0, :cond_1

    .line 88
    :goto_1
    return-void

    :cond_0
    move v0, p2

    .line 68
    goto :goto_0

    .line 72
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "UploadDeliver"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "deliverProcess "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/chat/processer/UploadDeliver;->d:Landroid/os/Handler;

    new-instance v2, Lcom/alipay/mobile/socialsdk/chat/processer/m;

    invoke-direct {v2, p0, p1, v0, p2}, Lcom/alipay/mobile/socialsdk/chat/processer/m;-><init>(Lcom/alipay/mobile/socialsdk/chat/processer/UploadDeliver;Ljava/lang/String;Lcom/alipay/mobile/socialsdk/chat/processer/UploadDeliver$OnResourceUploadListener;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1
.end method

.method public getImageUploadInfo(Ljava/lang/String;Lcom/alipay/mobile/socialsdk/chat/processer/UploadDeliver$OnResourceUploadListener;)V
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/processer/UploadDeliver;->b:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 50
    const/16 v0, 0x63

    invoke-interface {p2, p1, v0}, Lcom/alipay/mobile/socialsdk/chat/processer/UploadDeliver$OnResourceUploadListener;->onUploadProcessChange(Ljava/lang/String;I)V

    .line 63
    :cond_0
    :goto_0
    return-void

    .line 54
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/processer/UploadDeliver;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 55
    const/4 v0, 0x0

    invoke-interface {p2, p1, v0}, Lcom/alipay/mobile/socialsdk/chat/processer/UploadDeliver$OnResourceUploadListener;->onUploadProcessChange(Ljava/lang/String;I)V

    .line 56
    invoke-interface {p2, p1}, Lcom/alipay/mobile/socialsdk/chat/processer/UploadDeliver$OnResourceUploadListener;->setTag(Ljava/lang/String;)V

    .line 57
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/processer/UploadDeliver;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 58
    :cond_2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 59
    invoke-interface {p2, p1}, Lcom/alipay/mobile/socialsdk/chat/processer/UploadDeliver$OnResourceUploadListener;->setTag(Ljava/lang/String;)V

    .line 60
    iget v0, p0, Lcom/alipay/mobile/socialsdk/chat/processer/UploadDeliver;->f:I

    invoke-interface {p2, p1, v0}, Lcom/alipay/mobile/socialsdk/chat/processer/UploadDeliver$OnResourceUploadListener;->onUploadProcessChange(Ljava/lang/String;I)V

    .line 61
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/processer/UploadDeliver;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public getImageUploadInfo(Ljava/util/List;Lcom/alipay/mobile/socialsdk/chat/processer/UploadDeliver$OnResourceUploadListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/alipay/mobile/socialsdk/chat/processer/UploadDeliver$OnResourceUploadListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 39
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 46
    :cond_0
    return-void

    .line 39
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 40
    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/chat/processer/UploadDeliver;->b:Ljava/util/HashSet;

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 44
    invoke-virtual {p0, v0, p2}, Lcom/alipay/mobile/socialsdk/chat/processer/UploadDeliver;->getImageUploadInfo(Ljava/lang/String;Lcom/alipay/mobile/socialsdk/chat/processer/UploadDeliver$OnResourceUploadListener;)V

    goto :goto_0
.end method

.method public removeId(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/processer/UploadDeliver;->b:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 96
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/processer/UploadDeliver;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    return-void
.end method
