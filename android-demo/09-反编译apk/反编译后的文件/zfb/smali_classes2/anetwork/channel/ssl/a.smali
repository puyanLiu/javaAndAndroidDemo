.class final Lanetwork/channel/ssl/a;
.super Ljava/lang/Object;
.source "DefaultPublicKey.java"


# static fields
.field private static a:Lanetwork/channel/ssl/DefaultPublicKey;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 64
    new-instance v0, Lanetwork/channel/ssl/DefaultPublicKey;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lanetwork/channel/ssl/DefaultPublicKey;-><init>(B)V

    sput-object v0, Lanetwork/channel/ssl/a;->a:Lanetwork/channel/ssl/DefaultPublicKey;

    return-void
.end method

.method static synthetic a()Lanetwork/channel/ssl/DefaultPublicKey;
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lanetwork/channel/ssl/a;->a:Lanetwork/channel/ssl/DefaultPublicKey;

    return-object v0
.end method
