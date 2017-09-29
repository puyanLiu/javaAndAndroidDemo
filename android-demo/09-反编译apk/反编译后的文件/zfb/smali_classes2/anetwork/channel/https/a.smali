.class final Lanetwork/channel/https/a;
.super Ljava/lang/Object;
.source "SSLTunnelSocketFactory.java"

# interfaces
.implements Ljavax/net/ssl/HandshakeCompletedListener;


# instance fields
.field final synthetic a:Lanetwork/channel/https/SSLTunnelSocketFactory;


# direct methods
.method constructor <init>(Lanetwork/channel/https/SSLTunnelSocketFactory;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lanetwork/channel/https/a;->a:Lanetwork/channel/https/SSLTunnelSocketFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final handshakeCompleted(Ljavax/net/ssl/HandshakeCompletedEvent;)V
    .locals 0

    .prologue
    .line 78
    return-void
.end method
