.class Lcom/alipay/mobile/egg/rpc/SyncServiceHelper$AdSyncServiceHelperHolder;
.super Ljava/lang/Object;
.source "SyncServiceHelper.java"


# static fields
.field private static instance:Lcom/alipay/mobile/egg/rpc/SyncServiceHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 21
    new-instance v0, Lcom/alipay/mobile/egg/rpc/SyncServiceHelper;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/alipay/mobile/egg/rpc/SyncServiceHelper;-><init>(Lcom/alipay/mobile/egg/rpc/SyncServiceHelper;)V

    sput-object v0, Lcom/alipay/mobile/egg/rpc/SyncServiceHelper$AdSyncServiceHelperHolder;->instance:Lcom/alipay/mobile/egg/rpc/SyncServiceHelper;

    .line 17
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0()Lcom/alipay/mobile/egg/rpc/SyncServiceHelper;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/alipay/mobile/egg/rpc/SyncServiceHelper$AdSyncServiceHelperHolder;->instance:Lcom/alipay/mobile/egg/rpc/SyncServiceHelper;

    return-object v0
.end method
