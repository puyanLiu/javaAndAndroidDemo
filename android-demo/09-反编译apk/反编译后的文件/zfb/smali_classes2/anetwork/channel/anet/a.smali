.class final Lanetwork/channel/anet/a;
.super Ljava/lang/Object;
.source "ACallback.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lanetwork/channel/anet/ACallback;


# direct methods
.method constructor <init>(Lanetwork/channel/anet/ACallback;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lanetwork/channel/anet/a;->a:Lanetwork/channel/anet/ACallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lanetwork/channel/anet/a;->a:Lanetwork/channel/anet/ACallback;

    invoke-static {v0}, Lanetwork/channel/anet/ACallback;->a(Lanetwork/channel/anet/ACallback;)V

    .line 62
    return-void
.end method
