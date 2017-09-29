.class public Lcom/alipay/pushsdk/util/a;
.super Ljava/lang/Object;
.source "AmnetManagerFactory.java"


# static fields
.field private static a:Lcom/alipay/mobile/common/amnet/api/AmnetManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a()Lcom/alipay/mobile/common/amnet/api/AmnetManager;
    .locals 2

    .prologue
    .line 15
    sget-object v0, Lcom/alipay/pushsdk/util/a;->a:Lcom/alipay/mobile/common/amnet/api/AmnetManager;

    if-eqz v0, :cond_0

    .line 16
    sget-object v0, Lcom/alipay/pushsdk/util/a;->a:Lcom/alipay/mobile/common/amnet/api/AmnetManager;

    .line 25
    :goto_0
    return-object v0

    .line 19
    :cond_0
    const-class v1, Lcom/alipay/pushsdk/util/a;

    monitor-enter v1

    .line 20
    :try_start_0
    sget-object v0, Lcom/alipay/pushsdk/util/a;->a:Lcom/alipay/mobile/common/amnet/api/AmnetManager;

    if-eqz v0, :cond_1

    .line 21
    sget-object v0, Lcom/alipay/pushsdk/util/a;->a:Lcom/alipay/mobile/common/amnet/api/AmnetManager;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 19
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 23
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/alipay/mobile/common/amnet/api/AmnetBeanFactory;->getAmnetManager()Lcom/alipay/mobile/common/amnet/api/AmnetManager;

    move-result-object v0

    sput-object v0, Lcom/alipay/pushsdk/util/a;->a:Lcom/alipay/mobile/common/amnet/api/AmnetManager;

    .line 19
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 25
    sget-object v0, Lcom/alipay/pushsdk/util/a;->a:Lcom/alipay/mobile/common/amnet/api/AmnetManager;

    goto :goto_0
.end method
