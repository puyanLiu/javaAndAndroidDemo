.class public Lmtopsdk/xstate/XState;
.super Ljava/lang/Object;
.source "XState.java"


# static fields
.field private static a:Lmtopsdk/xstate/aidl/IXState;

.field private static b:Landroid/content/ServiceConnection;

.field private static c:Ljava/lang/Object;

.field private static d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x0

    sput-object v0, Lmtopsdk/xstate/XState;->a:Lmtopsdk/xstate/aidl/IXState;

    .line 24
    new-instance v0, Lmtopsdk/xstate/a;

    invoke-direct {v0}, Lmtopsdk/xstate/a;-><init>()V

    sput-object v0, Lmtopsdk/xstate/XState;->b:Landroid/content/ServiceConnection;

    .line 43
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lmtopsdk/xstate/XState;->c:Ljava/lang/Object;

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lmtopsdk/xstate/XState;->d:Ljava/util/HashMap;

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 161
    sget-object v0, Lmtopsdk/xstate/XState;->a:Lmtopsdk/xstate/aidl/IXState;

    if-eqz v0, :cond_1

    .line 163
    :try_start_0
    sget-object v0, Lmtopsdk/xstate/XState;->a:Lmtopsdk/xstate/aidl/IXState;

    invoke-interface {v0, p0}, Lmtopsdk/xstate/aidl/IXState;->b(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 178
    :goto_0
    return-object v0

    .line 164
    :catch_0
    move-exception v0

    .line 165
    invoke-static {}, Lmtopsdk/common/util/TBSdkLog;->isPrintLog()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 166
    const-string/jumbo v1, "mtopsdk.XState"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "[getValue] getValue by key="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " error ---"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    const-string/jumbo v0, "mtopsdk.XState"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "[getValue]Attention :User XState Local Mode : key="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    :cond_0
    sget-object v1, Lmtopsdk/xstate/XState;->d:Ljava/util/HashMap;

    monitor-enter v1

    .line 170
    :try_start_1
    sget-object v0, Lmtopsdk/xstate/XState;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 171
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 174
    :cond_1
    invoke-static {}, Lmtopsdk/common/util/TBSdkLog;->isPrintLog()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 175
    const-string/jumbo v0, "mtopsdk.XState"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "[getValue]Attention :User XState Local Mode : key="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    :cond_2
    sget-object v1, Lmtopsdk/xstate/XState;->d:Ljava/util/HashMap;

    monitor-enter v1

    .line 178
    :try_start_2
    sget-object v0, Lmtopsdk/xstate/XState;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    .line 179
    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Lmtopsdk/xstate/aidl/IXState;)Lmtopsdk/xstate/aidl/IXState;
    .locals 0

    .prologue
    .line 20
    sput-object p0, Lmtopsdk/xstate/XState;->a:Lmtopsdk/xstate/aidl/IXState;

    return-object p0
.end method

.method public static a()V
    .locals 3

    .prologue
    .line 78
    sget-object v0, Lmtopsdk/xstate/XState;->a:Lmtopsdk/xstate/aidl/IXState;

    if-eqz v0, :cond_0

    .line 80
    :try_start_0
    sget-object v0, Lmtopsdk/xstate/XState;->a:Lmtopsdk/xstate/aidl/IXState;

    invoke-interface {v0}, Lmtopsdk/xstate/aidl/IXState;->b()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    :cond_0
    :goto_0
    return-void

    .line 81
    :catch_0
    move-exception v0

    .line 82
    const-string/jumbo v1, "mtopsdk.XState"

    const-string/jumbo v2, "[unInit] unInit error"

    invoke-static {v1, v2, v0}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 52
    if-nez p0, :cond_0

    .line 53
    const-string/jumbo v0, "mtopsdk.XState"

    const-string/jumbo v1, "[init]init() error,context is null"

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    :goto_0
    return-void

    .line 56
    :cond_0
    sget-object v1, Lmtopsdk/xstate/XState;->c:Ljava/lang/Object;

    monitor-enter v1

    .line 57
    :try_start_0
    sget-object v0, Lmtopsdk/xstate/XState;->a:Lmtopsdk/xstate/aidl/IXState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_2

    .line 59
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-class v2, Lmtopsdk/xstate/aidl/IXState;

    sget-object v3, Lmtopsdk/xstate/XState;->b:Landroid/content/ServiceConnection;

    invoke-static {v0, v2, v3}, Lcom/taobao/android/service/Services;->a(Landroid/content/Context;Ljava/lang/Class;Landroid/content/ServiceConnection;)Z

    move-result v0

    .line 60
    invoke-static {}, Lmtopsdk/common/util/TBSdkLog;->isPrintLog()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 61
    const-string/jumbo v2, "mtopsdk.XState"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "[init]XState Service isBinder:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    :cond_1
    sget-object v0, Lmtopsdk/xstate/XState;->a:Lmtopsdk/xstate/aidl/IXState;

    if-eqz v0, :cond_2

    .line 64
    invoke-static {}, Lmtopsdk/xstate/XState;->i()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 71
    :cond_2
    :goto_1
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 66
    :catch_0
    move-exception v0

    .line 67
    :try_start_3
    const-string/jumbo v2, "mtopsdk.XState"

    const-string/jumbo v3, "[init]Services.bind() error"

    invoke-static {v2, v3, v0}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 209
    sget-object v0, Lmtopsdk/xstate/XState;->a:Lmtopsdk/xstate/aidl/IXState;

    if-eqz v0, :cond_1

    .line 211
    :try_start_0
    sget-object v0, Lmtopsdk/xstate/XState;->a:Lmtopsdk/xstate/aidl/IXState;

    invoke-interface {v0, p0, p1}, Lmtopsdk/xstate/aidl/IXState;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 227
    :goto_0
    return-void

    .line 212
    :catch_0
    move-exception v0

    .line 213
    invoke-static {}, Lmtopsdk/common/util/TBSdkLog;->isPrintLog()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 214
    const-string/jumbo v1, "mtopsdk.XState"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "[setValue] setValue failed ,key="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",value="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "; ---"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    const-string/jumbo v0, "mtopsdk.XState"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "[setValue]Attention :User XState Local Mode: key:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " value:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    :cond_0
    sget-object v1, Lmtopsdk/xstate/XState;->d:Ljava/util/HashMap;

    monitor-enter v1

    .line 218
    :try_start_1
    sget-object v0, Lmtopsdk/xstate/XState;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 220
    :cond_1
    invoke-static {}, Lmtopsdk/common/util/TBSdkLog;->isPrintLog()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 223
    const-string/jumbo v0, "mtopsdk.XState"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "[setValue]Attention :User XState Local Mode: key:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " value:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    :cond_2
    sget-object v1, Lmtopsdk/xstate/XState;->d:Ljava/util/HashMap;

    monitor-enter v1

    .line 226
    :try_start_2
    sget-object v0, Lmtopsdk/xstate/XState;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static b()Ljava/lang/String;
    .locals 3

    .prologue
    .line 88
    invoke-static {}, Lmtopsdk/common/util/TBSdkLog;->isPrintLog()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    const-string/jumbo v0, "mtopsdk.XState"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "[getAppkey] "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "appKey"

    invoke-static {v2}, Lmtopsdk/xstate/XState;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    :cond_0
    const-string/jumbo v0, "appKey"

    invoke-static {v0}, Lmtopsdk/xstate/XState;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 185
    sget-object v0, Lmtopsdk/xstate/XState;->a:Lmtopsdk/xstate/aidl/IXState;

    if-eqz v0, :cond_1

    .line 187
    :try_start_0
    sget-object v0, Lmtopsdk/xstate/XState;->a:Lmtopsdk/xstate/aidl/IXState;

    invoke-interface {v0, p0}, Lmtopsdk/xstate/aidl/IXState;->a(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 205
    :goto_0
    return-object v0

    .line 188
    :catch_0
    move-exception v0

    .line 189
    invoke-static {}, Lmtopsdk/common/util/TBSdkLog;->isPrintLog()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 190
    const-string/jumbo v1, "mtopsdk.XState"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "[removeKey] removeKey by key="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " error ---"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    const-string/jumbo v0, "mtopsdk.XState"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "[removeKey]Attention :User XState Local Mode : key="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    :cond_0
    sget-object v1, Lmtopsdk/xstate/XState;->d:Ljava/util/HashMap;

    monitor-enter v1

    .line 194
    :try_start_1
    sget-object v0, Lmtopsdk/xstate/XState;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 205
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 195
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 196
    :cond_1
    invoke-static {}, Lmtopsdk/common/util/TBSdkLog;->isPrintLog()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 199
    const-string/jumbo v0, "mtopsdk.XState"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "[removeKey]Attention :User XState Local Mode : key="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    :cond_2
    sget-object v1, Lmtopsdk/xstate/XState;->d:Ljava/util/HashMap;

    monitor-enter v1

    .line 202
    :try_start_2
    sget-object v0, Lmtopsdk/xstate/XState;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    const-string/jumbo v0, "deviceId"

    invoke-static {v0}, Lmtopsdk/xstate/XState;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    const-string/jumbo v0, "userId"

    invoke-static {v0}, Lmtopsdk/xstate/XState;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    const-string/jumbo v0, "ttid"

    invoke-static {v0}, Lmtopsdk/xstate/XState;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    const-string/jumbo v0, "t_offset"

    invoke-static {v0}, Lmtopsdk/xstate/XState;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 136
    const-string/jumbo v0, "netType"

    invoke-static {v0}, Lmtopsdk/xstate/XState;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static h()Z
    .locals 3

    .prologue
    .line 143
    const-string/jumbo v0, "AppBackground"

    invoke-static {v0}, Lmtopsdk/xstate/XState;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 144
    const/4 v0, 0x1

    .line 145
    if-eqz v1, :cond_0

    .line 147
    :try_start_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 152
    :cond_0
    :goto_0
    return v0

    .line 149
    :catch_0
    move-exception v1

    const-string/jumbo v1, "mtopsdk.XState"

    const-string/jumbo v2, "[isAppBackground] parse KEY_APP_BACKGROUND error"

    invoke-static {v1, v2}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected static i()V
    .locals 4

    .prologue
    .line 237
    sget-object v0, Lmtopsdk/xstate/XState;->a:Lmtopsdk/xstate/aidl/IXState;

    if-eqz v0, :cond_0

    .line 239
    :try_start_0
    sget-object v0, Lmtopsdk/xstate/XState;->a:Lmtopsdk/xstate/aidl/IXState;

    invoke-interface {v0}, Lmtopsdk/xstate/aidl/IXState;->a()V

    .line 240
    sget-object v2, Lmtopsdk/xstate/XState;->d:Ljava/util/HashMap;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 241
    :try_start_1
    sget-object v0, Lmtopsdk/xstate/XState;->d:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 242
    sget-object v1, Lmtopsdk/xstate/XState;->d:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v0, v1}, Lmtopsdk/xstate/XState;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 245
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v2

    throw v0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 248
    :catch_0
    move-exception v0

    .line 247
    const-string/jumbo v1, "mtopsdk.XState"

    const-string/jumbo v2, "[syncToRemote]service.init() error"

    invoke-static {v1, v2, v0}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 250
    :cond_0
    :goto_1
    return-void

    .line 244
    :cond_1
    :try_start_3
    sget-object v0, Lmtopsdk/xstate/XState;->d:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 245
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method static synthetic j()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lmtopsdk/xstate/XState;->c:Ljava/lang/Object;

    return-object v0
.end method
