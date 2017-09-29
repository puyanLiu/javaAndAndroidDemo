.class Lcom/alipay/mobile/emotion/manager/SyncServiceHelper$AdSyncServiceHelperHolder;
.super Ljava/lang/Object;
.source "SyncServiceHelper.java"


# static fields
.field private static instance:Lcom/alipay/mobile/emotion/manager/SyncServiceHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 20
    new-instance v0, Lcom/alipay/mobile/emotion/manager/SyncServiceHelper;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/alipay/mobile/emotion/manager/SyncServiceHelper;-><init>(Lcom/alipay/mobile/emotion/manager/SyncServiceHelper;)V

    sput-object v0, Lcom/alipay/mobile/emotion/manager/SyncServiceHelper$AdSyncServiceHelperHolder;->instance:Lcom/alipay/mobile/emotion/manager/SyncServiceHelper;

    .line 16
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0()Lcom/alipay/mobile/emotion/manager/SyncServiceHelper;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/alipay/mobile/emotion/manager/SyncServiceHelper$AdSyncServiceHelperHolder;->instance:Lcom/alipay/mobile/emotion/manager/SyncServiceHelper;

    return-object v0
.end method
