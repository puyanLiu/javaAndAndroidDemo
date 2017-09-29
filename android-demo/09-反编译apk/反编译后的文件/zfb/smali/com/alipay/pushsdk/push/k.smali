.class public Lcom/alipay/pushsdk/push/k;
.super Ljava/lang/Object;
.source "PushConnectConfig.java"


# static fields
.field private static b:Lcom/alipay/pushsdk/push/k;


# instance fields
.field private a:Z

.field private c:Z

.field private d:Z


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/pushsdk/push/k;->a:Z

    .line 9
    iput-boolean v1, p0, Lcom/alipay/pushsdk/push/k;->c:Z

    .line 10
    iput-boolean v1, p0, Lcom/alipay/pushsdk/push/k;->d:Z

    .line 8
    return-void
.end method

.method public static a()Lcom/alipay/pushsdk/push/k;
    .locals 2

    .prologue
    .line 13
    sget-object v0, Lcom/alipay/pushsdk/push/k;->b:Lcom/alipay/pushsdk/push/k;

    if-nez v0, :cond_1

    .line 15
    const-class v1, Lcom/alipay/pushsdk/push/k;

    monitor-enter v1

    .line 16
    :try_start_0
    sget-object v0, Lcom/alipay/pushsdk/push/k;->b:Lcom/alipay/pushsdk/push/k;

    if-nez v0, :cond_0

    .line 18
    new-instance v0, Lcom/alipay/pushsdk/push/k;

    invoke-direct {v0}, Lcom/alipay/pushsdk/push/k;-><init>()V

    sput-object v0, Lcom/alipay/pushsdk/push/k;->b:Lcom/alipay/pushsdk/push/k;

    .line 15
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    :cond_1
    sget-object v0, Lcom/alipay/pushsdk/push/k;->b:Lcom/alipay/pushsdk/push/k;

    return-object v0

    .line 15
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final a(Z)V
    .locals 2

    .prologue
    .line 28
    iput-boolean p1, p0, Lcom/alipay/pushsdk/push/k;->a:Z

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "isAmnetOpen:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/alipay/pushsdk/push/k;->c:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " isAmnetPushOpen:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/alipay/pushsdk/push/k;->d:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " isUseAmnet:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->d(Ljava/lang/String;)V

    .line 30
    return-void
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 25
    iget-boolean v0, p0, Lcom/alipay/pushsdk/push/k;->a:Z

    return v0
.end method
