.class public Lcom/alipay/android/app/down/FileDownloadService;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/android/app/down/FileDownloadService$IDownloadListener;,
        Lcom/alipay/android/app/down/FileDownloadService$a;,
        Lcom/alipay/android/app/down/FileDownloadService$b;
    }
.end annotation


# static fields
.field private static a:Lcom/alipay/android/app/down/FileDownloadService;


# instance fields
.field private b:Ljava/lang/Object;

.field private c:Ljava/lang/Object;

.field private d:Z

.field private e:Lcom/alipay/android/app/down/FileDownloadService$b;

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/app/down/FileDownloadService$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/down/FileDownloadService;->b:Ljava/lang/Object;

    .line 24
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/down/FileDownloadService;->c:Ljava/lang/Object;

    .line 25
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/app/down/FileDownloadService;->d:Z

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/app/down/FileDownloadService;->e:Lcom/alipay/android/app/down/FileDownloadService$b;

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/down/FileDownloadService;->f:Ljava/util/List;

    .line 37
    iget-object v0, p0, Lcom/alipay/android/app/down/FileDownloadService;->e:Lcom/alipay/android/app/down/FileDownloadService$b;

    if-nez v0, :cond_0

    .line 38
    new-instance v0, Lcom/alipay/android/app/down/FileDownloadService$b;

    invoke-direct {v0, p0}, Lcom/alipay/android/app/down/FileDownloadService$b;-><init>(Lcom/alipay/android/app/down/FileDownloadService;)V

    iput-object v0, p0, Lcom/alipay/android/app/down/FileDownloadService;->e:Lcom/alipay/android/app/down/FileDownloadService$b;

    .line 39
    iget-object v0, p0, Lcom/alipay/android/app/down/FileDownloadService;->e:Lcom/alipay/android/app/down/FileDownloadService$b;

    invoke-virtual {v0}, Lcom/alipay/android/app/down/FileDownloadService$b;->start()V

    .line 41
    const-wide/16 v0, 0x64

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static a()Lcom/alipay/android/app/down/FileDownloadService;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/alipay/android/app/down/FileDownloadService;->a:Lcom/alipay/android/app/down/FileDownloadService;

    if-nez v0, :cond_0

    .line 31
    new-instance v0, Lcom/alipay/android/app/down/FileDownloadService;

    invoke-direct {v0}, Lcom/alipay/android/app/down/FileDownloadService;-><init>()V

    sput-object v0, Lcom/alipay/android/app/down/FileDownloadService;->a:Lcom/alipay/android/app/down/FileDownloadService;

    .line 33
    :cond_0
    sget-object v0, Lcom/alipay/android/app/down/FileDownloadService;->a:Lcom/alipay/android/app/down/FileDownloadService;

    return-object v0
.end method

.method static synthetic a(Lcom/alipay/android/app/down/FileDownloadService;)Z
    .locals 1

    .prologue
    .line 20
    iget-boolean v0, p0, Lcom/alipay/android/app/down/FileDownloadService;->d:Z

    return v0
.end method

.method static synthetic b(Lcom/alipay/android/app/down/FileDownloadService;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/alipay/android/app/down/FileDownloadService;->c:Ljava/lang/Object;

    return-object v0
.end method

.method private b()Z
    .locals 2

    .prologue
    .line 61
    iget-object v1, p0, Lcom/alipay/android/app/down/FileDownloadService;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 62
    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/app/down/FileDownloadService;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 63
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic c(Lcom/alipay/android/app/down/FileDownloadService;)Z
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/alipay/android/app/down/FileDownloadService;->b()Z

    move-result v0

    return v0
.end method

.method static synthetic d(Lcom/alipay/android/app/down/FileDownloadService;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/alipay/android/app/down/FileDownloadService;->b:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic e(Lcom/alipay/android/app/down/FileDownloadService;)Ljava/util/List;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/alipay/android/app/down/FileDownloadService;->f:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/android/app/down/FileDownloadService$IDownloadListener;)V
    .locals 3

    .prologue
    .line 48
    iget-object v1, p0, Lcom/alipay/android/app/down/FileDownloadService;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 49
    :try_start_0
    new-instance v0, Lcom/alipay/android/app/down/FileDownloadService$a;

    invoke-direct {v0, p0}, Lcom/alipay/android/app/down/FileDownloadService$a;-><init>(Lcom/alipay/android/app/down/FileDownloadService;)V

    .line 50
    iput-object p2, v0, Lcom/alipay/android/app/down/FileDownloadService$a;->a:Ljava/lang/String;

    .line 51
    iput-object p3, v0, Lcom/alipay/android/app/down/FileDownloadService$a;->b:Lcom/alipay/android/app/down/FileDownloadService$IDownloadListener;

    .line 52
    iput-object p1, v0, Lcom/alipay/android/app/down/FileDownloadService$a;->c:Ljava/lang/String;

    .line 53
    iget-object v2, p0, Lcom/alipay/android/app/down/FileDownloadService;->f:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    iget-object v1, p0, Lcom/alipay/android/app/down/FileDownloadService;->c:Ljava/lang/Object;

    monitor-enter v1

    .line 56
    :try_start_1
    iget-object v0, p0, Lcom/alipay/android/app/down/FileDownloadService;->c:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 57
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    .line 54
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 57
    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method
