.class Lmtopsdk/mtop/offline/OfflineRequestManager$1;
.super Ljava/lang/Object;
.source "OfflineRequestManager.java"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# instance fields
.field final synthetic this$0:Lmtopsdk/mtop/offline/OfflineRequestManager;


# direct methods
.method constructor <init>(Lmtopsdk/mtop/offline/OfflineRequestManager;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lmtopsdk/mtop/offline/OfflineRequestManager$1;->this$0:Lmtopsdk/mtop/offline/OfflineRequestManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 2

    .prologue
    .line 58
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 59
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 60
    return-object v0
.end method
