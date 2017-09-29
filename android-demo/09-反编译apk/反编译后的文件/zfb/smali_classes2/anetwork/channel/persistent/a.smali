.class final Lanetwork/channel/persistent/a;
.super Ljava/lang/Object;
.source "PersistentEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 278
    iput-object p1, p0, Lanetwork/channel/persistent/a;->a:Ljava/lang/String;

    iput-object p2, p0, Lanetwork/channel/persistent/a;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 282
    iget-object v0, p0, Lanetwork/channel/persistent/a;->a:Ljava/lang/String;

    iget-object v1, p0, Lanetwork/channel/persistent/a;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lanetwork/channel/persistent/PersistentEngine;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    return-void
.end method
