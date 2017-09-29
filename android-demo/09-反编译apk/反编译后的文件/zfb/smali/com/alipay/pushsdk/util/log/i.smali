.class public final Lcom/alipay/pushsdk/util/log/i;
.super Ljava/lang/Object;
.source "StorageManager.java"


# static fields
.field private static a:Ljava/util/concurrent/ExecutorService;


# instance fields
.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 8
    sput-object v0, Lcom/alipay/pushsdk/util/log/i;->a:Ljava/util/concurrent/ExecutorService;

    .line 6
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/alipay/pushsdk/util/log/i;->b:Ljava/lang/String;

    .line 17
    iput-object p2, p0, Lcom/alipay/pushsdk/util/log/i;->c:Ljava/lang/String;

    .line 18
    iput-object p3, p0, Lcom/alipay/pushsdk/util/log/i;->d:Ljava/lang/String;

    .line 19
    return-void
.end method

.method static synthetic a(Lcom/alipay/pushsdk/util/log/i;)V
    .locals 4

    .prologue
    .line 32
    invoke-static {}, Lcom/alipay/pushsdk/util/log/f;->c()Lcom/alipay/pushsdk/util/log/f;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/pushsdk/util/log/i;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/pushsdk/util/log/i;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/alipay/pushsdk/util/log/i;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/pushsdk/util/log/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 29
    sget-object v0, Lcom/alipay/pushsdk/util/log/i;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/alipay/pushsdk/util/log/j;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/alipay/pushsdk/util/log/j;-><init>(Lcom/alipay/pushsdk/util/log/i;B)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 30
    return-void
.end method
