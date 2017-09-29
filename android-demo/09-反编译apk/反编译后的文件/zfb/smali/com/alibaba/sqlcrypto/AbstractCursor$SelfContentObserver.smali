.class public Lcom/alibaba/sqlcrypto/AbstractCursor$SelfContentObserver;
.super Landroid/database/ContentObserver;
.source "AbstractCursor.java"


# instance fields
.field mCursor:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/alibaba/sqlcrypto/AbstractCursor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/alibaba/sqlcrypto/AbstractCursor;)V
    .locals 1

    .prologue
    .line 602
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 603
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/alibaba/sqlcrypto/AbstractCursor$SelfContentObserver;->mCursor:Ljava/lang/ref/WeakReference;

    .line 604
    return-void
.end method


# virtual methods
.method public deliverSelfNotifications()Z
    .locals 1

    .prologue
    .line 608
    const/4 v0, 0x0

    return v0
.end method

.method public onChange(Z)V
    .locals 2

    .prologue
    .line 613
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/AbstractCursor$SelfContentObserver;->mCursor:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/sqlcrypto/AbstractCursor;

    .line 614
    if-eqz v0, :cond_0

    .line 615
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/sqlcrypto/AbstractCursor;->onChange(Z)V

    .line 617
    :cond_0
    return-void
.end method
