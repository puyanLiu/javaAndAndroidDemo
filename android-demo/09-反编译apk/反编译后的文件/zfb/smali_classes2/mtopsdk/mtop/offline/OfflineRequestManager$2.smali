.class Lmtopsdk/mtop/offline/OfflineRequestManager$2;
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
    .line 64
    iput-object p1, p0, Lmtopsdk/mtop/offline/OfflineRequestManager$2;->this$0:Lmtopsdk/mtop/offline/OfflineRequestManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 67
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 68
    iget-object v0, p0, Lmtopsdk/mtop/offline/OfflineRequestManager$2;->this$0:Lmtopsdk/mtop/offline/OfflineRequestManager;

    new-instance v1, Lmtopsdk/mtop/offline/OfflineRequestManager$OfflineHandler;

    iget-object v2, p0, Lmtopsdk/mtop/offline/OfflineRequestManager$2;->this$0:Lmtopsdk/mtop/offline/OfflineRequestManager;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lmtopsdk/mtop/offline/OfflineRequestManager$OfflineHandler;-><init>(Lmtopsdk/mtop/offline/OfflineRequestManager;Lmtopsdk/mtop/offline/OfflineRequestManager$1;)V

    invoke-static {v0, v1}, Lmtopsdk/mtop/offline/OfflineRequestManager;->access$002(Lmtopsdk/mtop/offline/OfflineRequestManager;Lmtopsdk/mtop/offline/OfflineRequestManager$OfflineHandler;)Lmtopsdk/mtop/offline/OfflineRequestManager$OfflineHandler;

    .line 69
    iget-object v0, p0, Lmtopsdk/mtop/offline/OfflineRequestManager$2;->this$0:Lmtopsdk/mtop/offline/OfflineRequestManager;

    invoke-static {v0}, Lmtopsdk/mtop/offline/OfflineRequestManager;->access$000(Lmtopsdk/mtop/offline/OfflineRequestManager;)Lmtopsdk/mtop/offline/OfflineRequestManager$OfflineHandler;

    move-result-object v0

    iget-object v1, p0, Lmtopsdk/mtop/offline/OfflineRequestManager$2;->this$0:Lmtopsdk/mtop/offline/OfflineRequestManager;

    invoke-static {v1}, Lmtopsdk/mtop/offline/OfflineRequestManager;->access$200(Lmtopsdk/mtop/offline/OfflineRequestManager;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/32 v2, 0x493e0

    invoke-virtual {v0, v1, v2, v3}, Lmtopsdk/mtop/offline/OfflineRequestManager$OfflineHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 70
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 71
    return-void
.end method
