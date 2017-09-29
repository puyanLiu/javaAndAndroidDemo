.class final Lmtopsdk/mtop/global/MtopSDK$1;
.super Ljava/lang/Object;
.source "MtopSDK.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$sign:Lmtopsdk/security/ISign;

.field final synthetic val$ttid:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Lmtopsdk/security/ISign;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lmtopsdk/mtop/global/MtopSDK$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lmtopsdk/mtop/global/MtopSDK$1;->val$sign:Lmtopsdk/security/ISign;

    iput-object p3, p0, Lmtopsdk/mtop/global/MtopSDK$1;->val$ttid:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 79
    const-string/jumbo v0, "mtopsdk.MtopSDK"

    const-string/jumbo v1, "[init]MtopSDK init Called"

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    invoke-static {}, Lmtopsdk/mtop/global/MtopSDK;->access$000()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 81
    :try_start_0
    invoke-static {}, Lmtopsdk/mtop/global/MtopSDK;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    monitor-exit v1

    .line 85
    :goto_0
    return-void

    .line 84
    :cond_0
    iget-object v0, p0, Lmtopsdk/mtop/global/MtopSDK$1;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lmtopsdk/mtop/global/MtopSDK$1;->val$sign:Lmtopsdk/security/ISign;

    iget-object v3, p0, Lmtopsdk/mtop/global/MtopSDK$1;->val$ttid:Ljava/lang/String;

    invoke-static {v0, v2, v3}, Lmtopsdk/mtop/global/MtopSDK;->access$200(Landroid/content/Context;Lmtopsdk/security/ISign;Ljava/lang/String;)V

    .line 85
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
