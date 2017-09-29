.class final Lanetwork/channel/persistent/c;
.super Ljava/lang/Object;
.source "PersistentResult.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lanetwork/channel/persistent/PersistentResult;


# direct methods
.method constructor <init>(Lanetwork/channel/persistent/PersistentResult;)V
    .locals 0

    .prologue
    .line 142
    iput-object p1, p0, Lanetwork/channel/persistent/c;->a:Lanetwork/channel/persistent/PersistentResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lanetwork/channel/persistent/c;->a:Lanetwork/channel/persistent/PersistentResult;

    invoke-virtual {v0}, Lanetwork/channel/persistent/PersistentResult;->j()V

    .line 147
    return-void
.end method
