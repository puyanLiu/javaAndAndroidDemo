.class public Lcom/alipay/pushsdk/push/c/a;
.super Ljava/lang/Object;
.source "NotificationServiceStateEvent.java"


# static fields
.field private static final a:Ljava/lang/String;

.field private static c:Lcom/alipay/pushsdk/push/c/a;


# instance fields
.field private b:Lcom/alipay/pushsdk/push/c/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-class v0, Lcom/alipay/pushsdk/push/c/a;

    invoke-static {v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->makeLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/pushsdk/push/c/a;->a:Ljava/lang/String;

    .line 12
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    return-void
.end method

.method public static final a()Lcom/alipay/pushsdk/push/c/a;
    .locals 2

    .prologue
    .line 21
    sget-object v0, Lcom/alipay/pushsdk/push/c/a;->c:Lcom/alipay/pushsdk/push/c/a;

    if-eqz v0, :cond_0

    .line 22
    sget-object v0, Lcom/alipay/pushsdk/push/c/a;->c:Lcom/alipay/pushsdk/push/c/a;

    .line 31
    :goto_0
    return-object v0

    .line 25
    :cond_0
    const-class v1, Lcom/alipay/pushsdk/push/c/a;

    monitor-enter v1

    .line 26
    :try_start_0
    sget-object v0, Lcom/alipay/pushsdk/push/c/a;->c:Lcom/alipay/pushsdk/push/c/a;

    if-eqz v0, :cond_1

    .line 27
    sget-object v0, Lcom/alipay/pushsdk/push/c/a;->c:Lcom/alipay/pushsdk/push/c/a;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 25
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 29
    :cond_1
    :try_start_1
    new-instance v0, Lcom/alipay/pushsdk/push/c/a;

    invoke-direct {v0}, Lcom/alipay/pushsdk/push/c/a;-><init>()V

    sput-object v0, Lcom/alipay/pushsdk/push/c/a;->c:Lcom/alipay/pushsdk/push/c/a;

    .line 25
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 31
    sget-object v0, Lcom/alipay/pushsdk/push/c/a;->c:Lcom/alipay/pushsdk/push/c/a;

    goto :goto_0
.end method

.method static synthetic b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/alipay/pushsdk/push/c/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method private c()Lcom/alipay/pushsdk/push/c/b;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/alipay/pushsdk/push/c/a;->b:Lcom/alipay/pushsdk/push/c/b;

    if-nez v0, :cond_0

    .line 52
    new-instance v0, Lcom/alipay/pushsdk/push/c/b;

    invoke-direct {v0, p0}, Lcom/alipay/pushsdk/push/c/b;-><init>(Lcom/alipay/pushsdk/push/c/a;)V

    iput-object v0, p0, Lcom/alipay/pushsdk/push/c/a;->b:Lcom/alipay/pushsdk/push/c/b;

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/alipay/pushsdk/push/c/a;->b:Lcom/alipay/pushsdk/push/c/b;

    return-object v0
.end method


# virtual methods
.method public final a(I)V
    .locals 2

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/alipay/pushsdk/push/c/a;->c()Lcom/alipay/pushsdk/push/c/b;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/pushsdk/push/c/b;->notifyObservers(Ljava/lang/Object;)V

    .line 48
    return-void
.end method

.method public final a(Lcom/alipay/pushsdk/push/c/c;)V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/alipay/pushsdk/push/c/a;->c()Lcom/alipay/pushsdk/push/c/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/pushsdk/push/c/b;->addObserver(Ljava/util/Observer;)V

    .line 40
    return-void
.end method
