.class public Lcom/alipay/security/mobile/util/LocalBroadcastManager;
.super Ljava/lang/Object;
.source "LocalBroadcastManager.java"


# static fields
.field private static final DEBUG:Z = false

.field static final MSG_EXEC_PENDING_BROADCASTS:I = 0x1

.field private static final TAG:Ljava/lang/String; = "LocalBroadcastManager"

.field private static mInstance:Lcom/alipay/security/mobile/util/LocalBroadcastManager;

.field private static final mLock:Ljava/lang/Object;


# instance fields
.field private final mActions:Ljava/util/HashMap;

.field private final mAppContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mPendingBroadcasts:Ljava/util/ArrayList;

.field private final mReceivers:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 77
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/alipay/security/mobile/util/LocalBroadcastManager;->mLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/security/mobile/util/LocalBroadcastManager;->mReceivers:Ljava/util/HashMap;

    .line 69
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/security/mobile/util/LocalBroadcastManager;->mActions:Ljava/util/HashMap;

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/security/mobile/util/LocalBroadcastManager;->mPendingBroadcasts:Ljava/util/ArrayList;

    .line 90
    iput-object p1, p0, Lcom/alipay/security/mobile/util/LocalBroadcastManager;->mAppContext:Landroid/content/Context;

    .line 91
    new-instance v0, Lcom/alipay/security/mobile/util/LocalBroadcastManager$1;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/alipay/security/mobile/util/LocalBroadcastManager$1;-><init>(Lcom/alipay/security/mobile/util/LocalBroadcastManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/alipay/security/mobile/util/LocalBroadcastManager;->mHandler:Landroid/os/Handler;

    .line 104
    return-void
.end method

.method static synthetic access$000(Lcom/alipay/security/mobile/util/LocalBroadcastManager;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/alipay/security/mobile/util/LocalBroadcastManager;->executePendingBroadcasts()V

    return-void
.end method

.method private executePendingBroadcasts()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 267
    :cond_0
    iget-object v1, p0, Lcom/alipay/security/mobile/util/LocalBroadcastManager;->mReceivers:Ljava/util/HashMap;

    monitor-enter v1

    .line 269
    :try_start_0
    iget-object v0, p0, Lcom/alipay/security/mobile/util/LocalBroadcastManager;->mPendingBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 270
    if-gtz v0, :cond_1

    .line 271
    monitor-exit v1

    return-void

    .line 273
    :cond_1
    new-array v4, v0, [Lcom/alipay/security/mobile/util/LocalBroadcastManager$BroadcastRecord;

    .line 274
    iget-object v0, p0, Lcom/alipay/security/mobile/util/LocalBroadcastManager;->mPendingBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 275
    iget-object v0, p0, Lcom/alipay/security/mobile/util/LocalBroadcastManager;->mPendingBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 276
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v3, v2

    .line 277
    :goto_0
    array-length v0, v4

    if-ge v3, v0, :cond_0

    .line 278
    aget-object v5, v4, v3

    move v1, v2

    .line 279
    :goto_1
    iget-object v0, v5, Lcom/alipay/security/mobile/util/LocalBroadcastManager$BroadcastRecord;->receivers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 280
    iget-object v0, v5, Lcom/alipay/security/mobile/util/LocalBroadcastManager$BroadcastRecord;->receivers:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/security/mobile/util/LocalBroadcastManager$ReceiverRecord;

    iget-object v0, v0, Lcom/alipay/security/mobile/util/LocalBroadcastManager$ReceiverRecord;->receiver:Landroid/content/BroadcastReceiver;

    iget-object v6, p0, Lcom/alipay/security/mobile/util/LocalBroadcastManager;->mAppContext:Landroid/content/Context;

    iget-object v7, v5, Lcom/alipay/security/mobile/util/LocalBroadcastManager$BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0, v6, v7}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 279
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 276
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 277
    :cond_2
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/alipay/security/mobile/util/LocalBroadcastManager;
    .locals 3

    .prologue
    .line 81
    sget-object v1, Lcom/alipay/security/mobile/util/LocalBroadcastManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 82
    :try_start_0
    sget-object v0, Lcom/alipay/security/mobile/util/LocalBroadcastManager;->mInstance:Lcom/alipay/security/mobile/util/LocalBroadcastManager;

    if-nez v0, :cond_0

    .line 83
    new-instance v0, Lcom/alipay/security/mobile/util/LocalBroadcastManager;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/alipay/security/mobile/util/LocalBroadcastManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/alipay/security/mobile/util/LocalBroadcastManager;->mInstance:Lcom/alipay/security/mobile/util/LocalBroadcastManager;

    .line 85
    :cond_0
    sget-object v0, Lcom/alipay/security/mobile/util/LocalBroadcastManager;->mInstance:Lcom/alipay/security/mobile/util/LocalBroadcastManager;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 86
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V
    .locals 6

    .prologue
    .line 115
    iget-object v2, p0, Lcom/alipay/security/mobile/util/LocalBroadcastManager;->mReceivers:Ljava/util/HashMap;

    monitor-enter v2

    .line 116
    :try_start_0
    new-instance v3, Lcom/alipay/security/mobile/util/LocalBroadcastManager$ReceiverRecord;

    invoke-direct {v3, p2, p1}, Lcom/alipay/security/mobile/util/LocalBroadcastManager$ReceiverRecord;-><init>(Landroid/content/IntentFilter;Landroid/content/BroadcastReceiver;)V

    .line 117
    iget-object v0, p0, Lcom/alipay/security/mobile/util/LocalBroadcastManager;->mReceivers:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 118
    if-nez v0, :cond_0

    .line 119
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 120
    iget-object v1, p0, Lcom/alipay/security/mobile/util/LocalBroadcastManager;->mReceivers:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    :cond_0
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p2}, Landroid/content/IntentFilter;->countActions()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 124
    invoke-virtual {p2, v1}, Landroid/content/IntentFilter;->getAction(I)Ljava/lang/String;

    move-result-object v4

    .line 125
    iget-object v0, p0, Lcom/alipay/security/mobile/util/LocalBroadcastManager;->mActions:Ljava/util/HashMap;

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 126
    if-nez v0, :cond_1

    .line 127
    new-instance v0, Ljava/util/ArrayList;

    const/4 v5, 0x1

    invoke-direct {v0, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 128
    iget-object v5, p0, Lcom/alipay/security/mobile/util/LocalBroadcastManager;->mActions:Ljava/util/HashMap;

    invoke-virtual {v5, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    :cond_1
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 132
    :cond_2
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public sendBroadcast(Landroid/content/Intent;)Z
    .locals 14

    .prologue
    .line 182
    iget-object v13, p0, Lcom/alipay/security/mobile/util/LocalBroadcastManager;->mReceivers:Ljava/util/HashMap;

    monitor-enter v13

    .line 183
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 184
    iget-object v1, p0, Lcom/alipay/security/mobile/util/LocalBroadcastManager;->mAppContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v3

    .line 185
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    .line 186
    invoke-virtual {p1}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v4

    .line 187
    invoke-virtual {p1}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v6

    .line 189
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v1

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    move v12, v1

    .line 192
    :goto_0
    iget-object v1, p0, Lcom/alipay/security/mobile/util/LocalBroadcastManager;->mActions:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/util/ArrayList;

    move-object v8, v0

    .line 193
    if-eqz v8, :cond_5

    .line 195
    const/4 v10, 0x0

    .line 196
    const/4 v1, 0x0

    move v11, v1

    :goto_1
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v11, v1, :cond_2

    .line 197
    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/alipay/security/mobile/util/LocalBroadcastManager$ReceiverRecord;

    move-object v9, v0

    .line 199
    iget-boolean v1, v9, Lcom/alipay/security/mobile/util/LocalBroadcastManager$ReceiverRecord;->broadcasting:Z

    if-eqz v1, :cond_1

    .line 200
    if-eqz v12, :cond_7

    move-object v1, v10

    .line 215
    :goto_2
    add-int/lit8 v7, v11, 0x1

    move v11, v7

    move-object v10, v1

    goto :goto_1

    .line 189
    :cond_0
    const/4 v1, 0x0

    move v12, v1

    goto :goto_0

    .line 206
    :cond_1
    iget-object v1, v9, Lcom/alipay/security/mobile/util/LocalBroadcastManager$ReceiverRecord;->filter:Landroid/content/IntentFilter;

    const-string/jumbo v7, "LocalBroadcastManager"

    invoke-virtual/range {v1 .. v7}, Landroid/content/IntentFilter;->match(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/util/Set;Ljava/lang/String;)I

    move-result v1

    .line 208
    if-ltz v1, :cond_7

    .line 209
    if-nez v10, :cond_6

    .line 210
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 212
    :goto_3
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 213
    const/4 v7, 0x1

    iput-boolean v7, v9, Lcom/alipay/security/mobile/util/LocalBroadcastManager$ReceiverRecord;->broadcasting:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 250
    :catchall_0
    move-exception v1

    monitor-exit v13

    throw v1

    .line 239
    :cond_2
    if-eqz v10, :cond_5

    .line 240
    const/4 v1, 0x0

    move v2, v1

    :goto_4
    :try_start_1
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v2, v1, :cond_3

    .line 241
    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/security/mobile/util/LocalBroadcastManager$ReceiverRecord;

    const/4 v3, 0x0

    iput-boolean v3, v1, Lcom/alipay/security/mobile/util/LocalBroadcastManager$ReceiverRecord;->broadcasting:Z

    .line 240
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_4

    .line 243
    :cond_3
    iget-object v1, p0, Lcom/alipay/security/mobile/util/LocalBroadcastManager;->mPendingBroadcasts:Ljava/util/ArrayList;

    new-instance v2, Lcom/alipay/security/mobile/util/LocalBroadcastManager$BroadcastRecord;

    invoke-direct {v2, p1, v10}, Lcom/alipay/security/mobile/util/LocalBroadcastManager$BroadcastRecord;-><init>(Landroid/content/Intent;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 244
    iget-object v1, p0, Lcom/alipay/security/mobile/util/LocalBroadcastManager;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_4

    .line 245
    iget-object v1, p0, Lcom/alipay/security/mobile/util/LocalBroadcastManager;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 247
    :cond_4
    const/4 v1, 0x1

    monitor-exit v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 251
    :goto_5
    return v1

    .line 250
    :cond_5
    monitor-exit v13

    .line 251
    const/4 v1, 0x0

    goto :goto_5

    :cond_6
    move-object v1, v10

    goto :goto_3

    :cond_7
    move-object v1, v10

    goto :goto_2
.end method

.method public sendBroadcastSync(Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 260
    invoke-virtual {p0, p1}, Lcom/alipay/security/mobile/util/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 261
    invoke-direct {p0}, Lcom/alipay/security/mobile/util/LocalBroadcastManager;->executePendingBroadcasts()V

    .line 263
    :cond_0
    return-void
.end method

.method public unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    .locals 10

    .prologue
    const/4 v5, 0x0

    .line 145
    iget-object v8, p0, Lcom/alipay/security/mobile/util/LocalBroadcastManager;->mReceivers:Ljava/util/HashMap;

    monitor-enter v8

    .line 146
    :try_start_0
    iget-object v0, p0, Lcom/alipay/security/mobile/util/LocalBroadcastManager;->mReceivers:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 147
    if-nez v0, :cond_0

    .line 148
    monitor-exit v8

    .line 168
    :goto_0
    return-void

    :cond_0
    move v7, v5

    .line 150
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v7, v1, :cond_4

    .line 151
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/IntentFilter;

    move v6, v5

    .line 152
    :goto_2
    invoke-virtual {v1}, Landroid/content/IntentFilter;->countActions()I

    move-result v2

    if-ge v6, v2, :cond_3

    .line 153
    invoke-virtual {v1, v6}, Landroid/content/IntentFilter;->getAction(I)Ljava/lang/String;

    move-result-object v9

    .line 154
    iget-object v2, p0, Lcom/alipay/security/mobile/util/LocalBroadcastManager;->mActions:Ljava/util/HashMap;

    invoke-virtual {v2, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 155
    if-eqz v2, :cond_2

    move v4, v5

    .line 156
    :goto_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v4, v3, :cond_1

    .line 157
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alipay/security/mobile/util/LocalBroadcastManager$ReceiverRecord;

    iget-object v3, v3, Lcom/alipay/security/mobile/util/LocalBroadcastManager$ReceiverRecord;->receiver:Landroid/content/BroadcastReceiver;

    if-ne v3, p1, :cond_5

    .line 158
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 159
    add-int/lit8 v3, v4, -0x1

    .line 156
    :goto_4
    add-int/lit8 v4, v3, 0x1

    goto :goto_3

    .line 162
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_2

    .line 163
    iget-object v2, p0, Lcom/alipay/security/mobile/util/LocalBroadcastManager;->mActions:Ljava/util/HashMap;

    invoke-virtual {v2, v9}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    :cond_2
    add-int/lit8 v2, v6, 0x1

    move v6, v2

    goto :goto_2

    .line 150
    :cond_3
    add-int/lit8 v1, v7, 0x1

    move v7, v1

    goto :goto_1

    .line 168
    :cond_4
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v8

    throw v0

    :cond_5
    move v3, v4

    goto :goto_4
.end method
