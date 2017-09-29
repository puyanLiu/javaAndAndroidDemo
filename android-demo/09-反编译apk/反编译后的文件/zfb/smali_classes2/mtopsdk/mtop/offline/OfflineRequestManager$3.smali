.class Lmtopsdk/mtop/offline/OfflineRequestManager$3;
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
    .line 75
    iput-object p1, p0, Lmtopsdk/mtop/offline/OfflineRequestManager$3;->this$0:Lmtopsdk/mtop/offline/OfflineRequestManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 78
    iget-object v0, p0, Lmtopsdk/mtop/offline/OfflineRequestManager$3;->this$0:Lmtopsdk/mtop/offline/OfflineRequestManager;

    invoke-static {v0}, Lmtopsdk/mtop/offline/OfflineRequestManager;->access$000(Lmtopsdk/mtop/offline/OfflineRequestManager;)Lmtopsdk/mtop/offline/OfflineRequestManager$OfflineHandler;

    move-result-object v0

    const-wide/32 v1, 0x493e0

    invoke-virtual {v0, p0, v1, v2}, Lmtopsdk/mtop/offline/OfflineRequestManager$OfflineHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 79
    iget-object v0, p0, Lmtopsdk/mtop/offline/OfflineRequestManager$3;->this$0:Lmtopsdk/mtop/offline/OfflineRequestManager;

    invoke-static {v0}, Lmtopsdk/mtop/offline/OfflineRequestManager;->access$000(Lmtopsdk/mtop/offline/OfflineRequestManager;)Lmtopsdk/mtop/offline/OfflineRequestManager$OfflineHandler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lmtopsdk/mtop/offline/OfflineRequestManager$OfflineHandler;->sendEmptyMessage(I)Z

    .line 80
    return-void
.end method
