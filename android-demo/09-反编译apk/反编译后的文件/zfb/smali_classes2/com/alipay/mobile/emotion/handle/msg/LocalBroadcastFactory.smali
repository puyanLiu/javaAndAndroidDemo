.class public Lcom/alipay/mobile/emotion/handle/msg/LocalBroadcastFactory;
.super Ljava/lang/Object;
.source "LocalBroadcastFactory.java"


# static fields
.field private static final KEY_BUNDLE:Ljava/lang/String; = "messageBundle"

.field private static final KEY_MAPS:Ljava/lang/String; = "messageMaps"

.field private static final TAG:Ljava/lang/String;

.field private static sInstance:Lcom/alipay/mobile/emotion/handle/msg/LocalBroadcastFactory;


# instance fields
.field private final mReceivers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/BroadcastReceiver;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lcom/alipay/mobile/emotion/handle/msg/LocalBroadcastFactory;

    .line 27
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 26
    sput-object v0, Lcom/alipay/mobile/emotion/handle/msg/LocalBroadcastFactory;->TAG:Ljava/lang/String;

    .line 30
    new-instance v0, Lcom/alipay/mobile/emotion/handle/msg/LocalBroadcastFactory;

    invoke-direct {v0}, Lcom/alipay/mobile/emotion/handle/msg/LocalBroadcastFactory;-><init>()V

    sput-object v0, Lcom/alipay/mobile/emotion/handle/msg/LocalBroadcastFactory;->sInstance:Lcom/alipay/mobile/emotion/handle/msg/LocalBroadcastFactory;

    .line 24
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/emotion/handle/msg/LocalBroadcastFactory;->mReceivers:Ljava/util/HashMap;

    .line 35
    return-void
.end method

.method private getCategoryReceiver(Ljava/lang/String;Ljava/lang/String;)Landroid/content/BroadcastReceiver;
    .locals 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/alipay/mobile/emotion/handle/msg/LocalBroadcastFactory;->mReceivers:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 64
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v1

    if-gtz v1, :cond_1

    .line 65
    :cond_0
    const/4 v0, 0x0

    .line 67
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/BroadcastReceiver;

    goto :goto_0
.end method

.method public static getInstance()Lcom/alipay/mobile/emotion/handle/msg/LocalBroadcastFactory;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/alipay/mobile/emotion/handle/msg/LocalBroadcastFactory;->sInstance:Lcom/alipay/mobile/emotion/handle/msg/LocalBroadcastFactory;

    return-object v0
.end method

.method private static getLocalBroadcastManager()Landroid/support/v4/content/LocalBroadcastManager;
    .locals 1

    .prologue
    .line 50
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    .line 51
    return-object v0
.end method

.method private putReceiverByCategory(Ljava/lang/String;Ljava/lang/String;Landroid/content/BroadcastReceiver;)V
    .locals 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/alipay/mobile/emotion/handle/msg/LocalBroadcastFactory;->mReceivers:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 78
    if-nez v0, :cond_0

    .line 79
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 80
    iget-object v1, p0, Lcom/alipay/mobile/emotion/handle/msg/LocalBroadcastFactory;->mReceivers:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    :cond_0
    invoke-virtual {v0, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    return-void
.end method

.method private removeReceiverByCategory(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/BroadcastReceiver;",
            ">;"
        }
    .end annotation

    .prologue
    .line 72
    iget-object v0, p0, Lcom/alipay/mobile/emotion/handle/msg/LocalBroadcastFactory;->mReceivers:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    return-object v0
.end method

.method public static sendLocalBrodcast(Lcom/alipay/mobile/emotion/handle/msg/HandlerMessage;)V
    .locals 2

    .prologue
    .line 55
    invoke-static {}, Lcom/alipay/mobile/emotion/handle/msg/LocalBroadcastFactory;->getLocalBroadcastManager()Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    .line 56
    invoke-static {p0}, Lcom/alipay/mobile/emotion/handle/msg/LocalBroadcastFactory;->wrapperHandlerMessage(Lcom/alipay/mobile/emotion/handle/msg/HandlerMessage;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 57
    return-void
.end method

.method private unregist(Landroid/support/v4/content/LocalBroadcastManager;Ljava/util/HashMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/LocalBroadcastManager;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/BroadcastReceiver;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 131
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 132
    invoke-virtual {p2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 133
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 134
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 142
    invoke-virtual {p2}, Ljava/util/HashMap;->clear()V

    .line 144
    :cond_0
    return-void

    .line 136
    :cond_1
    :try_start_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/BroadcastReceiver;

    .line 137
    invoke-virtual {p1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 139
    :catch_0
    move-exception v0

    sget-object v0, Lcom/alipay/mobile/emotion/handle/msg/LocalBroadcastFactory;->TAG:Ljava/lang/String;

    goto :goto_0
.end method

.method private static wrapperHandlerMessage(Lcom/alipay/mobile/emotion/handle/msg/HandlerMessage;)Landroid/content/Intent;
    .locals 3

    .prologue
    .line 42
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/alipay/mobile/emotion/handle/msg/HandlerMessage;->getCommand()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 43
    invoke-virtual {p0}, Lcom/alipay/mobile/emotion/handle/msg/HandlerMessage;->getExtraBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 44
    const-string/jumbo v2, "messageBundle"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 45
    const-string/jumbo v2, "messageMaps"

    invoke-virtual {p0}, Lcom/alipay/mobile/emotion/handle/msg/HandlerMessage;->getParameters()Ljava/util/Map;

    move-result-object v0

    check-cast v0, Ljava/io/Serializable;

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 46
    return-object v1
.end method


# virtual methods
.method public regist(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/emotion/handle/msg/HandlerInterface;)Lcom/alipay/mobile/emotion/handle/msg/LocalBroadcastFactory;
    .locals 3

    .prologue
    .line 95
    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    if-nez p2, :cond_1

    .line 126
    :cond_0
    :goto_0
    return-object p0

    .line 101
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/emotion/handle/msg/LocalBroadcastFactory;->getCategoryReceiver(Ljava/lang/String;Ljava/lang/String;)Landroid/content/BroadcastReceiver;

    move-result-object v0

    .line 100
    if-nez v0, :cond_0

    .line 106
    invoke-static {}, Lcom/alipay/mobile/emotion/handle/msg/LocalBroadcastFactory;->getLocalBroadcastManager()Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    .line 107
    if-eqz v0, :cond_0

    .line 108
    new-instance v1, Lcom/alipay/mobile/emotion/handle/msg/LocalBroadcastFactory$1;

    invoke-direct {v1, p0, p3}, Lcom/alipay/mobile/emotion/handle/msg/LocalBroadcastFactory$1;-><init>(Lcom/alipay/mobile/emotion/handle/msg/LocalBroadcastFactory;Lcom/alipay/mobile/emotion/handle/msg/HandlerInterface;)V

    .line 121
    invoke-direct {p0, p1, p2, v1}, Lcom/alipay/mobile/emotion/handle/msg/LocalBroadcastFactory;->putReceiverByCategory(Ljava/lang/String;Ljava/lang/String;Landroid/content/BroadcastReceiver;)V

    .line 122
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 123
    invoke-virtual {v2, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 124
    invoke-virtual {v0, v1, v2}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    goto :goto_0
.end method

.method public unregistAll()V
    .locals 3

    .prologue
    .line 153
    iget-object v0, p0, Lcom/alipay/mobile/emotion/handle/msg/LocalBroadcastFactory;->mReceivers:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/emotion/handle/msg/LocalBroadcastFactory;->mReceivers:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 154
    invoke-static {}, Lcom/alipay/mobile/emotion/handle/msg/LocalBroadcastFactory;->getLocalBroadcastManager()Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    .line 155
    iget-object v0, p0, Lcom/alipay/mobile/emotion/handle/msg/LocalBroadcastFactory;->mReceivers:Ljava/util/HashMap;

    .line 156
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 157
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 160
    iget-object v0, p0, Lcom/alipay/mobile/emotion/handle/msg/LocalBroadcastFactory;->mReceivers:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 162
    :cond_0
    return-void

    .line 158
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    invoke-direct {p0, v1, v0}, Lcom/alipay/mobile/emotion/handle/msg/LocalBroadcastFactory;->unregist(Landroid/support/v4/content/LocalBroadcastManager;Ljava/util/HashMap;)V

    goto :goto_0
.end method

.method public unregistByCategory(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 147
    .line 148
    invoke-direct {p0, p1}, Lcom/alipay/mobile/emotion/handle/msg/LocalBroadcastFactory;->removeReceiverByCategory(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 149
    invoke-static {}, Lcom/alipay/mobile/emotion/handle/msg/LocalBroadcastFactory;->getLocalBroadcastManager()Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/alipay/mobile/emotion/handle/msg/LocalBroadcastFactory;->unregist(Landroid/support/v4/content/LocalBroadcastManager;Ljava/util/HashMap;)V

    .line 150
    return-void
.end method
