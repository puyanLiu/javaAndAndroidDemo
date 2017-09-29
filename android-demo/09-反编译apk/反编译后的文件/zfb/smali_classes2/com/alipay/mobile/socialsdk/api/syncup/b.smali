.class final Lcom/alipay/mobile/socialsdk/api/syncup/b;
.super Ljava/lang/Object;
.source "SyncUpManager.java"


# static fields
.field private static final a:Lcom/alipay/mobile/socialsdk/api/syncup/SyncUpManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 30
    new-instance v0, Lcom/alipay/mobile/socialsdk/api/syncup/SyncUpManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/alipay/mobile/socialsdk/api/syncup/SyncUpManager;-><init>(B)V

    sput-object v0, Lcom/alipay/mobile/socialsdk/api/syncup/b;->a:Lcom/alipay/mobile/socialsdk/api/syncup/SyncUpManager;

    .line 29
    return-void
.end method

.method static synthetic a()Lcom/alipay/mobile/socialsdk/api/syncup/SyncUpManager;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/alipay/mobile/socialsdk/api/syncup/b;->a:Lcom/alipay/mobile/socialsdk/api/syncup/SyncUpManager;

    return-object v0
.end method
