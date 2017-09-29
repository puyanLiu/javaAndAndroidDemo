.class Lmtopsdk/mtop/offline/OfflineRequestManager$4;
.super Ljava/lang/Object;
.source "OfflineRequestManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lmtopsdk/mtop/offline/OfflineRequestManager;


# direct methods
.method constructor <init>(Lmtopsdk/mtop/offline/OfflineRequestManager;)V
    .locals 0

    .prologue
    .line 130
    iput-object p1, p0, Lmtopsdk/mtop/offline/OfflineRequestManager$4;->this$0:Lmtopsdk/mtop/offline/OfflineRequestManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 133
    iget-object v0, p0, Lmtopsdk/mtop/offline/OfflineRequestManager$4;->this$0:Lmtopsdk/mtop/offline/OfflineRequestManager;

    invoke-static {v0}, Lmtopsdk/mtop/offline/OfflineRequestManager;->access$500(Lmtopsdk/mtop/offline/OfflineRequestManager;)Lmtopsdk/mtop/offline/OfflineRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lmtopsdk/mtop/offline/OfflineRequestQueue;->userStatusChanged()V

    .line 134
    iget-object v0, p0, Lmtopsdk/mtop/offline/OfflineRequestManager$4;->this$0:Lmtopsdk/mtop/offline/OfflineRequestManager;

    invoke-static {v0}, Lmtopsdk/mtop/offline/OfflineRequestManager;->access$000(Lmtopsdk/mtop/offline/OfflineRequestManager;)Lmtopsdk/mtop/offline/OfflineRequestManager$OfflineHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lmtopsdk/mtop/offline/OfflineRequestManager$4;->this$0:Lmtopsdk/mtop/offline/OfflineRequestManager;

    invoke-static {v0}, Lmtopsdk/mtop/offline/OfflineRequestManager;->access$000(Lmtopsdk/mtop/offline/OfflineRequestManager;)Lmtopsdk/mtop/offline/OfflineRequestManager$OfflineHandler;

    move-result-object v0

    const/4 v1, 0x2

    const-wide/32 v2, 0x1d4c0

    invoke-virtual {v0, v1, v2, v3}, Lmtopsdk/mtop/offline/OfflineRequestManager$OfflineHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 137
    :cond_0
    return-void
.end method
