.class public Lcom/alipay/mobile/egg/MetaInfo;
.super Lcom/alipay/mobile/framework/BaseMetaInfo;
.source "MetaInfo.java"


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/alipay/mobile/framework/BaseMetaInfo;-><init>()V

    .line 23
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    .line 24
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 25
    const-string/jumbo v2, "com.alipay.mobile.LAUNCHER_TAB_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 26
    new-instance v2, Lcom/alipay/mobile/egg/MetaInfo$TabChangeListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/alipay/mobile/egg/MetaInfo$TabChangeListener;-><init>(Lcom/alipay/mobile/egg/MetaInfo;Lcom/alipay/mobile/egg/MetaInfo$TabChangeListener;)V

    .line 27
    invoke-virtual {v0, v2, v1}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 29
    invoke-static {}, Lcom/alipay/mobile/egg/rpc/SyncServiceHelper;->getInstance()Lcom/alipay/mobile/egg/rpc/SyncServiceHelper;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/egg/rpc/SyncCallbackImpl;

    invoke-direct {v1}, Lcom/alipay/mobile/egg/rpc/SyncCallbackImpl;-><init>()V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/egg/rpc/SyncServiceHelper;->registerSyncCallback(Lcom/alipay/mobile/rome/longlinkservice/ISyncCallback;)Z

    .line 30
    return-void
.end method
