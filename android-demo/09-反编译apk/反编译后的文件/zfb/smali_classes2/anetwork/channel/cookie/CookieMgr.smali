.class public Lanetwork/channel/cookie/CookieMgr;
.super Ljava/lang/Object;
.source "CookieMgr.java"


# direct methods
.method public static a(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 11
    if-nez p0, :cond_0

    .line 28
    :goto_0
    return-void

    .line 14
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lanetwork/channel/cookie/a;

    invoke-direct {v1, p0}, Lanetwork/channel/cookie/a;-><init>(Landroid/content/Context;)V

    const-string/jumbo v2, "COOKIEMGR_INIT_THREAD"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method
