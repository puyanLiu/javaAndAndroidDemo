.class public interface abstract Lcom/alipay/mobile/common/transportext/biz/spdy/internal/Dns;
.super Ljava/lang/Object;
.source "Dns.java"


# static fields
.field public static final DEFAULT:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/Dns;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    new-instance v0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/Dns$1;

    invoke-direct {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/Dns$1;-><init>()V

    sput-object v0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/Dns;->DEFAULT:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/Dns;

    return-void
.end method


# virtual methods
.method public abstract getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;
.end method
