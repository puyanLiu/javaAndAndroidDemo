.class final Lmtopsdk/xstate/a;
.super Ljava/lang/Object;
.source "XState.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    .prologue
    .line 35
    const-string/jumbo v0, "mtopsdk.XState"

    const-string/jumbo v1, "[onServiceConnected]"

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    invoke-static {}, Lmtopsdk/xstate/XState;->j()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 37
    :try_start_0
    invoke-static {p2}, Lmtopsdk/xstate/aidl/IXState$Stub;->a(Landroid/os/IBinder;)Lmtopsdk/xstate/aidl/IXState;

    move-result-object v0

    invoke-static {v0}, Lmtopsdk/xstate/XState;->a(Lmtopsdk/xstate/aidl/IXState;)Lmtopsdk/xstate/aidl/IXState;

    .line 38
    invoke-static {}, Lmtopsdk/xstate/XState;->i()V

    .line 39
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    .prologue
    .line 28
    invoke-static {}, Lmtopsdk/xstate/XState;->j()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 29
    const/4 v0, 0x0

    :try_start_0
    invoke-static {v0}, Lmtopsdk/xstate/XState;->a(Lmtopsdk/xstate/aidl/IXState;)Lmtopsdk/xstate/aidl/IXState;

    .line 30
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
