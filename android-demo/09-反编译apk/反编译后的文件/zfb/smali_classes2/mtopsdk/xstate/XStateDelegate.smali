.class public Lmtopsdk/xstate/XStateDelegate;
.super Ljava/lang/Object;
.source "XStateDelegate.java"


# static fields
.field private static a:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static b:Lmtopsdk/xstate/XStateDelegate$NetworkStateReceiver;

.field private static c:Landroid/content/Context;

.field private static volatile d:Z

.field private static e:Ljava/util/concurrent/locks/Lock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x0

    sput-object v0, Lmtopsdk/xstate/XStateDelegate;->a:Ljava/util/Hashtable;

    .line 38
    const/4 v0, 0x0

    sput-boolean v0, Lmtopsdk/xstate/XStateDelegate;->d:Z

    .line 40
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    sput-object v0, Lmtopsdk/xstate/XStateDelegate;->e:Ljava/util/concurrent/locks/Lock;

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    sget-object v0, Lmtopsdk/xstate/XStateDelegate;->a:Ljava/util/Hashtable;

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    .line 101
    sget-object v0, Lmtopsdk/xstate/XStateDelegate;->a:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 103
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a()V
    .locals 4

    .prologue
    .line 75
    sget-boolean v0, Lmtopsdk/xstate/XStateDelegate;->d:Z

    if-eqz v0, :cond_1

    .line 76
    sget-object v0, Lmtopsdk/xstate/XStateDelegate;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 78
    :try_start_0
    sget-boolean v0, Lmtopsdk/xstate/XStateDelegate;->d:Z

    if-eqz v0, :cond_4

    .line 79
    sget-object v0, Lmtopsdk/xstate/XStateDelegate;->a:Ljava/util/Hashtable;

    if-eqz v0, :cond_0

    .line 80
    sget-object v0, Lmtopsdk/xstate/XStateDelegate;->a:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 81
    const/4 v0, 0x0

    sput-object v0, Lmtopsdk/xstate/XStateDelegate;->a:Ljava/util/Hashtable;

    .line 83
    :cond_0
    sget-object v0, Lmtopsdk/xstate/XStateDelegate;->c:Landroid/content/Context;

    if-nez v0, :cond_2

    .line 84
    const-string/jumbo v0, "mtopsdk.XStateDelegate"

    const-string/jumbo v1, "[unInit]static field context in Class XState is null."

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    sget-object v0, Lmtopsdk/xstate/XStateDelegate;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 97
    :cond_1
    :goto_0
    return-void

    .line 87
    :cond_2
    :try_start_1
    sget-object v0, Lmtopsdk/xstate/XStateDelegate;->c:Landroid/content/Context;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    sget-object v1, Lmtopsdk/xstate/XStateDelegate;->b:Lmtopsdk/xstate/XStateDelegate$NetworkStateReceiver;

    if-eqz v1, :cond_3

    sget-object v1, Lmtopsdk/xstate/XStateDelegate;->b:Lmtopsdk/xstate/XStateDelegate$NetworkStateReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    sput-object v0, Lmtopsdk/xstate/XStateDelegate;->b:Lmtopsdk/xstate/XStateDelegate$NetworkStateReceiver;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 88
    :cond_3
    :goto_1
    const/4 v0, 0x0

    :try_start_3
    sput-boolean v0, Lmtopsdk/xstate/XStateDelegate;->d:Z

    .line 89
    const-string/jumbo v0, "mtopsdk.XStateDelegate"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "[unInit] uninit XState OK,isInit="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v2, Lmtopsdk/xstate/XStateDelegate;->d:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 94
    :cond_4
    sget-object v0, Lmtopsdk/xstate/XStateDelegate;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    .line 87
    :catch_0
    move-exception v0

    :try_start_4
    const-string/jumbo v1, "mtopsdk.XStateDelegate"

    const-string/jumbo v2, "unRegisterReceive failed"

    invoke-static {v1, v2, v0}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 91
    :catch_1
    move-exception v0

    .line 92
    :try_start_5
    const-string/jumbo v1, "mtopsdk.XStateDelegate"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "[unInit] unInit error --"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 94
    sget-object v0, Lmtopsdk/xstate/XStateDelegate;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    sget-object v1, Lmtopsdk/xstate/XStateDelegate;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 68
    sget-boolean v0, Lmtopsdk/xstate/XStateDelegate;->d:Z

    if-nez v0, :cond_0

    .line 69
    sget-object v0, Lmtopsdk/xstate/XStateDelegate;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    sget-boolean v0, Lmtopsdk/xstate/XStateDelegate;->d:Z

    if-nez v0, :cond_4

    if-nez p0, :cond_1

    const-string/jumbo v0, "mtopsdk.XStateDelegate"

    const-string/jumbo v1, "[checkInit]parameter context for init(Context context) is null."

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lmtopsdk/xstate/XStateDelegate;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 71
    :cond_0
    :goto_0
    return-void

    .line 69
    :cond_1
    :try_start_1
    sget-object v0, Lmtopsdk/xstate/XStateDelegate;->a:Ljava/util/Hashtable;

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lmtopsdk/xstate/XStateDelegate;->a:Ljava/util/Hashtable;

    :cond_2
    sput-object p0, Lmtopsdk/xstate/XStateDelegate;->c:Landroid/content/Context;

    sget-object v0, Lmtopsdk/xstate/XStateDelegate;->b:Lmtopsdk/xstate/XStateDelegate$NetworkStateReceiver;

    if-nez v0, :cond_3

    new-instance v0, Lmtopsdk/xstate/XStateDelegate$NetworkStateReceiver;

    invoke-direct {v0}, Lmtopsdk/xstate/XStateDelegate$NetworkStateReceiver;-><init>()V

    sput-object v0, Lmtopsdk/xstate/XStateDelegate;->b:Lmtopsdk/xstate/XStateDelegate$NetworkStateReceiver;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v1, Lmtopsdk/xstate/XStateDelegate;->b:Lmtopsdk/xstate/XStateDelegate$NetworkStateReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_3
    :goto_1
    :try_start_3
    sget-object v0, Lmtopsdk/xstate/XStateDelegate;->a:Ljava/util/Hashtable;

    const-string/jumbo v1, "imei"

    invoke-static {p0}, Lmtopsdk/xstate/util/PhoneInfo;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmtopsdk/xstate/XStateDelegate;->a:Ljava/util/Hashtable;

    const-string/jumbo v1, "imsi"

    invoke-static {p0}, Lmtopsdk/xstate/util/PhoneInfo;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmtopsdk/xstate/XStateDelegate;->a:Ljava/util/Hashtable;

    const-string/jumbo v1, "ua"

    invoke-static {}, Lmtopsdk/xstate/util/PhoneInfo;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmtopsdk/xstate/XStateDelegate;->a:Ljava/util/Hashtable;

    const-string/jumbo v1, "pv"

    const-string/jumbo v2, "4.1"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmtopsdk/xstate/XStateDelegate;->a:Ljava/util/Hashtable;

    const-string/jumbo v1, "t_offset"

    const-string/jumbo v2, "0"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_2
    const/4 v0, 0x1

    :try_start_4
    sput-boolean v0, Lmtopsdk/xstate/XStateDelegate;->d:Z

    const-string/jumbo v0, "mtopsdk.XStateDelegate"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "[checkInit] init XState OK,isInit="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v2, Lmtopsdk/xstate/XStateDelegate;->d:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_4
    sget-object v0, Lmtopsdk/xstate/XStateDelegate;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto/16 :goto_0

    :catch_0
    move-exception v0

    :try_start_5
    const-string/jumbo v1, "mtopsdk.XStateDelegate"

    const-string/jumbo v2, "registerReceive failed"

    invoke-static {v1, v2, v0}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    :catch_1
    move-exception v0

    :try_start_6
    const-string/jumbo v1, "mtopsdk.XStateDelegate"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "[checkInit] checkInit error --"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    sget-object v0, Lmtopsdk/xstate/XStateDelegate;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto/16 :goto_0

    :catch_2
    move-exception v0

    :try_start_7
    const-string/jumbo v1, "mtopsdk.XStateDelegate"

    const-string/jumbo v2, "[initPhoneInfo]initPhoneInfo error"

    invoke-static {v1, v2, v0}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    sget-object v1, Lmtopsdk/xstate/XStateDelegate;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 108
    sget-object v0, Lmtopsdk/xstate/XStateDelegate;->a:Ljava/util/Hashtable;

    if-eqz v0, :cond_1

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    .line 109
    sget-object v0, Lmtopsdk/xstate/XStateDelegate;->a:Ljava/util/Hashtable;

    invoke-virtual {v0, p0, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    invoke-static {}, Lmtopsdk/common/util/TBSdkLog;->isPrintLog()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    const-string/jumbo v0, "mtopsdk.XStateDelegate"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "[setValue]set  XstateID succeed,"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    :cond_0
    :goto_0
    return-void

    .line 114
    :cond_1
    invoke-static {}, Lmtopsdk/common/util/TBSdkLog;->isPrintLog()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    const-string/jumbo v0, "mtopsdk.XStateDelegate"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "[setValue]set  XstateID failed,key="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 120
    sget-object v0, Lmtopsdk/xstate/XStateDelegate;->a:Ljava/util/Hashtable;

    if-eqz v0, :cond_1

    if-eqz p0, :cond_1

    .line 121
    invoke-static {}, Lmtopsdk/common/util/TBSdkLog;->isPrintLog()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    const-string/jumbo v0, "mtopsdk.XStateDelegate"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "remove Xstate key="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    :cond_0
    sget-object v0, Lmtopsdk/xstate/XStateDelegate;->a:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 126
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
