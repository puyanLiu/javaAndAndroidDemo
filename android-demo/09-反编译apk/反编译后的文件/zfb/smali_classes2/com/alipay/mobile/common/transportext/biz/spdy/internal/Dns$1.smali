.class final Lcom/alipay/mobile/common/transportext/biz/spdy/internal/Dns$1;
.super Ljava/lang/Object;
.source "Dns.java"

# interfaces
.implements Lcom/alipay/mobile/common/transportext/biz/spdy/internal/Dns;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;
    .locals 1

    .prologue
    .line 28
    invoke-static {p1}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method
